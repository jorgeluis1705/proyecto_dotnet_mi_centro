<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alumnos.aspx.cs" Inherits="PF_dot_net.Alumnos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 452px;
            height: 50px;
        }
        .auto-style4 {
            height: 50px;
        }
        .auto-style6 {
            height: 45px;
        }
        .auto-style11 {
            text-align: right;
        }
        .auto-style12 {
            text-align: center;
        }
        .auto-style13 {
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
        <div style="text-decoration: underline; font-size: xx-large; font-style: italic; font-family: Arial, Helvetica, sans-serif; text-align: center">
            Alumno</div>
        <p>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Nombre del alumno:<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceAlumnos" DataTextField="nom_alumno" DataValueField="id_alumno">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceAlumnos" runat="server" ConnectionString="<%$ ConnectionStrings:MICENTRO_PFINALConnectionString %>" SelectCommand="SELECT * FROM [Alumno] ORDER BY [id_alumno]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="2">Informacion:<br />
                        <div class="auto-style12">
                            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style13" DataKeyNames="id_alumno" DataSourceID="SqlDataSourcInformacion" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="id_alumno" HeaderText="id_alumno" ReadOnly="True" SortExpression="id_alumno" />
                                    <asp:BoundField DataField="nom_alumno" HeaderText="nom_alumno" SortExpression="nom_alumno" />
                                    <asp:BoundField DataField="id_taller" HeaderText="id_taller" SortExpression="id_taller" />
                                    <asp:BoundField DataField="taller" HeaderText="taller" SortExpression="taller" />
                                    <asp:BoundField DataField="horario" HeaderText="horario" SortExpression="horario" />
                                    <asp:BoundField DataField="pago_actual" HeaderText="pago_actual" SortExpression="pago_actual" />
                                    <asp:BoundField DataField="pago_proximo" HeaderText="pago_proximo" SortExpression="pago_proximo" />
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
        <asp:SqlDataSource ID="SqlDataSourcInformacion" runat="server" ConnectionString="<%$ ConnectionStrings:MICENTRO_PFINALConnectionString %>" SelectCommand="select *from Alumno as a1 inner join Colegiatura as c1 on a1.id_alumno = c1.id_alumno where a1.id_alumno = @id_alumno">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="id_alumno" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
                        </div>
                    </td>
                </tr>
                </table>
        </p>
        <p class="auto-style11">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style12">
                        <asp:Button ID="Button3" runat="server" Text="Regresar" OnClick="Button3_Click" />
                    </td>
                    <td class="auto-style12">
                        <asp:Button ID="Button2" runat="server" Text="Actualizar pago" OnClick="Button2_Click" />
                    </td>
                    <td class="auto-style12">
                        <asp:Button ID="Button4" runat="server" Text="Asistencia Alumno" OnClick="Button4_Click" />
                    </td>
                </tr>
            </table>
        </p>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>

