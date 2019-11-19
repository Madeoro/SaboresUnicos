<%@ Page Title="" Language="C#" MasterPageFile="~/Utilizador.Master" AutoEventWireup="true" CodeBehind="Utilizadores.aspx.cs" Inherits="Sabores_Unicos.Utilizadores" %>
<%@ Register src="WebUserControlUtilizador.ascx" tagname="WebUserControlUtilizador" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <uc1:WebUserControlUtilizador ID="WebUserControlUtilizador1" runat="server" />
   
</asp:Content>
