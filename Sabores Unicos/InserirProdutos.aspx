<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="InserirProdutos.aspx.cs" Inherits="Sabores_Unicos.InserirProdutos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            height: 21px;
        }
        .auto-style5 {
            width: 24px;
        }
        .auto-style6 {
            height: 21px;
            width: 24px;
        }
        .auto-style7 {
            width: 142px;
        }
        .auto-style8 {
            height: 21px;
            width: 142px;
        }
        .auto-style9 {
            width: 59px;
        }
        .auto-style10 {
            height: 21px;
            width: 59px;
        }
        .auto-style15 {
            width: 240px;
        }
        .auto-style17 {
            height: 21px;
            width: 240px;
            margin-left: 40px;
        }
        .auto-style18 {
            width: 24px;
            height: 26px;
        }
        .auto-style19 {
            width: 59px;
            height: 26px;
        }
        .auto-style20 {
            width: 142px;
            height: 26px;
        }
        .auto-style21 {
            width: 240px;
            height: 26px;
        }
        .auto-style22 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style10"></td>
            <td class="auto-style8"></td>
            <td class="auto-style17"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style19"></td>
            <td class="auto-style20">
                <asp:Label ID="lblNome" runat="server" style="color: #CBC750; font-size: small" Text="Nome do Produto"></asp:Label>
            </td>
            <td class="auto-style21">
                <asp:TextBox ID="txtNome" runat="server" Width="215px"></asp:TextBox>
            </td>
            <td class="auto-style22">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNome" ForeColor="#CC0000" ValidationGroup="inserirProduto">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style22"></td>
            <td class="auto-style22"></td>
            <td class="auto-style22"></td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style10"></td>
            <td class="auto-style8">
                <asp:Label ID="lblCategoria" runat="server" style="color: #CBC750; font-size: small" Text="Categoria do Produto"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Width="215px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem Enabled="False" Selected="True">Cabazes</asp:ListItem>
                    <asp:ListItem>Legumes</asp:ListItem>
                    <asp:ListItem>Frutas</asp:ListItem>
                    <asp:ListItem>Ervas Aromáticas</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" ForeColor="#CC0000" ValidationGroup="inserirProduto">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style10"></td>
            <td class="auto-style8">
                <asp:Label ID="lblInformacao" runat="server" style="color: #CBC750; font-size: small" Text="Informação"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:TextBox ID="txtInfo" runat="server" Height="67px" TextMode="MultiLine" Width="215px"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtInfo" ForeColor="#CC0000" ValidationGroup="inserirProduto">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style10"></td>
            <td class="auto-style8">
                <asp:Label ID="lblPreco" runat="server" style="color: #CBC750; font-size: small" Text="Preço do Produto"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:TextBox ID="txtPreco" runat="server" Width="77px"></asp:TextBox>
                <asp:Label ID="Label1" runat="server" ForeColor="#CBC750" style="font-size: medium" Text="€"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPreco" ForeColor="#CC0000" ValidationGroup="inserirProduto">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style19"></td>
            <td class="auto-style20">
                <asp:Label ID="lblImagem" runat="server" style="color: #CBC750; font-size: small" Text="Imagem do Produto"></asp:Label>
            </td>
            <td class="auto-style21">
                <asp:FileUpload ID="FileUploadImagem" runat="server" Width="233px" />
            </td>
            <td class="auto-style22">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="FileUploadImagem" ForeColor="#CC0000" ValidationGroup="inserirProduto">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style22"></td>
            <td class="auto-style22"></td>
            <td class="auto-style22"></td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style10"></td>
            <td class="auto-style8"></td>
            <td class="auto-style17"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style10"></td>
            <td class="auto-style8"></td>
            <td class="auto-style17">
                <asp:Button ID="btnAplicar" runat="server" Text="Aplicar" Width="83px" OnClick="btnAplicar_Click" style="margin-top: 0px;" CssClass="btnLogin" Height="36px" ValidationGroup="inserirProduto" />
                <asp:Button ID="btnVoltar" runat="server" Text="Voltar" Width="83px" OnClick="btnVoltar_Click" CssClass="btnLogin" />
            </td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style10"></td>
            <td class="auto-style8"></td>
            <td class="auto-style17">
                <asp:Label ID="lblInfoAlterarUtilizador" runat="server" Visible="False" ForeColor="#009900">Dados Alterados com Sucesso</asp:Label>
            </td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style10"></td>
            <td class="auto-style8"></td>
            <td class="auto-style17"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style10"></td>
            <td class="auto-style8"></td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
        </tr>
    </table>
</asp:Content>
