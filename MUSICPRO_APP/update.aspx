 <%@ Page Language="C#"  AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="update.aspx.cs" Inherits="MUSICPRO_APP.update" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
       <div class="line-style"></div>
    <h2 class="breadcumb">Actualizar <span>producto</span></h2>
    <div style="display:none;"  class="windowText" id="divModal" runat="server" >
        <p  id="pText" runat="server">Creado</p>
    </div>
    <div class="row search">

            <div class="col-sm-12 bob">
                <p class="lead">Actualizar  producto</p>
                <span>Id</span>
                <br />
                <asp:TextBox ID="txt_id" TextMode="Number" runat="server"></asp:TextBox>
                <br />
                <span>nombre</span>
                <br />
                   <asp:TextBox ID="txt_nombre" runat="server"></asp:TextBox><br />
                <br />
                <span>Descripción</span>
                <br />
                   <asp:TextBox ID="txt_descripcion" runat="server"></asp:TextBox><br />
                <br />
                <span>imagen</span>
                <br />
                   <asp:TextBox ID="txt_imagen"  runat="server"></asp:TextBox><br />
                <br />
                <span>cantidad</span>
                <br />
                   <asp:TextBox ID="txt_cantidad" TextMode="Number" runat="server"></asp:TextBox><br />
                <br />
                <span>cantidad minima</span>
                <br />
                    <asp:TextBox ID="txt_cantidadmin" TextMode="Number" runat="server"></asp:TextBox><br />
                <br />
                <span>precio</span>
                <br />
                  <asp:TextBox ID="txt_precio" TextMode="Number" runat="server"></asp:TextBox><br />
                <br />
                <span>tipo</span>
                <br />
                  <asp:TextBox ID="txt_tipo" runat="server"></asp:TextBox><br />
                <br />



                <asp:Button ID="btn_agregar" runat="server" Text="Actualizar..."  OnClick="btn_ActualizarLibro_Click" />
                <br />
            </div>
    </div>
    <!---->

   

        <div class="line-style"></div>
   
</asp:Content> 

