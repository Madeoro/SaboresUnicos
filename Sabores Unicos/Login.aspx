<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Sabores_Unicos.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style4 {
            width: 160px;
        }
        .auto-style7 {
            text-align: right;
            width: 355px;
        }
        .auto-style9 {
            width: 304px;
        }
        .auto-style10 {
            width: 355px;
        }
        .detail_button1 {}
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%; margin-bottom: 0px;">
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td dir="rtl">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td dir="rtl">
                &nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="lblNome" runat="server" style="color: #CBC750; font-size: medium" Text="Email"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="txtEmail" runat="server" ValidationGroup="Login"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="#CC0000" ControlToValidate="txtEmail" ValidationGroup="Login">*</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td dir="rtl">
                &nbsp;</td>
            <td class="auto-style10" dir="rtl">
                <asp:Label ID="lblPass1" runat="server" style="color: #CBC750; font-size: medium" Text="Password" ForeColor="#CBC750"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="txtPass" runat="server" ValidationGroup="Login" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="#CC0000" ControlToValidate="txtPass" ValidationGroup="Login">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17"></td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td>&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style9">
                <asp:Button ID="btnLogin" runat="server" Height="23px" Text="Login" Width="91px" ValidationGroup="Login" OnClick="btnLogin_Click" CssClass="btnLogin" Font-Size="X-Small" />
                <asp:Label ID="lblInfoLogin" runat="server" ForeColor="#CC0000"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td></td>
            <td class="auto-style10"></td>
            <td class="auto-style9"></td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
