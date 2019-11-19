<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sabonetes.aspx.cs" Inherits="Sabores_Unicos.Sabonetes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 383px;
        }
        .auto-style5 {
            width: 64px;
        }
        .auto-style6 {
            width: 69px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style4">
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" GridLines="None" style="text-align: center; margin-left: 0px" Width="368px">
                <Columns>
                    <asp:TemplateField HeaderText="Imagem">
                        <ItemTemplate>
                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("Imagem1") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                    <asp:BoundField DataField="Preco" HeaderText="Preco" SortExpression="Preco" />
                    <asp:ButtonField CommandName="Visualizar" Text="Ver detalhes" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString%>" SelectCommand="SELECT [Imagem1], [Nome], [Preco] FROM [Produtos] WHERE ([Categoria] = @Categoria)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="Sabonetes" Name="Categoria" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
