<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modificar.aspx.cs" Inherits="PF_dot_net.Modificar_aspx" %>

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
            Modificar alumno</div>
        <p>
            Alumno por modificar:
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceIDAlumno" DataTextField="nom_alumno" DataValueField="id_alumno">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceIDAlumno" runat="server" ConnectionString="<%$ ConnectionStrings:MICENTRO_PFINALConnectionString %>" SelectCommand="SELECT [id_alumno], [nom_alumno] FROM [Alumno]"></asp:SqlDataSource>
        </p>
        <p>
            Nombre alumno:
            <asp:TextBox runat="server" ID="TextBox1" type="text" ValidationGroup="okButton" Width="132px" maxlength="256" onkeypress="return check(event)"></asp:TextBox>
        </p>
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
        <p>
        </p>
        <p>
            Nombre de taller:
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceIDtaller" DataTextField="taller" DataValueField="id_taller">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceIDtaller" runat="server" ConnectionString="<%$ ConnectionStrings:MICENTRO_PFINALConnectionString %>" SelectCommand="SELECT [id_taller], [taller] FROM [Alumno]"></asp:SqlDataSource>
        </p>
        <p>
            Confirma taller:
            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceTaller" DataTextField="taller" DataValueField="taller" Enabled="False">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceTaller" runat="server" ConnectionString="<%$ ConnectionStrings:MICENTRO_PFINALConnectionString %>" SelectCommand="SELECT [taller] FROM [Alumno] WHERE ([id_taller] = @id_taller)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList2" Name="id_taller" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            Horario:
            <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSourceHorario" DataTextField="horario" DataValueField="horario" Enabled="False">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceHorario" runat="server" ConnectionString="<%$ ConnectionStrings:MICENTRO_PFINALConnectionString %>" SelectCommand="SELECT [horario] FROM [Colegiatura] WHERE ([id_taller] = @id_taller)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList2" Name="id_taller" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            Datos actualizados:</p>
        <div class="auto-style3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style4" DataKeyNames="id_alumno" DataSourceID="SqlDataSourceModificar" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="id_alumno" HeaderText="id_alumno" ReadOnly="True" SortExpression="id_alumno" InsertVisible="False" />
                        <asp:BoundField DataField="nom_alumno" HeaderText="nom_alumno" SortExpression="nom_alumno" />
                        <asp:BoundField DataField="id_taller" HeaderText="id_taller" SortExpression="id_taller" />
                        <asp:BoundField DataField="taller" HeaderText="taller" SortExpression="taller" />
                        <asp:BoundField DataField="horario" HeaderText="horario" SortExpression="horario" />
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
            <asp:SqlDataSource ID="SqlDataSourceModificar" runat="server" ConnectionString="<%$ ConnectionStrings:MICENTRO_PFINALConnectionString %>" SelectCommand="Modifica_alumno" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="id_alumno" PropertyName="SelectedValue" Type="Int32" />
                    <asp:ControlParameter ControlID="TextBox1" Name="nom_alumno" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList2" Name="id_taller" PropertyName="SelectedValue" Type="Int32" />
                    <asp:ControlParameter ControlID="DropDownList3" Name="taller" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList4" DbType="Time" Name="horario" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
        <table class="auto-style2">
            <tr>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Regresar" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
