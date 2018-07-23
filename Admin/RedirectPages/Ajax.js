
    function loadXMLDoc1()
    {
        var xmlhttp;
        var x="nothing";

        var k=document.getElementById('tel1');
        var urls="pass3.jsp?ver="+k.value+"&X="+x.value;
        var s="err1";

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
                if(document.getElementById("err1").innerHTML.includes("free")){document.getElementById("mySubmit1").disabled = false;}
                else document.getElementById("mySubmit1").disabled = true;

            };
        };
        xmlhttp.open("GET",urls,true);
        xmlhttp.send();



    }



    function loadXMLDoc()
    {
        var xmlhttp;
        var x=document.getElementById('email');

        var k=document.getElementById('username');
        var urls="pass.jsp?ver="+k.value+"&X="+x.value;
        var s="err2";

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
                if(document.getElementById("err2").innerHTML.includes("Taken")){document.getElementById("mySubmit").disabled = true;}
                else document.getElementById("mySubmit").disabled = false;

            };
        };
        xmlhttp.open("GET",urls,true);
        xmlhttp.send();



    }



    function loadNotif1(view='')
    {
        var xmlhttp;
        var urls="load.jsp?view="+view;
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
        var xmlhttp1;
        var urls1="load1.jsp?";
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
   

   
   
  
  