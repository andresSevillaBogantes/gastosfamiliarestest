<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login2.aspx.cs" Inherits="gastosfamiliares.login2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


	<link rel="stylesheet" type="text/css" href ="css/login2css.css" media="screen" />


    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      
     
<div class="login-wrap">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
		<div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
					<label for="user" class="label">Username</label>
				
<asp:TextBox ID="tusuario"  class="input"  runat="server"></asp:TextBox>

				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
				
<asp:TextBox ID="tclave"  type="password"  class="input"   data-type="password" runat="server"></asp:TextBox>

				</div>
				
			
				<div class="group">
				 
<asp:Button ID="bboton" class="button"  runat="server" Text="registrarse" OnClick="bboton_Click"></asp:Button>
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					&nbsp;</div>
			</div>
			
		
				</div>
			</div>
		</div>
	</div>

         
    </form>
</body>
</html>
