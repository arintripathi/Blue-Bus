$("#submit").click(function(){
    // action goes here!!
	$('#result').text("");
   var username = $("#username").val().trim();
   var password = $("#password").val().trim();
   

   if(username === '' || password === '')
   {
    $('#result').text("Invalid credentials");
    event.preventDefault();
    return;
   }

});