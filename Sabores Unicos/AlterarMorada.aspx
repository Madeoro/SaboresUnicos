<%@ Page Title="" Language="C#" MasterPageFile="~/Utilizador.Master" AutoEventWireup="true" CodeBehind="AlterarMorada.aspx.cs" Inherits="Sabores_Unicos.AlterarMorada" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 146px;
        }
        .auto-style5 {
            width: 146px;
            height: 21px;
        }
        .auto-style6 {
            height: 21px;
        }
        .auto-style9 {
            width: 38px;
        }
        .auto-style10 {
            width: 38px;
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9" dir="rtl">&nbsp;</td>
            <td class="auto-style4" dir="rtl">
                 <asp:Label ID="lblLocalidade" runat="server" style="color: #CBC750; font-size: medium" Text="Localidade"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtLocalidade" runat="server" Width="245px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9" dir="rtl">&nbsp;</td>
            <td class="auto-style4" dir="rtl">
                  <asp:Label ID="lblCodigo" runat="server" style="color: #CBC750; font-size: medium" Text="Codigo Postal"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCodigo" runat="server" Width="245px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtCodigo" ForeColor="#CC0000" ValidationExpression="\d{4}\-\d{3}" ValidationGroup="Registar">Codigo Postal Inválido</asp:RegularExpressionValidator>
                    </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9" dir="rtl">&nbsp;</td>
            <td class="auto-style4" dir="rtl">
                 <asp:Label ID="lblMorada" runat="server" style="color: #CBC750; font-size: medium" Text="Morada"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMorada1" runat="server" Width="245px"></asp:TextBox>
                    </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style5"></td>
            <td class="auto-style6">
                <asp:Button ID="btnAplicar" runat="server" Text="Aplicar" Width="83px" OnClick="btnAplicar_Click" CssClass="btnLogin" />
                <asp:Button ID="btnVoltar1" runat="server" OnClick="btnVoltar1_Click" Text="Voltar" Width="83px" CssClass="btnLogin" />
            </td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:Label ID="lblInfoAlterarUtilizador" runat="server" Visible="False">Dados Alterados com Sucesso</asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
