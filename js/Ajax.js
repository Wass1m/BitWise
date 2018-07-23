
    function loadXMLDoc1()
    {
        var xmlhttp;
        var x="nothing";

        var k=document.getElementById('tel');
        var urls="./Functions/pass3.jsp?ver="+k.value+"&X="+x.value;
        var s="err3";

        if (window.XMLHttpRequest)
        {
            xmlhttp=new XMLHttpRequest();
        }
        else
        {
            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange=function()
        {
            if (xmlhttp.readyState===4)
            {

                document.getElementById(s).innerHTML=xmlhttp.responseText;
                if(document.getElementById("err3").innerHTML.includes("Free") && document.getElementById("errj").innerHTML.includes("available")){document.getElementById("mySubmit").disabled = false;}
                else document.getElementById("mySubmit").disabled = true;

            };
        };
        xmlhttp.open("GET",urls,true);
        xmlhttp.send();



    }

function loadXMLDoc3()
    {
        var xmlhttp;
        var x="nothing";

        var k=document.getElementById('tel1');
        var urls="./Functions/pass3.jsp?ver="+k.value+"&X="+x.value;
        var s="err3";

        if (window.XMLHttpRequest)
        {
            xmlhttp=new XMLHttpRequest();
        }
        else
        {
            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange=function()
        {
            if (xmlhttp.readyState===4)
            {


                document.getElementById(s).innerHTML=xmlhttp.responseText;
                if(document.getElementById("err3").innerHTML.includes("Free")){document.getElementById("mySubmit1").disabled = false;}
                else  document.getElementById("mySubmit1").disabled = true;
                
            };
        };
        xmlhttp.open("GET",urls,true);
        xmlhttp.send();



    }

    function loadXMLDocID()
    {
        var xmlhttp;
        var x=document.getElementById('email');

        var k=document.getElementById('user_name');
        var urls="./Functions/pass.jsp?ver="+k.value+"&X="+x.value;
        var s="errj";

 var st = document.getElementById("mySubmit");
        if (window.XMLHttpRequest)
        {
            xmlhttp=new XMLHttpRequest();
        }
        else
        {
            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange=function()
        {
            if (xmlhttp.readyState===4)
            {

              
                    
                document.getElementById(s).innerHTML=xmlhttp.responseText;
                if(document.getElementById("errj").innerHTML.includes("Taken")){document.getElementById("mySubmit").disabled = true;}
                else if(!(document.getElementById("errj").innerHTML.includes("Taken")) && (document.getElementById("err3").innerHTML.includes("Free"))) document.getElementById("mySubmit").disabled = false;
           
            
            };
        };
        xmlhttp.open("GET",urls,true);
        xmlhttp.send();



    }



    function loadNotif1(view='')
    {
        
        var type=document.getElementById('IDtype');
        var idc=document.getElementById('IDcnt');
        var xmlhttp;
        var urls="./Functions/load.jsp?view="+view+"&type="+type.value+"&idc="+idc.value+"";
       
        var s="err";

        if (window.XMLHttpRequest)
        {
            xmlhttp=new XMLHttpRequest();
        }
        else
        {
            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange=function()
        {
            if (xmlhttp.readyState===4)
            {

                document.getElementById(s).innerHTML=xmlhttp.responseText;
              

            };
        };
        xmlhttp.open("GET",urls,true);
        xmlhttp.send();



    }
  
    function loadNotif2()
    
 
    {
          
        var type=document.getElementById('IDtype');
        var idc=document.getElementById('IDcnt');
        var xmlhttp1;
        var urls1="./Functions/load1.jsp?type="+type.value+"&idc="+idc.value;
        var s1;
    

        if (window.XMLHttpRequest)
        {
            xmlhttp1=new XMLHttpRequest();
        }
        else
        {
            xmlhttp1=new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp1.onreadystatechange=function()
        {
            if (xmlhttp1.readyState===4)
            {
          
       s1= xmlhttp1.responseText;  
       if(s1.includes("zero")) { document.getElementById('counter').innerHTML="" ;}
       else { document.getElementById('counter').innerHTML=s1; }
              

            };
        };
        xmlhttp1.open("GET",urls1,true);
        xmlhttp1.send();


    }
   
   
 
   
   

   
   
function checkPass()
{
    //Store the password field objects into variables ...
    var pass1 = document.getElementById('password');
    var pass2 = document.getElementById('password_confirmation');
    //Store the Confimation Message Object ...
    var message = document.getElementById('confirmMessage');
    //Set the colors we will be using ...
    var goodColor = "#66cc66";
    var badColor = "#ff6666";
    //Compare the values in the password field
    //and the confirmation field
    if(pass1.value === pass2.value){
        //The passwords match.
        //Set the color to the good color and inform
        //the user that they have entered the correct password
        pass2.style.backgroundColor = goodColor;
        message.style.color = goodColor;
        message.innerHTML = "Passwords Match!";
        if(document.getElementById("err3").innerHTML.includes("Free")) document.getElementById("mySubmit").disabled = false;
    }else{
        //The passwords do not match.
        //Set the color to the bad color and
        //notify the user.
        pass2.style.backgroundColor = badColor;
        message.style.color = badColor;
        message.innerHTML = "Passwords Do Not Match!";
        document.getElementById("mySubmit").disabled = true;
    }
}
function checkPass2()
{
    //Store the password field objects into variables ...
    var pass1 = document.getElementById('password1');
    var pass2 = document.getElementById('password_confirmation1');
    //Store the Confimation Message Object ...
    var message = document.getElementById('confirmMessage1');
    //Set the colors we will be using ...
    var goodColor = "#66cc66";
    var badColor = "#ff6666";
    //Compare the values in the password field
    //and the confirmation field
    if(pass1.value === pass2.value){
        //The passwords match.
        //Set the color to the good color and inform
        //the user that they have entered the correct password
        pass2.style.backgroundColor = goodColor;
        message.style.color = goodColor;
        message.innerHTML = "Passwords Match!";
         document.getElementById("mySubmit1").disabled = false;
    }else{
        //The passwords do not match.
        //Set the color to the bad color and
        //notify the user.
        pass2.style.backgroundColor = badColor;
        message.style.color = badColor;
        message.innerHTML = "Passwords Do Not Match!";
        document.getElementById("mySubmit1").disabled = true;
    }
}

      
      
    
function checkPass3()
{
    //Store the password field objects into variables ...
    var pass1 = document.getElementById('password');
    var pass2 = document.getElementById('password_confirmation');
    //Store the Confimation Message Object ...
    var message = document.getElementById('confirmMessage');
    //Set the colors we will be using ...
    var goodColor = "#66cc66";
    var badColor = "#ff6666";
    //Compare the values in the password field
    //and the confirmation field
    if(pass1.value === pass2.value){
        //The passwords match.
        //Set the color to the good color and inform
        //the user that they have entered the correct password
        pass2.style.backgroundColor = goodColor;
        message.style.color = goodColor;
        message.innerHTML = "Passwords Match!";
        document.getElementById("mySubmit").disabled = false;
    }else{
        //The passwords do not match.
        //Set the color to the bad color and
        //notify the user.
        pass2.style.backgroundColor = badColor;
        message.style.color = badColor;
        message.innerHTML = "Passwords Do Not Match!";
        document.getElementById("mySubmit").disabled = true;
    }
}     
      
   function checknum() { 
  
      
        
 var query = document.getElementById('tarif').value;
 var isNumeric=query.match(/^\d+$/);
 
  
               if(isNumeric){ document.getElementById("aSubmit").disabled = false; }
                else document.getElementById("aSubmit").disabled = true;
                
              //  if(isNumeric1){document.getElementById("aSubmit").disabled = false;}
              //  else document.getElementById("aSubmit").disabled = true;

        

    }