<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tienda.aspx.cs" Inherits="PF_dot_net.Tiensa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .nuevoEstilo1 {
            background-image: url('Imagenes/MiCentro LOGO_Página_01.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center top;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style4 {
            text-align: left;
        }
    </style>
</head>
<body class="nuevoEstilo1">
    <form id="form1" runat="server">
        <div style="text-align: center; font-size: xx-large; font-style: italic; font-family: Arial, Helvetica, sans-serif; text-decoration: underline">
            Tienda</div>
        <div class="auto-style2">
            <div class="auto-style4">
                Todos los productos</div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style3" DataKeyNames="id_producto" DataSourceID="SqlDataSourceAlmacen" ForeColor="#333333" GridLines="None">
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
        <asp:SqlDataSource ID="SqlDataSourceAlmacen" runat="server" ConnectionString="<%$ ConnectionStrings:MICENTRO_PFINALConnectionString %>" SelectCommand="Almacen" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <br />
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Ingresar producto" OnClick="Button3_Click" />
                </td>
                <td>
            <asp:Button ID="Button1" runat="server" Text="Modificar producto" OnClick="Button1_Click" />
                </td>
                <td>
                    <asp:Button ID="Button5" runat="server" Text="Eliminar producto" OnClick="Button5_Click" />
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="Regresar" OnClick="Button4_Click" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
