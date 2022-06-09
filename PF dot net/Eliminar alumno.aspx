<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Eliminar alumno.aspx.cs" Inherits="PF_dot_net.Eliminar_alumno" %>

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
        .nuevoEstilo1 {
            background-image: url('Imagenes/MiCentro LOGO_Página_01.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center top;
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
            Eliminar alumno</div>
        <p>
            Numero de alumno:
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
            Revisar que el alumno se elimino correctamente.
            <div class="auto-style3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style4" DataKeyNames="id_alumno" DataSourceID="SqlDataSourceEliminar" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="id_alumno" HeaderText="id_alumno" ReadOnly="True" SortExpression="id_alumno" />
                        <asp:BoundField DataField="nom_alumno" HeaderText="nom_alumno" SortExpression="nom_alumno" />
                        <asp:BoundField DataField="id_taller" HeaderText="id_taller" SortExpression="id_taller" />
                        <asp:BoundField DataField="taller" HeaderText="taller" SortExpression="taller" />
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
            <asp:SqlDataSource ID="SqlDataSourceEliminar" runat="server" ConnectionString="<%$ ConnectionStrings:MICENTRO_PFINALConnectionString %>" SelectCommand="Eliminar_alumno" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="id_alumno" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <table class="auto-style2">
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Eliminar" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Regresar" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
