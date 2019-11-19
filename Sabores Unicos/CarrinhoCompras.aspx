<%@ Page Title="" Language="C#" MasterPageFile="~/Utilizador.Master" AutoEventWireup="true" CodeBehind="CarrinhoCompras.aspx.cs" Inherits="Sabores_Unicos.CarrinhoCompras" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            height: 21px;
        }
        .auto-style6 {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
            <td class="auto-style6">
                <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource1" Width="562px" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id_Compra" style="text-align: center">
                    <Columns>
                        <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                        <asp:BoundField DataField="Produto" HeaderText="Produto" SortExpression="Produto" />
                        <asp:TemplateField HeaderText="Imagen"></asp:TemplateField>
                        <asp:BoundField DataField="Preco" HeaderText="Preço" SortExpression="Preco" />
                        <asp:BoundField DataField="Quantidade" HeaderText="Quantidade" SortExpression="Quantidade" />
                        <asp:BoundField DataField="Preco_Total" HeaderText="Preço Total" SortExpression="Preco_Total" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [Nome], [Produto], [Imagem1], [Preco], [Quantidade], [Preco_Total], [Id_Produto], [Id_Compra], [Id_Utilizador] FROM [Carrinho] WHERE ([Id_Utilizador] = @Id_Utilizador)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Id_Utilizador" SessionField="Id_Utilizador" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
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
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        </table>
</asp:Content>
