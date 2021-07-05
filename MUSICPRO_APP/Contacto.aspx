<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="MUSICPRO_APP.Contacto" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <style>
       .card {
    padding: 10px;
    height: 250px;
    border: none;
    -webkit-box-shadow: 0px 1px 9px 3px rgba(219, 210, 219, 1);
    -moz-box-shadow: 0px 1px 9px 3px rgba(219, 210, 219, 1);
    box-shadow: 0px 1px 9px 3px rgba(219, 210, 219, 1);
    display: flex;
    justify-content: center;
    align-items: center
    }
   </style>
   <div class="container mt-5">
    <div class="text-center mb-3">
        <h3>Contactactanos</h3>
    </div>
    <div class="row g-2">
        <div class="col-md-4">
            <div class="card"> <img src="https://i.imgur.com/xuGJbnU.png" width="40">
                <h5>Dirección</h5>
                <p>Av. Esq. Blanca 501, Maipú</p>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card"> <img src="https://i.imgur.com/TNKflal.png" width="40">
                <h5>Correo</h5>
                <p>contactos@musicpro.com</p>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card"> <img src="https://i.imgur.com/pZLFSO3.png" width="40">
                <h5>Telefono</h5>
                <p>+562 2263 3763</p>
            </div>
        </div>
    </div>
</div>
    <br />  <br />  <br />  <br />  <br />
</asp:Content>