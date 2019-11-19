<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registar.aspx.cs" Inherits="Sabores_Unicos.Registar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
    }
        .auto-style4 {
            width: 791px;
        }
    .auto-style5 {
            height: 26px;
            width: 604px;
        }
    .auto-style11 {
        height: 21px;
        width: 604px;
    }
        .auto-style12 {
            height: 21px;
            width: 791px;
        }
        .auto-style13 {
            height: 26px;
            width: 791px;
        }
        .auto-style14 {
            height: 25px;
            width: 604px;
        }
        .auto-style15 {
            height: 25px;
            width: 791px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style1" rowspan="17">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5" dir="rtl">
                        <asp:Label ID="lblNome" runat="server" style="color: #CBC750; font-size: medium" Text="Username(Login)"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtNome" runat="server" Width="188px" ValidationGroup="Registar"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNome" ForeColor="#CC0000" ValidationGroup="Registar">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" dir="rtl">
                        <asp:Label ID="lblEmail" runat="server" style="color: #CBC750; font-size: medium" Text="Email"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtEmail" runat="server" Width="188px" ValidationGroup="Registar"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ForeColor="#CC0000" ValidationGroup="Registar">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ForeColor="#CC0000" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Registar">Inválido</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" dir="rtl">
                        <asp:Label ID="lblPass1" runat="server" style="color: #CBC750; font-size: medium" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtPass1" runat="server" TextMode="Password" Width="188px" ValidationGroup="Registar"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPass1" ForeColor="#CC0000" ValidationGroup="Registar">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" dir="rtl">
                        <asp:Label ID="lblPass2" runat="server" style="color: #CBC750; font-size: medium" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtPass2" runat="server" TextMode="Password" Width="188px" ValidationGroup="Registar"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPass2" ForeColor="#CC0000" ValidationGroup="Registar">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPass1" ControlToValidate="txtPass2" ForeColor="#CC0000" ValidationGroup="Registar">Password não são iguais!</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" dir="rtl">
                        <asp:Label ID="Morada" runat="server" style="color: #CBC750; font-size: medium" Text="Morada"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtMorada" runat="server" Width="188px" ValidationGroup="Registar"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtMorada" ForeColor="#CC0000" ValidationGroup="Registar">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14" dir="rtl">
                        <asp:Label ID="lblCodigo" runat="server" style="color: #CBC750; font-size: medium" Text="Código Postal"></asp:Label>
                    </td>
                    <td class="auto-style15">
                        <asp:TextBox ID="txtCodigo" runat="server" Width="188px" ValidationGroup="Registar"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtCodigo" ForeColor="#CC0000" ValidationGroup="Registar">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtCodigo" ForeColor="#CC0000" ValidationExpression="\d{4}\-\d{3}" ValidationGroup="Registar">Codigo Postal Inválido</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" dir="rtl">
                        <asp:Label ID="lblLocalidade" runat="server" style="color: #CBC750; font-size: medium" Text="Localidade"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtLocalidade" runat="server" Width="188px" ValidationGroup="Registar"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtLocalidade" ForeColor="#CC0000" ValidationGroup="Registar">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" dir="rtl">
                        <asp:Label ID="lblTelefone" runat="server" style="color: #CBC750; font-size: medium" Text="Telefone"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtTelefone" runat="server" OnTextChanged="txtTelefone_TextChanged" Width="188px" ValidationGroup="Registar"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtTelefone" ForeColor="#CC0000" ValidationGroup="Registar">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtTelefone" ForeColor="#CC0000" ValidationExpression="\d+" ValidationGroup="Registar">Apenas números</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" dir="rtl">
                        <asp:Label ID="lblDataNascimento" runat="server" style="color: #CBC750; font-size: medium" Text="Data de Nascimento"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtDataNascimento" runat="server" OnTextChanged="txtTelefone_TextChanged" Width="188px" ValidationGroup="Registar" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtDataNascimento" ForeColor="#CC0000" ValidationGroup="Registar">*</asp:RequiredFieldValidator>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style5" dir="rtl">
                        <asp:Label ID="lblNIF" runat="server" style="color: #CBC750; font-size: medium" Text="NIF"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtNIF" runat="server" OnTextChanged="txtTelefone_TextChanged" Width="188px" ValidationGroup="Registar"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtNIF" ForeColor="#CC0000" ValidationGroup="Registar">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtNIF" ForeColor="#CC0000" ValidationExpression="\d+" ValidationGroup="Registar">Apenas números</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" dir="rtl">
                        &nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="btnConcluir" runat="server" Text="Concluir" Width="73px" OnClick="btnConcluir_Click" ValidationGroup="Registar" />
                        <asp:Label ID="lblInfoRegistar" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
            </table>
</asp:Content>
