<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="MUSICPRO_APP.About" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<style>
    
.card {
    height: 500px
}


.content {
    position: absolute;
    bottom: 50px;
    left: 35px;
    color: #21211f;
    font-size: 14px;
    font-weight: 700
}

.content1 {
    position: absolute;
    bottom: 30px;
    right: 10px;
    color: #21211f;
    font-size: 14px;
    font-weight: 500
}

.image {
    width: 300px;
    overflow: hidden;
}

@media (max-width:750px) {
    .image {
        position: absolute
    }
}
</style>

<div class="container">
    <div class="row d-flex justify-content-center">
        <div class="col-md-10">
            <div class="card">
                <div class="row g-0">
                    <div class="col-md-6">
                        <div class="content-left">
                            <div class="upper-text">
                                <div class=" shop ms-2"> <h1>NOSOTROS</h1> </div>
                            </div>
                            <div class="content1"><p>La industria de fabricación de instrumentos musicales ha ido en constante alza desde los años 50s con el nacimiento de distintos géneros musicales el cual necesitan una gran variedad de instrumentos y accesorios de estos tales como guitarras, bajos, tambores, baterías, trompetas, pianos, teclados etc… Esto da como resultado una gran cantidad de fabricantes de estos mismos y el nacimiento de distintas marcas para una libre elección de compra según los gustos y necesidad de los clientes.
Como consecuencia de este crecimiento exponencial de géneros musicales nuevos, artistas e instrumentos surgió también el nacimiento de las distribuidoras de instrumentos y accesorios para distribuir estos a las tiendas para su respectiva venta a clientes ya sean profesionales o casuales. Estas distribuidoras han ido evolucionando con el tiempo, primero solo funcionando de manera física y ahora de manera tanto física como digital, donde se puede comprar de manera en línea haciendo mucho más rápida la compra además de cómoda para el cliente.</p> </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="image"> <img src="img/imagotipo.png"> </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</asp:Content>
