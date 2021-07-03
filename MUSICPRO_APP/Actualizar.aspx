<%@ Page Language="C#"  AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Actualizar.aspx.cs" Inherits="MUSICPRO_APP.Actualizar" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
       <div class="line-style"></div>
    <h2 class="breadcumb">Eliminar <span>producto</span></h2>
     <div style="display:none;"  class="windowText" id="divModal" runat="server" >
        <p  id="pText" runat="server">Creado</p>
    </div>
    <div class="row search">
            <div class="col-sm-12 bob">
                <p class="lead">Eliminar  por Código</p>
                <asp:TextBox ID="txt_IdCodigo" TextMode="Number" runat="server"></asp:TextBox><br />
                <br />
                <asp:Button ID="btn_eliminar" runat="server" Text="Eliminar..."  OnClick="btn_EliminarLibro_Click" />
                <br />
                <asp:Label ID="lbl_Resultado" disabled="false" runat="server"></asp:Label>
                <br />
            </div>
    </div>
</asp:Content> 
