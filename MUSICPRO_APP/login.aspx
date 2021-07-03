<%@ Page Title="Login" Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" MasterPageFile="~/Site.Master" Inherits="MUSICPRO_APP.login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
   <asp:Login ID="Login1" runat="server" onauthenticate="Login1_Authenticate" LoginButtonText="Ingresar" PasswordLabelText="Contraseña:" RememberMeText="Recordarme la proxima vez." TitleText=""
UserNameLabelText="Usuario:"> </asp:Login>
</asp:Content>
