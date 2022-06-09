<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Eliminar producto.aspx.cs" Inherits="PF_dot_net.Eliminar_producto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-family: Arial, Helvetica, sans-serif;
            font-style: italic;
            font-size: xx-large;
            text-decoration: underline;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            font-family: Arial, Helvetica, sans-serif;
        }
        .nuevoEstilo1 {
            background-image: url('Imagenes/MiCentro LOGO_Página_01.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center top;
        }
    </style>
</head>
<body class="nuevoEstilo1">
    <form id="form1" runat="server">
        <div class="auto-style1">
            Eliminar producto</div>
        <p>
            Numero de producto:
            <asp:TextBox runat="server" ID="TextBox1" type="number"  CausesValidation="true" ValidationGroup="okButton" Width="132px"></asp:TextBox>
            <script>
        function solonumeros(e) {
 
            var key;
 
            if (window.event) // IE
            {
                key = e.keyCode;
            }
            else if (e.which) // Netscape/Firefox/Opera
            {
                key = e.which;
            }
 
            if (key < 48 || key > 57) {
                return false;
            }
 
            return true;
        }
 
    </script>
        </p>
        Revisa que el producto se elimino correctamente<div class="auto-style3">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style4" DataKeyNames="id_producto" DataSourceID="SqlDataSourceEliminarProducto" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="id_producto" HeaderText="id_producto" ReadOnly="True" SortExpression="id_producto" />
                    <asp:BoundField DataField="nom_producto" HeaderText="nom_producto" SortExpression="nom_producto" />
                    <asp:BoundField DataField="precio" HeaderText="precio" SortExpression="precio" />
                    <asp:BoundField DataField="cantidad" HeaderText="cantidad" SortExpression="cantidad" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSourceEliminarProducto" runat="server" ConnectionString="<%$ ConnectionStrings:MICENTRO_PFINALConnectionString %>" SelectCommand="Eliminar_producto" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="id_producto" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <table class="auto-style2">
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Eliminar producto" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Regresar" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
        <br />
    </form>
</body>
</html>
