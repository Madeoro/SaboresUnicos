<%@ Page Title="" Language="C#" MasterPageFile="~/Utilizador.Master" AutoEventWireup="true" CodeBehind="AlterarUsername.aspx.cs" Inherits="Sabores_Unicos.AlterarUsername" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        height: 26px;
    }
    .auto-style5 {
        height: 21px;
    }
    .auto-style6 {
        height: 28px;
    }
    .auto-style7 {
            width: 109px;
        }
    .auto-style8 {
            height: 26px;
            width: 109px;
        }
    .auto-style9 {
        height: 28px;
        width: 109px;
    }
    .auto-style10 {
        height: 21px;
        width: 109px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4"></td>
        <td class="auto-style8" dir="rtl">
                <asp:Label ID="lblNome" runat="server" style="color: #CBC750; font-size: medium" Text="Nome"></asp:Label>
            </td>
        <td class="auto-style4">
                <asp:TextBox ID="txtNome" runat="server" Width="245px"></asp:TextBox>
                    </td>
        <td class="auto-style4"></td>
        <td class="auto-style4"></td>
    </tr>
    <tr>
        <td class="auto-style6"></td>
        <td class="auto-style9" dir="rtl">
                 <asp:Label ID="lblTelefone" runat="server" style="color: #CBC750; font-size: medium" Text="Telefone"></asp:Label>
            </td>
        <td class="auto-style6">
                <asp:TextBox ID="txtTelefone" runat="server" MaxLength="13" Width="245px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtTelefone" ForeColor="#CC0000" ValidationExpression="\d+" ValidationGroup="Registar">Apenas números</asp:RegularExpressionValidator>
            </td>
        <td class="auto-style6"></td>
        <td class="auto-style6"></td>
    </tr>
    <tr>
        <td class="auto-style4"></td>
        <td class="auto-style8" dir="rtl">
                 <asp:Label ID="lblNIB" runat="server" style="color: #CBC750; font-size: medium" Text="NIF"></asp:Label>
            </td>
        <td class="auto-style4">
                <asp:TextBox ID="txtNIF" runat="server" MaxLength="13" Width="245px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtNIF" ForeColor="#CC0000" ValidationExpression="\d+" ValidationGroup="Registar">Apenas números</asp:RegularExpressionValidator>
            </td>
        <td class="auto-style4"></td>
        <td class="auto-style4"></td>
    </tr>
    <tr>
        <td class="auto-style5"></td>
        <td class="auto-style10" dir="rtl">
                 <asp:Label ID="lblDataNascimento" runat="server" style="color: #CBC750; font-size: medium" Text="Data de Nascimento"></asp:Label>
            </td>
        <td class="auto-style5">
            <asp:TextBox ID="txtDataNascimeto" runat="server" TextMode="DateTime" Width="245px"></asp:TextBox>
        </td>
        <td class="auto-style5"></td>
        <td class="auto-style5"></td>
    </tr>
    <tr>
        <td class="auto-style5"></td>
        <td class="auto-style10" dir="rtl">
            </td>
        <td class="auto-style5">
            </td>
        <td class="auto-style5"></td>
        <td class="auto-style5"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>
                &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>
                <asp:Button ID="btnAplicar" runat="server" Text="Aplicar" Width="83px" OnClick="btnAplicar_Click" CssClass="btnLogin" />
                <asp:Button ID="btnVoltar" runat="server" Text="Voltar" Width="83px" OnClick="btnVoltar_Click" CssClass="btnLogin" />
            </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>
                <asp:Label ID="lblInfoAlterarUtilizador" runat="server" Visible="False">Dados Alterados com Sucesso</asp:Label>
            </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
