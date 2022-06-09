<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ingresar producto.aspx.cs" Inherits="PF_dot_net.Ingresar_producto" %>

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
            Ingresa producto nuevo</div>
        <br />
        Nombre del producto:
        <asp:TextBox runat="server" ID="TextBox2" type="text" ValidationGroup="okButton" Width="132px" maxlength="256" onkeypress="return check(event)"></asp:TextBox>
        <script>
            function check(e) {
                tecla = (document.all) ? e.keyCode : e.which;

                //Tecla de retroceso para borrar, siempre la permite
                if (tecla == 8) {
                    return true;
                }

                // Patrón de entrada, en este caso solo acepta numeros y letras
                patron = /[A-Z a-z]/;
                tecla_final = String.fromCharCode(tecla);
                return patron.test(tecla_final);
            }
        </script>
        <br />
        <br />
        Precio:
        <asp:TextBox runat="server" ID="TextBox3" type="number"  CausesValidation="true" ValidationGroup="okButton" Width="132px"></asp:TextBox>
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
        <br />
        <br />
        Cantidad:<asp:TextBox runat="server" ID="TextBox4" type="number"  CausesValidation="true" ValidationGroup="okButton" Width="132px"></asp:TextBox>
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
        <br />
        <div class="auto-style3">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style4" DataKeyNames="id_producto" DataSourceID="SqlDataSourceIngresaProducto" ForeColor="#333333" GridLines="None">
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
        <asp:SqlDataSource ID="SqlDataSourceIngresaProducto" runat="server" ConnectionString="<%$ ConnectionStrings:MICENTRO_PFINALConnectionString %>" SelectCommand="Ingresa_producto" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox2" Name="nom_producto" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox3" Name="precio" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="TextBox4" Name="cantidad" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <table class="auto-style2">
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Guardar producto" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Regresar" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
