// navbar animation
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}

// images animation
var img = document.getElementById('bgImage');
var images = ["./res/img/2.jpg", "./res/img/3.jpg", "./res/img/4.jpg", "./res/img/5.jpg", "./res/img/6.jpg"];
var i = 0;
setInterval(() => {
  img.setAttribute('style', "background-image:url('" + images[i] + "');");
  if (i < 2)
    i++;
  else
    i = 0;
  console.log(i);
}, 2000);




function validate_email(field, alerttxt) {
  with(field) {
    apos = value.indexOf("@");
    dotpos = value.lastIndexOf(".");
    if (apos < 1 || dotpos - apos < 2) {
      alert(alerttxt);
      return false;
    } else {
      return true;
    }
  }
}

function validatePassword(fld) {
  var error = "";
  var illegalChars = /[\W_]/; // allow only letters and numbers

  if (fld.value == "") {
    fld.style.background = 'Yellow';
    error = "You didn't enter a password.\n";
    alert(error);
    return false;

  } else if ((fld.value.length < 7) || (fld.value.length > 15)) {
    error = "The password is the wrong length. \n";
    fld.style.background = 'Yellow';
    alert(error);
    return false;

  } else if (illegalChars.test(fld.value)) {
    error = "The password contains illegal characters.\n";
    fld.style.background = 'Yellow';
    alert(error);
    return false;

  } else if ((fld.value.search(/[a-zA-Z]+/) == -1) || (fld.value.search(/[0-9]+/) == -1)) {
    error = "The password must contain at least one numeral.\n";
    fld.style.background = 'Yellow';
    alert(error);
    return false;

  } else {
    fld.style.background = 'White';
  }
  return true;
}


function IsEmpty(objectfield,stringfield)
{
    objectvalue = objectfield.value.length;
    if(objectvalue=="")
    {
        alert("Oops.. Please fill out the value of "+stringfield);
        objectfield.style.background = 'Yellow';
        return false;
    }
    else
        return true;
}


$(window).load(function () {
  $(".trigger_popup_fricc").click(function(){
     $('.hover_bkgr_fricc').show();
  });
  $('.hover_bkgr_fricc').click(function(){
      $('.hover_bkgr_fricc').hide();
  });
  $('.popupCloseButton').click(function(){
      $('.hover_bkgr_fricc').hide();
  });
});
