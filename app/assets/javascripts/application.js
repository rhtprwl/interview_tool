// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require turbolinks
//= require_tree .

function validate()
{

  var user=document.login_form.session_name.value;
  var pass=document.login_form.session_password.value;
   
 if(user=="" && pass=="") 
  {
  	 
  	 document.getElementById("error1").innerHTML="*UserName is mandatory"
  	 document.getElementById("error2").innerHTML="*Password is mandatory"
    return false;  
  }	 
	  else if(user=="") 
  {
  	 
  	 document.getElementById("error1").innerHTML="*UserName is mandatory"
    return false;  
  }	 
  else if(pass=="") 
  {
  	 
  	 document.getElementById("error2").innerHTML="*Password is mandatory"
    return false;  
  }	 
  else   {
	  return true;
  }
}	 
