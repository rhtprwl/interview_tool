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
/*
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

  */
function checking()
{
  /*for(var i=1;i<=10;i++)
  {
    var x="opt"+i;
    var p="error"+i;
    if(x=="")
   {
    document.getElementById(p).innerHTML="field is manadatory"
    return false;
   }
   else
    return true;
   
  } */
  var opt1=document.go.option1.value; 
  if(opt1=="")
  {
    document.getElementById("error").innerHTML="**All Options are Mandatory**"
    return false;
  }
  var opt2=document.go.option2.value;
   if(opt2=="")
  {
    document.getElementById("error").innerHTML="**All Options are Mandatory**"
    return false;
  }
  var opt3=document.go.option3.value;
   if(opt3=="")
  {
    document.getElementById("error").innerHTML="**All Options are Mandatory**"
    return false;
  }

  var opt4=document.go.option4.value;
     if(opt4=="")
  {
    document.getElementById("error").innerHTML="**All Options are Mandatory**"
    return false;
  }
  var opt5=document.go.option5.value;
   if(opt5=="")
  {
    document.getElementById("error").innerHTML="**All Options are Mandatory**"
    return false;
  }
  var opt6=document.go.option6.value;
   if(opt6=="")
  {
    document.getElementById("error").innerHTML="**All Options are Mandatory**"
    return false;
  }
  var opt7=document.go.option7.value;
   if(opt7=="")
  {
    document.getElementById("error").innerHTML="**All Options are Mandatory**"
    return false;
  }

  var opt8=document.go.option8.value;
   if(opt8=="")
  {
    document.getElementById("error").innerHTML="**All Options are Mandatory**"
    return false;
  }

  var opt9=document.go.option9.value;
   if(opt9=="")
  {
    document.getElementById("error").innerHTML="**All Options are Mandatory**"
    return false;
  }
  var opt10=document.go.option10.value;
    if(opt10=="")
  {
    document.getElementById("error").innerHTML="**All Options are Mandatory**"
    return false;
  }
 
  return true;
}
  
  $(document).ready(function(){
    
    var counter = 5;
 
    $("#addButton").click(function () {
 
  if(counter>10){
            alert("Only 10 textboxes allow");
            return false;
  }   
 
  var newTextBoxDiv = $(document.createElement('div'))
       .attr("id", 'TextBoxDiv' + counter);
 
  newTextBoxDiv.after().html('<label>Option'+ counter + '</label>' +
        '<input type="text" name="option' + counter +
        '" id="question_option' + counter + '" value="" >' +'<input type="checkbox" name="answer[' + counter +']'+ 
        '" id="question_answer' + counter + '" >');
 
  newTextBoxDiv.appendTo("#TextBoxesGroup");
 
 
  counter++;
     });
 
     $("#removeButton").click(function () {
  if(counter==1){
          alert("No more option field to remove");
          return false;
       }   
 
  counter--;
 
        $("#TextBoxDiv" + counter).remove();
 
     });
 
       });