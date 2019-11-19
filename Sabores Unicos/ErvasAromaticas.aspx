<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ErvasAromaticas.aspx.cs" Inherits="Sabores_Unicos.ErvasAromaticas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 34px;
        }
        .auto-style6 {
            width: 1121px;
        }
        .auto-style7 {
            width: 236px;
        }
        .auto-style8 {
            width: 34px;
            height: 21px;
        }
        .auto-style9 {
            width: 1121px;
            height: 21px;
            font-size: small;
            text-align: center;
        }
        .auto-style10 {
            width: 236px;
            height: 21px;
        }
        .auto-style11 {
            height: 21px;
        }
        .auto-style12 {
            width: 38px;
        }
        .auto-style13 {
            width: 38px;
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table style="width:100%;">
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style13"></td>
            <td class="auto-style9" aria-expanded="undefined">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id_Produto" DataSourceID="SqlDataSource1" GridLines="None" style="margin-left: 153px" AllowSorting="True">
                    <Columns>
                        <asp:TemplateField HeaderText="Imagem"></asp:TemplateField>
                        <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                        <asp:BoundField DataField="Preco" HeaderText="Preco" SortExpression="Preco" />
                        <asp:ButtonField CommandName="Visualizar" Text="Ver detalhes" />
                    </Columns>
                </asp:GridView>
            </td>
            <td class="auto-style10"></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style6">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id_Produto], [Imagem1], [Nome], [Preco] FROM [Produtos] WHERE ([Categoria] = @Categoria)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Ervas Aromáticas" Name="Categoria" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    
</asp:Content>
