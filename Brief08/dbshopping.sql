/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de création :  27/04/2020 13:13:24                      */
/*==============================================================*/


drop table if exists Administrator;

drop table if exists Customer;

drop table if exists "Order";

drop table if exists Order_Details;

drop table if exists Shipping_Cart;

drop table if exists Shipping_info;

drop table if exists User;

/*==============================================================*/
/* Table : Administrator                                        */
/*==============================================================*/
create table Administrator
(
   userId               varchar(254) not null,
   password             varchar(254) not null,
   loginStatus          varchar(254) not null,
   registerDate         datetime not null,
   adminName            varchar(254) not null,
   email                varchar(254) not null,
   primary key (userId, password, loginStatus, registerDate, adminName, email)
);

/*==============================================================*/
/* Table : Customer                                             */
/*==============================================================*/
create table Customer
(
   userId               varchar(254) not null,
   password             varchar(254) not null,
   loginStatus          varchar(254) not null,
   registerDate         datetime not null,
   customerName         varchar(254) not null,
   address              varchar(254) not null,
   email                varchar(254) not null,
   creditCardinfo       varchar(254) not null,
   shippinginfo         varchar(254) not null,
   accountBalance       float not null,
   primary key (userId, password, loginStatus, registerDate, customerName, address, email, creditCardinfo, shippinginfo, accountBalance)
);

/*==============================================================*/
/* Table : "Order"                                              */
/*==============================================================*/
create table "Order"
(
   userId               varchar(254) not null,
   password             varchar(254) not null,
   loginStatus          varchar(254) not null,
   registerDate         datetime not null,
   customerName         varchar(254) not null,
   address              varchar(254) not null,
   email                varchar(254) not null,
   creditCardinfo       varchar(254) not null,
   shippinginfo         varchar(254) not null,
   accountBalance       float not null,
   Shi_shippingId       int not null,
   shippingType         varchar(254) not null,
   shippingCost         int not null,
   shippingRegionId     int not null,
   productId            int not null,
   productName          varchar(254) not null,
   quantity             int not null,
   unicost              float not null,
   orderId              int not null,
   dateCreated          varchar(254) not null,
   dateShipped          varchar(254) not null,
   customName           varchar(254) not null,
   shippingId           varchar(254) not null,
   primary key (userId, password, loginStatus, registerDate, customerName, address, email, creditCardinfo, shippinginfo, accountBalance, Shi_shippingId, shippingType, shippingCost, shippingRegionId, productId, productName, quantity, unicost, orderId, dateCreated, dateShipped, customName, shippingId)
);

/*==============================================================*/
/* Table : Order_Details                                        */
/*==============================================================*/
create table Order_Details
(
   orderId              int not null,
   productId            int not null,
   productName          varchar(254) not null,
   quantity             int not null,
   unicost              float not null,
   primary key (orderId, productId, productName, quantity, unicost)
);

/*==============================================================*/
/* Table : Shipping_Cart                                        */
/*==============================================================*/
create table Shipping_Cart
(
   userId               varchar(254) not null,
   password             varchar(254) not null,
   loginStatus          varchar(254) not null,
   registerDate         datetime not null,
   customerName         varchar(254) not null,
   address              varchar(254) not null,
   email                varchar(254) not null,
   creditCardinfo       varchar(254) not null,
   shippinginfo         varchar(254) not null,
   accountBalance       float not null,
   cardId               int not null,
   productID            int not null,
   quantity             int not null,
   dateAdded            datetime not null,
   primary key (userId, password, loginStatus, registerDate, customerName, address, email, creditCardinfo, shippinginfo, accountBalance, cardId, productID, quantity, dateAdded)
);

/*==============================================================*/
/* Table : Shipping_info                                        */
/*==============================================================*/
create table Shipping_info
(
   shippingId           int not null,
   shippingType         varchar(254) not null,
   shippingCost         int not null,
   shippingRegionId     int not null,
   primary key (shippingId, shippingType, shippingCost, shippingRegionId)
);

/*==============================================================*/
/* Table : User                                                 */
/*==============================================================*/
create table User
(
   userId               varchar(254) not null,
   password             varchar(254) not null,
   loginStatus          varchar(254) not null,
   registerDate         datetime not null,
   primary key (userId, password, loginStatus, registerDate)
);

alter table Administrator add constraint FK_Generalisation_1 foreign key (userId, password, loginStatus, registerDate)
      references User (userId, password, loginStatus, registerDate) on delete restrict on update restrict;

alter table Customer add constraint FK_Generalisation_2 foreign key (userId, password, loginStatus, registerDate)
      references User (userId, password, loginStatus, registerDate) on delete restrict on update restrict;

alter table "Order" add constraint FK_Association_2 foreign key (userId, password, loginStatus, registerDate, customerName, address, email, creditCardinfo, shippinginfo, accountBalance)
      references Customer (userId, password, loginStatus, registerDate, customerName, address, email, creditCardinfo, shippinginfo, accountBalance) on delete restrict on update restrict;

alter table "Order" add constraint FK_Association_3 foreign key (Shi_shippingId, shippingType, shippingCost, shippingRegionId)
      references Shipping_info (shippingId, shippingType, shippingCost, shippingRegionId) on delete restrict on update restrict;

alter table "Order" add constraint FK_Association_4 foreign key (orderId, productId, productName, quantity, unicost)
      references Order_Details (orderId, productId, productName, quantity, unicost) on delete restrict on update restrict;

alter table Shipping_Cart add constraint FK_Association_1 foreign key (userId, password, loginStatus, registerDate, customerName, address, email, creditCardinfo, shippinginfo, accountBalance)
      references Customer (userId, password, loginStatus, registerDate, customerName, address, email, creditCardinfo, shippinginfo, accountBalance) on delete restrict on update restrict;



/*==============================================================*/
/* Insertion                                                    */
/*==============================================================*/
insert into Customer values('omar fadili', '15 rue el irfan, temara', 'omar@gmail.com','GH23322JK','20022,32')
insert into Customer values('khalil ziani', '20 rue massira, rabat', 'malili@gmail.com','HOOL499384','1000,2')
select * from Customer

/*******/

insert into Administrator values('admin','admin@gmail.com')
insert into Administrator values('imad','admin@gmail.com')
select * from Administrator


/*==============================================================*/
/* Suppression                                                  */
/*==============================================================*/

delete from Customer where email='omar@gmail.com'
delete from Administartor where adminName='imad'

/*==============================================================*/
/* Modification                                                 */
/*==============================================================*/

update Customer set customerName='Newbie' where email='omar@gmail.com'

select * from Customer


