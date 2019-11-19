<%@ Page Title="" Language="C#" MasterPageFile="~/Utilizador.Master" AutoEventWireup="true" CodeBehind="VerProdutos.aspx.cs" Inherits="Sabores_Unicos.VerProdutos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
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
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id_Compra" DataSourceID="SqlDataSource1" style="text-align: center; margin-left: 42px" Width="561px">
                    <Columns>
                        <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                        <asp:BoundField DataField="Produto" HeaderText="Produto" SortExpression="Produto" />
                        <asp:TemplateField HeaderText="Imagem">
                            <ItemTemplate>
                                <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("Imagem1") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Preco" HeaderText="Preço" SortExpression="Preco" />
                        <asp:BoundField DataField="Quantidade" HeaderText="Quantidade" SortExpression="Quantidade" />
                        <asp:BoundField DataField="Preco_Total" HeaderText="Preço Total" SortExpression="Preco_Total" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [Nome], [Produto], [Imagem1], [Preco], [Quantidade], [Preco_Total], [Id_Produto], [Id_Utilizador], [Id_Compra] FROM [Carrinho] WHERE ([Id_Utilizador] = @Id_Utilizador)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Id_Utilizador" SessionField="Id_Utilizador" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
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
    </table>
</asp:Content>
