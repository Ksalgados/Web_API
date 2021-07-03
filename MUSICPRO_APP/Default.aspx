﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MUSICPRO_APP._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="line-style"></div>

    <section class="banner">

        <img src="img/imagotipo-blanco.png" class="banner-logo" alt="">
        <h3>DISTRIBUIDORA DE INSTRUMENTOS Y ACCESORIOS MUSICALES </h3>

    </section>
    <div class="line-style"></div>

    <div class="columns is-mobile is-gapless is-multiline pro-buttons">

        <a href="search.aspx" class="column is-3-fullhd is-3-desktop  is-6-tablet  is-6-mobile buscar">Buscar
        </a>
        <a href="add.aspx" class="column is-3-fullhd is-3-desktop  is-6-tablet  is-6-mobile agregar">Agregar
        </a>
        <a href="update.aspx" class="column is-3-fullhd is-3-desktop  is-6-tablet  is-6-mobile actualizar">Actualizar
        </a>
        <a href="Actualizar.aspx" class="column is-3-fullhd is-3-desktop  is-6-tablet  is-6-mobile eliminar">Eliminar
        </a>

    </div>

	<div class="overlay" id="overlay">
			<div class="popup" id="popup">
				<a href="#" id="btn-cerrar-popup" class="btn-cerrar-popup"><i class="fas fa-times"></i></a>
				<h3>SUSCRIBETE</h3>
				<h4>y recibe un cupon de descuento.</h4>
				<form>
					<div class="contenedor-inputs">
						<input type="text" placeholder="Nombre">
						<input type="email" placeholder="Correo">
					</div>
					<input type="submit" class="btn-submit" value="Suscribirse">
				</form>
			</div>
		</div>

</asp:Content>





