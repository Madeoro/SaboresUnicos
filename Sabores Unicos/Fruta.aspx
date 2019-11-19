<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Fruta.aspx.cs" Inherits="Sabores_Unicos.Fruta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 29px;
        }
        .auto-style5 {
            width: 594px;
            font-size: x-small;
            text-align: center;
        }
        .auto-style6 {
            width: 29px;
            height: 21px;
        }
        .auto-style7 {
            width: 594px;
            height: 21px;
        }
        .auto-style8 {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id_Produto" DataSourceID="SqlDataSource1" GridLines="None" style="font-size: small; margin-left: 163px" AllowSorting="True" >
                    <Columns>
                        <asp:TemplateField HeaderText="Imagem"></asp:TemplateField>
                        <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                        <asp:BoundField DataField="Preco" HeaderText="Preco" SortExpression="Preco" />
                        <asp:ButtonField CommandName="Visualizar" Text="Ver detalhes" />
                    </Columns>


                </asp:GridView>
            </td>

            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id_Produto], [Imagem1], [Nome], [Preco] FROM [Produtos] WHERE ([Categoria] = @Categoria)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Fruta" Name="Categoria" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style7"></td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
