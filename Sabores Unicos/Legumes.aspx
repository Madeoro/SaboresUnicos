<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Legumes.aspx.cs" Inherits="Sabores_Unicos.Legumes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 34px;
        }
        .auto-style5 {
            width: 470px;
            text-align: center;
        }
        .auto-style8 {
            width: 31px;
        }
        .auto-style9 {
            width: 31px;
            height: 20px;
        }
        .auto-style10 {
            width: 34px;
            height: 20px;
        }
        .auto-style11 {
            width: 470px;
            height: 20px;
        }
        .auto-style12 {
            height: 20px;
        }
        .auto-style13 {
            width: 31px;
            height: 21px;
        }
        .auto-style14 {
            width: 34px;
            height: 21px;
        }
        .auto-style15 {
            width: 470px;
            height: 21px;
        }
        .auto-style16 {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;<table style="width:100%;">
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id_Produto,Categoria,Nome,Info,Preco,Imagem1" DataSourceID="SqlDataSource1" GridLines="None" style="font-size: small; margin-left: 128px" OnRowCommand="GridView1_RowCommand1">
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Produtos] WHERE ([Categoria] = @Categoria)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Legumes" Name="Categoria" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style14"></td>
            <td class="auto-style15"></td>
            <td class="auto-style14"></td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style10"></td>
            <td class="auto-style11">    &nbsp;</td>
            <td class="auto-style10"></td>
            <td class="auto-style12"></td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </asp:Content>
