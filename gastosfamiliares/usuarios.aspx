<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="usuarios.aspx.cs" Inherits="gastosfamiliares.usuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>REGISTRO DE USUARIOS </title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
          


        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REGISTRO DE USUARIOS<br />
            <asp:Label ID="lusuario" runat="server"></asp:Label>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="codigo" DataSourceID="Sqlusuarios">
            <Columns>
                <asp:BoundField DataField="codigo" HeaderText="codigo" InsertVisible="False" ReadOnly="True" SortExpression="codigo" />
                <asp:BoundField DataField="correo" HeaderText="correo" SortExpression="correo" />
                <asp:BoundField DataField="clave" HeaderText="clave" SortExpression="clave" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="Sqlusuarios" runat="server" ConnectionString="<%$ ConnectionStrings:CONTROLDEGASTOSConnectionString3 %>" SelectCommand="SELECT * FROM [usuario]" InsertCommand="insert into usuario(correo, clave)
values(@correo,@clave)" DeleteCommand="delete usuario where codigo = @codigo" UpdateCommand="update usuario set clave= @clave, correo=@correo where codigo =@codigo">
            <DeleteParameters>
                <asp:ControlParameter ControlID="tcodigo" Name="codigo" PropertyName="Text" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="tnombre" Name="correo" PropertyName="Text" />
                <asp:ControlParameter ControlID="tclave" Name="clave" PropertyName="Text" />
            </InsertParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="tclave" Name="clave" PropertyName="Text" />
                <asp:ControlParameter ControlID="tcodigo" Name="codigo" PropertyName="Text" />
                <asp:ControlParameter ControlID="tnombre" Name="correo" PropertyName="Text" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        codigo&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tcodigo" runat="server"></asp:TextBox>
        <br />
        user&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tnombre" runat="server"></asp:TextBox>
        <br />
        clave&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tclave" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="bagregar" runat="server" Text="Agregar" OnClick="bagregar_Click" />
        <asp:Button ID="beliminar" runat="server" Text="Eliminar" OnClick="beliminar_Click" />
        <asp:Button ID="bactualizar" runat="server" Text="Actualizar" OnClick="bactualizar_Click" />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Salir" />
        <br />
        <br />
    </form>
</body>
</html>
