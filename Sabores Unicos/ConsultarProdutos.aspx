<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ConsultarProdutos.aspx.cs" Inherits="Sabores_Unicos.ConsultarProdutos" ValidateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            height: 24px;
        }
        .auto-style13 {
            height: 21px;
            text-align: left;
        }
        .auto-style17 {
        }
        .auto-style18 {
            height: 24px;
        }
        .auto-style20 {
            height: 38px;
        }
        .auto-style21 {
            height: 38px;
            font-weight: 700;
        }
        .auto-style24 {
            width: 522px;
        }
        .auto-style25 {
            width: 522px;
            height: 38px;
            font-weight: 700;
        }
        .auto-style26 {
            width: 522px;
            height: 24px;
            text-align: center;
        }
        .auto-style27 {
            width: 522px;
            height: 21px;
            text-align: left;
        }
        .auto-style28 {
        }
        .auto-style29 {
            height: 21px;
        }
        .auto-style37 {
            width: 409px;
        }
        .auto-style38 {
            width: 357px;
        }
        .auto-style39 {
            width: 522px;
            height: 38px;
        }
        .auto-style40 {
            width: 695px;
        }
        .auto-style41 {
            width: 695px;
            height: 38px;
            font-weight: 700;
        }
        .auto-style42 {
            width: 695px;
            height: 24px;
            text-align: center;
        }
        .auto-style43 {
            width: 695px;
            height: 21px;
            text-align: left;
        }
        .auto-style44 {
            width: 695px;
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <table style="width: 100%;">
    <tr>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style17">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style40">&nbsp;</td>
        <td class="auto-style24">&nbsp;</td>
        <td class="auto-style28" colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style17">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style40">&nbsp;</td>
        <td class="auto-style24">&nbsp;</td>
        <td class="auto-style28" colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style17" dir="ltr">
            &nbsp;</td>
        <td class="auto-style17" dir="ltr">
            &nbsp;</td>
        <td dir="ltr">
            &nbsp;</td>
        <td dir="ltr">
            &nbsp;</td>
        <td class="auto-style40" dir="ltr">
            &nbsp;</td>
        <td class="auto-style24" dir="ltr">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="133px" style="text-align: center; margin-left: 0px" Width="516px" DataKeyNames="Id_Produto"  OnRowCommand = "GridView1_RowCommand">
                <Columns>
                    <asp:BoundField DataField="Id_Produto" HeaderText="Id_Produto" SortExpression="Id_Produto" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
                    <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                    <asp:BoundField DataField="Info" HeaderText="Info" SortExpression="Info" />
                    <asp:BoundField DataField="Preco" HeaderText="Preco" SortExpression="Preco" />
                    <asp:TemplateField HeaderText="Imagem">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Imagem1") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:ButtonField CommandName="alterar" Text="Alterar" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id_Produto], [Categoria], [Nome], [Info], [Preco], [Imagem1] FROM [Produtos]"></asp:SqlDataSource>
        </td>
        <td class="auto-style37" dir="ltr">
            &nbsp;</td>
        <td class="auto-style38">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13"></td>
        <td class="auto-style13" colspan="8"></td>
    </tr>
    <tr>
        <td class="auto-style20">
                &nbsp;</td>
        <td class="auto-style20" colspan="3">
                &nbsp;</td>
        <td class="auto-style41">
                &nbsp;</td>
        <td class="auto-style25">
                &nbsp;</td>
        <td class="auto-style21" colspan="3"></td>
    </tr>
    <tr>
        <td class="auto-style18">
                &nbsp;</td>
        <td class="auto-style18" colspan="3">
                &nbsp;</td>
        <td class="auto-style42">
                &nbsp;</td>
        <td class="auto-style26">
                <asp:Label ID="lblID" runat="server" style="color: #CBC750; font-size: small" Visible="False"></asp:Label>
            </td>
        <td class="auto-style9" colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13">
                &nbsp;</td>
        <td class="auto-style13" colspan="3">
                &nbsp;</td>
        <td class="auto-style43">
                &nbsp;</td>
        <td class="auto-style27">
                &nbsp;</td>
        <td class="auto-style29" colspan="3"></td>
    </tr>
    <tr>
        <td class="auto-style13">
            </td>
        <td class="auto-style13" colspan="3">
                &nbsp;</td>
        <td class="auto-style43">
                <asp:Label ID="lblCategoria" runat="server" style="color: #CBC750; font-size: small" Text="Categoria do Produto" Visible="False"></asp:Label>
            </td>
        <td class="auto-style27">
                <asp:TextBox ID="txtCategoria" runat="server" Width="215px" Visible="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCategoria" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
            </td>
        <td class="auto-style13" colspan="3"></td>
    </tr>
    <tr>
        <td class="auto-style13">
                &nbsp;</td>
        <td class="auto-style13" colspan="3">
                &nbsp;</td>
        <td class="auto-style43">
                <asp:Label ID="lblNome" runat="server" style="color: #CBC750; font-size: small" Text="Nome do Produto" Visible="False"></asp:Label>
            </td>
        <td class="auto-style27">
                <asp:TextBox ID="txtNome" runat="server" Width="215px" Visible="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNome" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
            </td>
        <td class="auto-style29" colspan="3"></td>
    </tr>
    <tr>
        <td class="auto-style13"></td>
        <td class="auto-style13" colspan="3">
                &nbsp;</td>
        <td class="auto-style43">
                <asp:Label ID="lblInformacao" runat="server" style="color: #CBC750; font-size: small" Text="Informação" Visible="False"></asp:Label>
            </td>
        <td class="auto-style13" colspan="2">
                <asp:TextBox ID="txtInfo" runat="server" Height="67px" TextMode="MultiLine" Width="215px" Visible="False" style="text-align: left"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtInfo" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
            </td>
        <td class="auto-style13" colspan="2">
                &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style20"></td>
        <td class="auto-style20" colspan="3">
                &nbsp;</td>
        <td class="auto-style44">
                <asp:Label ID="lblPreco" runat="server" style="color: #CBC750; font-size: small" Text="Preço do Produto" Visible="False"></asp:Label>
            </td>
        <td class="auto-style39">
                <asp:TextBox ID="txtPreco" runat="server" Width="93px" Visible="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPreco" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
            </td>
        <td class="auto-style20" colspan="3"></td>
    </tr>
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style13" colspan="3">
                &nbsp;</td>
        <td class="auto-style43">
                <asp:Label ID="lblImagem" runat="server" style="color: #CBC750; font-size: small" Text="Imagem do Produto" Visible="False"></asp:Label>
            </td>
        <td class="auto-style27">
                <asp:FileUpload ID="FileUploadImagem" runat="server" Width="233px" Visible="False" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="FileUploadImagem" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
            </td>
        <td class="auto-style29" colspan="3"></td>
    </tr>
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style13" colspan="3">&nbsp;</td>
        <td class="auto-style43">
                &nbsp;</td>
        <td class="auto-style13" colspan="2">
                <asp:Button ID="btnAplicar" runat="server" Text="Aplicar" Width="83px" OnClick="btnAplicar_Click" Visible="False" CssClass="btnLogin" />
                <asp:Button ID="btnVoltar" runat="server" Text="Voltar" Width="83px" OnClick="btnVoltar_Click" Visible="False" CssClass="btnLogin" />
            </td>
        <td class="auto-style13" colspan="2">
                &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13"></td>
        <td class="auto-style13" colspan="3"></td>
        <td class="auto-style43">
            </td>
        <td class="auto-style13" colspan="2">
                <asp:Label ID="lblInfoAlterarProduto" runat="server" Visible="False" ForeColor="#009900">Dados Alterados com Sucesso</asp:Label>
            </td>
        <td class="auto-style13" colspan="2">
            </td>
    </tr>
    <tr>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style17" colspan="8">&nbsp;</td>
    </tr>
</table>
   
</asp:Content>
