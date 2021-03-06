<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Talleristas.aspx.cs" Inherits="PF_dot_net.Talleristas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            text-decoration: underline;
            font-size: xx-large;
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

    </style>
</head>
<body class="nuevoEstilo1">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>Informacion talleristas</strong></div>
        <p>
            Nombre del tallerista
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="nom_tallerista" DataValueField="id_tallerista">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MICENTRO_PFINALConnectionString %>" SelectCommand="SELECT * FROM [Tallerista]"></asp:SqlDataSource>
        </p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_taller,id_tallerista1" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id_taller" HeaderText="id_taller" ReadOnly="True" SortExpression="id_taller" />
                <asp:BoundField DataField="nom_taller" HeaderText="nom_taller" SortExpression="nom_taller" />
                <asp:BoundField DataField="hora_taller" HeaderText="hora_taller" SortExpression="hora_taller" />
                <asp:BoundField DataField="id_tallerista" HeaderText="id_tallerista" SortExpression="id_tallerista" />
                <asp:BoundField DataField="nom_tallerista" HeaderText="nom_tallerista" SortExpression="nom_tallerista" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MICENTRO_PFINALConnectionString %>" SelectCommand="Info_Tallerista" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="id_tallerista" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <table class="auto-style2">
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Mostrar informacion" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Asistencia tallerista" />
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Regresar" OnClick="Button3_Click" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
