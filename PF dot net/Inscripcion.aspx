<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inscripcion.aspx.cs" Inherits="PF_dot_net.Inscripcion" %>

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
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style4 {
            text-align: center;
        }
    </style>
</head>
<body class="nuevoEstilo1">
    <form id="form1" runat="server">
        <div class="auto-style1">
            Insripcion de alumno</div>
        <p>
            Nombre del alumno:
            <asp:TextBox runat="server" ID="TextBox2" type="text" ValidationGroup="okButton" Width="132px" maxlength="256" onkeypress="return check(event)"></asp:TextBox>
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
            Nombre del taller:
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceTaller" DataTextField="taller" DataValueField="id_taller">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceTaller" runat="server" ConnectionString="<%$ ConnectionStrings:MICENTRO_PFINALConnectionString %>" SelectCommand="SELECT [id_taller], [taller] FROM [Alumno]"></asp:SqlDataSource>
        </p>
        <p>
            Confirma nombre del taller:
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="nom_taller" DataValueField="nom_taller">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MICENTRO_PFINALConnectionString %>" SelectCommand="SELECT [nom_taller] FROM [Taller]"></asp:SqlDataSource>
        <p>
            Verifique que se agrego correctamente al alumno:
            <div class="auto-style4">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style3" DataKeyNames="id_alumno" DataSourceID="SqlDataSourceAlumno" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="id_alumno" HeaderText="id_alumno" InsertVisible="False" ReadOnly="True" SortExpression="id_alumno" />
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
            <asp:SqlDataSource ID="SqlDataSourceAlumno" runat="server" ConnectionString="<%$ ConnectionStrings:MICENTRO_PFINALConnectionString %>" SelectCommand="Ingresa_alumno" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox2" Name="nom_alumno" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="id_taller" PropertyName="SelectedValue" Type="Int32" />
                    <asp:ControlParameter ControlID="DropDownList2" Name="taller" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Button ID="Button5" runat="server" Text="Agregar" />
        <p>
            Para concluir el registro y aparezca la informacion en lista<p>
            &nbsp;es necesario agregar informacion necesaria acerca del pago, ingresando al boton &quot;informacion extra&quot;<p>
            <asp:Button ID="Button6" runat="server" Text="Informacio extra" OnClick="Button6_Click" />
            <p>
                &nbsp;<table class="auto-style2">
            <tr>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Eliminar" OnClick="Button3_Click" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Modificar" OnClick="Button2_Click" />
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="Regresar" OnClick="Button4_Click" />
                </td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
