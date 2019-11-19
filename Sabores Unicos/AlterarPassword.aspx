<%@ Page Title="" Language="C#" MasterPageFile="~/Utilizador.Master" AutoEventWireup="true" CodeBehind="AlterarPassword.aspx.cs" Inherits="Sabores_Unicos.AlterarPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            height: 21px;
        }
        .auto-style5 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td dir="rtl">
               <asp:Label ID="lblpass0" runat="server" style="color: #CBC750; font-size: medium" Text="Password Atual"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPass0" runat="server" Width="245px"></asp:TextBox>
                    </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style4" dir="rtl">
               <asp:Label ID="lblpass1" runat="server" style="color: #CBC750; font-size: medium" Text="Nova Password"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtPass1" runat="server" Width="245px"></asp:TextBox>
                    </td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style5" dir="rtl">
                 <asp:Label ID="lblPass2" runat="server" style="color: #CBC750; font-size: medium" Text="Repita Password"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtPass2" runat="server" Width="245px"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPass1" ControlToValidate="txtPass2" ForeColor="#CC0000" ValidationGroup="Registar">Password não são iguais!</asp:CompareValidator>
            </td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4">
                <asp:Button ID="btnAplicar" runat="server" Text="Aplicar" Width="83px" OnClick="btnAplicar_Click" CssClass="btnLogin" />
                <asp:Button ID="btnVoltar" runat="server" Text="Voltar" Width="83px" OnClick="btnVoltar_Click" CssClass="btnLogin" />
            </td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lblInfoAlterarUtilizador" runat="server" Visible="False">Dados Alterados com Sucesso</asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
