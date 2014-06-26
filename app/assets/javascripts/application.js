
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
//= require turbolinks
function validate()
{
	var firstname = document.getElementById("contact_firstname").value;
	if (firstname == "")
	{
		alert("provide your firstname")
		return false;
	}
	var lastname = document.getElementById("contact_lastname").value;
	if (lastname == "")
	{
		alert("provide your lastname")
		return false;
	}
	var email = document.getElementById("contact_email_id").value;
	if (email == "")
	{
		alert("provide your email id")
		return false;
	}
	
	var gender = document.getElementById("contact_gender").value;
	if (gender == "")
	{
		alert("provide your gender")
		return false;
	}
	
}
