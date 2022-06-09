<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="PF_dot_net.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: xx-large;
            font-style: italic;
            text-decoration: underline;
            text-align: center;
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
            text-align: right;
        }
        .auto-style5 {
            text-align: left;
        }
    </style>
</head>
<body class="nuevoEstilo1">
    <form id="form1" runat="server">
        <div class="auto-style1">
            Menu<br />
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Text="Alumnos" Height="34px" Width="110px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="Button4" runat="server" Text="Talleres" Height="34px" Width="110px" OnClick="Button4_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button2" runat="server" Text="Talleristas" Height="34px" Width="110px" OnClick="Button2_Click" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="Button5" runat="server" Text="Inscripcion" Height="34px" Width="110px" OnClick="Button5_Click" />
                </td>
            </tr>
        </table>
        <p class="auto-style3">
                    <asp:Button ID="Button3" runat="server" Text="Tienda" Height="34px" Width="110px" OnClick="Button3_Click" />
                </p>
    </form>
</body>
</html>
