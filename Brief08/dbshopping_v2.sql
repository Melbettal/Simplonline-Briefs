/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de création :  26/04/2020 13:13:24                      */
/*==============================================================*/

create database dbshopping;
use dbshopping;


/*création des tables de la base de données*/

drop table if exists Admin;

drop table if exists Customer;

drop table if exists "Order";

drop table if exists Order_Details;

drop table if exists Shipping_Info;

drop table if exists Shopping_cart;

drop table if exists User;

/*==============================================================*/
/* Table : Admin                                                */
/*==============================================================*/
create table Admin
(
   userId               varchar(254) not null,
   adminName            varchar(254),
   email                varchar(254),
   primary key (userId)
);

/*==============================================================*/
/* Table : Customer                                             */
/*==============================================================*/
create table Customer
(
   customerName         varchar(254) not null,
   userId               varchar(254),
   address              varchar(254),
   email                varchar(254),
   creditCardinfo       varchar(254),
   accountBalance       float,
   primary key (customerName)
);

/*==============================================================*/
/* Table : "Order"                                              */
/*==============================================================*/
create table "Order"
(
   orderId              int not null,
   dateCreated          varchar(254),
   dateShipped          varchar(254),
   customerName         varchar(254),
   Shi_shippingId       int,
   customerId           varchar(254),
   status               varchar(254),
   shippingId           varchar(254),
   primary key (orderId)
);

/*==============================================================*/
/* Table : Order_Details                                        */
/*==============================================================*/
create table Order_Details
(
   orderId              int not null,
   productId            int,
   productName          varchar(254),
   quantity             float,
   uniCost              float,
   primary key (orderId)
);

/*==============================================================*/
/* Table : Shipping_Info                                        */
/*==============================================================*/
create table Shipping_Info
(
   shippingId           int not null,
   shippingcost         int,
   shippingRegionId     int,
   primary key (shippingId)
);

/*==============================================================*/
/* Table : Shopping_cart                                        */
/*==============================================================*/
create table Shopping_cart
(
   customerName         varchar(254) not null,
   cardId               int,
   productId            int,
   quantity             int,
   dateAdded            int,
   primary key (customerName)
);

/*==============================================================*/
/* Table : User                                                 */
/*==============================================================*/
create table User
(
   userId               varchar(254) not null,
   password             varchar(254),
   loginStatus          varchar(254),
   registerDate         datetime,
   primary key (userId)
);

alter table Admin add constraint FK_Generalisation_2 foreign key (userId)
      references User (userId) on delete restrict on update restrict;

alter table Customer add constraint FK_Generalisation_1 foreign key (userId)
      references User (userId) on delete restrict on update restrict;

alter table "Order" add constraint FK_Association_2 foreign key (customerName)
      references Customer (customerName) on delete restrict on update restrict;

alter table "Order" add constraint FK_Association_3 foreign key (Shi_shippingId)
      references Shipping_Info (shippingId) on delete restrict on update restrict;

alter table "Order" add constraint FK_Association_4 foreign key (orderId)
      references Order_Details (orderId) on delete restrict on update restrict;

alter table Shopping_cart add constraint FK_Association_1 foreign key (customerName)
      references Customer (customerName) on delete restrict on update restrict;



/*=========================================================================================*/
/* Création d'un utilisateur avec un accès d’ajouter de nouvelles entrées dans les tableaux*/
/*=========================================================================================*/

create user 'non-root'@'localhost';
alter user 'non-root'@'localhost' IDENTIFIED BY 'myhost';
grant insert on dbshopping.* to 'non-root'@'localhost';




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


