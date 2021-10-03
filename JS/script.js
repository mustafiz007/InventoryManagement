
    function checkUsername(val) {


        var check = /^[_a-z]+$/g;  // expression check



        /*                              // regular javascript

        if (check.test(val)) { // jodi condition mane

            document.getElementById('showText').innerHTML = "";
        } else {
            document.getElementById('showText').innerHTML = "only lower latin letters and _ are allowed";

            document.getElementById('showText').style.color = "#ff3228";

        }


         */









        if (check.test(val)) {            // jquery

            $('#showText').html('right from of user name !!');

            $('#showText').css('color', 'black');
            } else {

                $('#showText').html('only lower latin letters and _ are allowed');

                $('#showText').css('color', '#ff3228');

              //   $('#uname').val('');

            }





    }// end function



    function checkUser(val){

       $.ajax({

           url:'duplicateUsers.php',
           method:'POST',
           data: {
               'username': val

           },
           async:false

             }).done(

                 function(data){
                     var check = JSON.parse(data);

                     if(check.success===true){

                         $('#checkUser').html ('this user name is already taken');

                         $('#checkUser').css('color','red');

                         //  $('#uname').val('');

                     }
                     else{

                         $('#checkUser').html ('user name is available');

                         $('#checkUser').css('color','lightgreen');

                     }



                 }
       );


    }    // end of duplicate user name check


    function emptyvalue(){

        $('#uname').val('');

    }











