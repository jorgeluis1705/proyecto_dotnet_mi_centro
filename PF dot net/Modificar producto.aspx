<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modificar producto.aspx.cs" Inherits="PF_dot_net.Modificar_producto" %>

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
        .nuevoEstilo1 {
            background-image: url('Imagenes/MiCentro LOGO_Página_01.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center top;
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
    </style>
</head>
<body class="nuevoEstilo1">
    <form id="form1" runat="server">
        <div class="auto-style1">
            Actualizar producto</div>
        <p>
            Nombre del producto:
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceIDproducto" DataTextField="nom_producto" DataValueField="id_producto">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceIDproducto" runat="server" ConnectionString="<%$ ConnectionStrings:MICENTRO_PFINALConnectionString %>" SelectCommand="SELECT [id_producto], [nom_producto] FROM [Tienda]"></asp:SqlDataSource>
        </p>
        <p>
            Precio:
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
        <p>
            Cantidad:
            <asp:TextBox runat="server" ID="TextBox2" type="number"  CausesValidation="true" ValidationGroup="okButton" Width="132px"></asp:TextBox>
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
        <p>
            Revise que el precio y cantidad se modificaron correctamente</p>
        <div class="auto-style3">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style4" DataKeyNames="id_producto" DataSourceID="SqlDataSourceActualizaproducto" ForeColor="#333333" GridLines="None">
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
        <asp:SqlDataSource ID="SqlDataSourceActualizaproducto" runat="server" ConnectionString="<%$ ConnectionStrings:MICENTRO_PFINALConnectionString %>" SelectCommand="Modifica_producto" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="id_producto" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="TextBox1" Name="precio" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="TextBox2" Name="cantidad" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <table class="auto-style2">
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Actualiza" />
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
