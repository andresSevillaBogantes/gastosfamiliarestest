<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="principal.aspx.cs" Inherits="gastosfamiliares.principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <h2> SISTEMA CONTROL GASTOS </h2>
            <p> 
                <asp:Label ID="lusuario" runat="server"></asp:Label>
            </p>
            <p> 
                &nbsp;</p>
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CODIGO" DataSourceID="Sqltransaccioness">
                 <Columns>
                     <asp:BoundField DataField="CODIGO" HeaderText="CODIGO" InsertVisible="False" ReadOnly="True" SortExpression="CODIGO" />
                     <asp:BoundField DataField="MONTO" HeaderText="MONTO" SortExpression="MONTO" />
                     <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" />
                     <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                     <asp:BoundField DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" />
                     <asp:BoundField DataField="Usuarioid" HeaderText="Usuarioid" SortExpression="Usuarioid" />
                 </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="Sqltransaccioness" runat="server" ConnectionString="<%$ ConnectionStrings:CONTROLDEGASTOSConnectionString4 %>" DeleteCommand="delete transaccion where codigo = @codigo" InsertCommand="insert into transaccion (monto, tipo, descripcion, fecha)
values(@monto,@tipo,@descripcion,@fecha)" SelectCommand="SELECT * FROM [TRANSACCION]" UpdateCommand="update transaccion set monto = @monto, tipo=@tipo, descripcion=@descripcion, fecha=@fecha where codigo =@codigo">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="tcodigo" Name="codigo" PropertyName="Text" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="tmonto" Name="monto" PropertyName="Text" />
                    <asp:ControlParameter ControlID="dtipo" Name="tipo" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="tdescripcion" Name="descripcion" PropertyName="Text" />
                    <asp:ControlParameter ControlID="tfecha" Name="fecha" PropertyName="Text" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="tmonto" Name="monto" PropertyName="Text" />
                    <asp:ControlParameter ControlID="dtipo" Name="tipo" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="tdescripcion" Name="descripcion" PropertyName="Text" />
                    <asp:ControlParameter ControlID="tfecha" Name="fecha" PropertyName="Text" />
                    <asp:ControlParameter ControlID="tcodigo" Name="codigo" PropertyName="Text" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
             <br />
            <br />


             <br />
            codigo <asp:TextBox ID="tcodigo" runat="server"></asp:TextBox>


             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; suma&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>


             <br />
            <br />


            <asp:Label ID="Label1" runat="server" Text="tipo"></asp:Label>
            <asp:DropDownList ID="dtipo" runat="server">
                <asp:ListItem>ingreso</asp:ListItem>
                <asp:ListItem>gasto</asp:ListItem>
            </asp:DropDownList>


            <asp:Label ID="Label2" runat="server" Text="descripcion"></asp:Label>
            <asp:TextBox ID="tdescripcion" runat="server"></asp:TextBox>

            <asp:Label ID="Label3" runat="server" Text="monto"></asp:Label>
           <asp:TextBox ID="tmonto" runat="server"></asp:TextBox>

            fecha&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tfecha" runat="server" TextMode="DateTime"></asp:TextBox>

            <br />
            <br />

            <asp:Button ID="bagregar" runat="server" Text="agregar" OnClick="bagregar_Click" />
            <asp:Button ID="bborrar" runat="server" Text="borrar" OnClick="bborrar_Click" />
            <asp:Button ID="bactualizar" runat="server" Text="actualizar" OnClick="bactualizar_Click" />
            <asp:Button ID="bconsultar" runat="server" Text="consultar" OnClick="bconsultar_Click" />




            <asp:Button ID="bsalir" runat="server" OnClick="Button1_Click1" Text="Salir" />




        </div>
    </form>
</body>
</html>
