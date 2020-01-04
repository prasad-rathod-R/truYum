function valid()
{
var name=document.forms["food"]["title"].value;
var price=document.forms["food"]["price"].value;
var date=document.forms["food"]["dateofLaunch"].value;
var category=document.forms["food"]["category"].value;
var regex=(/^.*[0-9].*$/);

if(name==""){
alert("Title is required");
return false;
}
if (name.length<2 || name.length>65){
alert("title should have 2 to 65 characters");
return false;
}
if(price==""){
alert("Price is required");
return false;
}
if(!price.match(regex)){
alert("Price has to be a number");
return false;
}
if(date==""){
alert("Date of Launch is required");
return false;
}
if(category==""){
alert("Select one category");
return false;
}
}
