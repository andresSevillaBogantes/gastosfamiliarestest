<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="gastosfamiliares.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

.button2 {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
        .auto-style1 {
            width: 405px;
            height: 380px;
        }
    </style>

</head>




<body>
    <form id="form1" runat="server">
        <div>
            <h2>Sistema Gastos Familiares</h2>

<form action="/action_page.php" method="post">
  <div class="imgcontainer">
      &nbsp;<img alt="" class="auto-style1" src="imagenes/Capture5.PNG" /></div>

  <div class="container">
    <label for="uname"><b>Username</b></label>
    
      <asp:TextBox ID="tusuario" placeholder="Enter Username"  require runat="server"></asp:TextBox>


    <label for="psw"><b>Password</b></label>
   
      <asp:TextBox ID="tclave" placeholder="Enter Password"  require runat="server"></asp:TextBox>

        
  
      <asp:Button ID="bingresar" Class=" button2" runat="server" Text="ingresar" OnClick="bingresar_Click" />
    <label>
     



      <br />
      <br />
      <br />
      <br />
     



    </label>
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>

      <asp:Label ID="lmensaje" runat="server"></asp:Label>


    <span class="psw">Forgot <a href="#">password?</a></span>
      <br />
  </div>
</form>



        </div>
    </form>
</body>
</html>
