<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="MUSICPRO_APP.Administrador.Productos" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>CodePen - transparency</title>
    <link href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css" runat="server" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" runat="server"
        rel="stylesheet" />
    	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,600|Open+Sans" rel="stylesheet">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap");

        :root {
            --header-height: 3rem;
            --nav-width: 68px;
            --first-color: #014C87;
            --first-color-light: #AFA5D9;
            --white-color: #F7F6FB;
            --body-font: 'Nunito', sans-serif;
            --normal-font-size: 1rem;
            --z-fixed: 100
        }

        *,
        ::before,
        ::after {
            box-sizing: border-box
        }

        body {
            position: relative;
            margin: var(--header-height) 0 0 0;
            padding: 0 1rem;
            font-family: var(--body-font);
            font-size: var(--normal-font-size);
            transition: .5s
        }

        a {
            text-decoration: none
        }

        .header {
            width: 100%;
            height: var(--header-height);
            position: fixed;
            top: 0;
            left: 0;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 1rem;
            background-color: var(--white-color);
            z-index: var(--z-fixed);
            transition: .5s
        }

        .header_toggle {
            color: var(--first-color);
            font-size: 1.5rem;
            cursor: pointer
        }

        .header_img {
            width: 35px;
            height: 35px;
            display: flex;
            justify-content: center;
            border-radius: 50%;
            overflow: hidden
        }

            .header_img img {
                width: 40px
            }

        .l-navbar {
            position: fixed;
            top: 0;
            left: -30%;
            width: var(--nav-width);
            height: 100vh;
            background-color: var(--first-color);
            padding: .5rem 1rem 0 0;
            transition: .5s;
            z-index: var(--z-fixed)
        }

        .nav {
            height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            overflow: hidden
        }

        .nav_logo,
        .nav_link {
            display: grid;
            grid-template-columns: max-content max-content;
            align-items: center;
            column-gap: 1rem;
            padding: .5rem 0 .5rem 1.5rem
        }

        .nav_logo {
            margin-bottom: 2rem
        }

        .nav_logo-icon {
            font-size: 1.25rem;
            color: var(--white-color)
        }

        .nav_logo-name {
            color: var(--white-color);
            font-weight: 700
        }

        .nav_link {
            position: relative;
            color: var(--first-color-light);
            margin-bottom: 1.5rem;
            transition: .3s
        }

            .nav_link:hover {
                color: var(--white-color)
            }

        .nav_icon {
            font-size: 1.25rem
        }

        .show {
            left: 0
        }

        .body-pd {
            padding-left: calc(var(--nav-width) + 1rem)
        }

        .active {
            color: var(--white-color)
        }

            .active::before {
                content: '';
                position: absolute;
                left: 0;
                width: 2px;
                height: 32px;
                background-color: var(--white-color)
            }

        .height-100 {
            height: 100vh
        }

        @media screen and (min-width: 768px) {
            body {
                margin: calc(var(--header-height) + 1rem) 0 0 0;
                padding-left: calc(var(--nav-width) + 2rem)
            }

            .header {
                height: calc(var(--header-height) + 1rem);
                padding: 0 2rem 0 calc(var(--nav-width) + 2rem)
            }

            .header_img {
                width: 40px;
                height: 40px
            }

                .header_img img {
                    width: 45px
                }

            .l-navbar {
                left: 0;
                padding: 1rem 1rem 0 0
            }

            .show {
                width: calc(var(--nav-width) + 156px)
            }

            .body-pd {
                padding-left: calc(var(--nav-width) + 188px)
            }
        }

        .band {
            width: 90%;
            max-width: 1240px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: 1fr;
            grid-template-rows: auto;
            grid-gap: 20px;

            @media (min-width: 30em) {
                grid-template-columns: 1fr 1fr;
            }

            @media (min-width: 60em) {
                grid-template-columns: repeat(4, 1fr);
            }
        }

        .band {
            width: 90%;
            max-width: 1140px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: 1fr;
            grid-template-rows: auto;
            grid-gap: 20px;
        }

        @media (min-width: 30em) {
            .band {
                grid-template-columns: 1fr 1fr;
            }
        }

        @media (min-width: 60em) {
            .band {
                grid-template-columns: repeat(4, 1fr);
            }
        }

        .card {
            background: white;
            text-decoration: none;
            color: #444;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
            min-height: 100%;
            position: relative;
            top: 0;
            transition: all 0.1s ease-in;
        }

            .card:hover {
                top: -2px;
                box-shadow: 0 4px 5px rgba(0, 0, 0, 0.2);
            }

            .card article {
                padding: 20px;
                flex: 1;
                display: flex;
                flex-direction: column;
                justify-content: space-between;
            }

            .card h1 {
                font-size: 20px;
                margin: 0;
                color: #333;
            }

            .card p {
                flex: 1;
                line-height: 1.4;
            }

            .card span {
                font-size: 12px;
                font-weight: bold;
                color: #999;
                text-transform: uppercase;
                letter-spacing: 0.05em;
                margin: 2em 0 0 0;
            }

            .card .thumb {
                padding-bottom: 60%;
                background-size: cover;
                background-position: center center;
            }

        @media (min-width: 20em) {
            .item-1 {
                grid-column: 1/span 2;
            }

                .item-1 h1 {
                    font-size: 24px;
                }
        }
    </style>
    <style>
	* {
		padding: 0;
		margin: 0;
		box-sizing: border-box;
	}

	body {
		background: #fff;
		font-family: 'Open Sans', sans-serif;
	}

	.contenedor {
		width: 90%;
		max-width: 1000px;
		margin: 20px auto;
	}

	.contenedor article {
		line-height: 28px;
	}

	.contenedor article h1 {
		font-size: 30px;
		text-align: left;
		padding: 50px 0;
	}

	.contenedor article p {
		margin-bottom: 20px;
	}

	.contenedor article .btn-abrir-popup {
		padding: 0 20px;
		margin-bottom: 20px;
		height: 40px;
		line-height: 40px;
		border: none;
		color: #fff;
		background: #5E7DE3;
		border-radius: 3px;
		font-family: 'Montserrat', sans-serif;
		font-size: 16px;
		cursor: pointer;
		transition: .3s ease all;
		cursor: pointer;
	}

	.contenedor article .btn-abrir-popup:hover {
		background: rgba(94, 125, 227, .9);
	}

	/* ------------------------- */
	/* POPUP */
	/* ------------------------- */

	.overlay {
		background: rgba(0, 0, 0, .3);
		position: fixed;
		top: 0;
		bottom: 0;
		left: 0;
		right: 0;
		align-items: center;
		justify-content: center;
		display: flex;
		visibility: hidden;
	}

	.overlay.active {
		visibility: visible;
	}

	.popup {
		background: #F8F8F8;
		box-shadow: 0px 0px 5px 0px rgba(0, 0, 0, 0.3);
		border-radius: 3px;
		font-family: 'Montserrat', sans-serif;
		padding: 20px;
		text-align: center;
		width: 600px;

		transition: .3s ease all;
		transform: scale(0.7);
		opacity: 0;
	}

	.popup .btn-cerrar-popup {
		font-size: 16px;
		line-height: 16px;
		display: block;
		text-align: right;
		transition: .3s ease all;
		color: #BBBBBB;
	}

	.popup .btn-cerrar-popup:hover {
		color: #000;
	}

	.popup h3 {
		font-size: 36px;
		font-weight: 600;
		margin-bottom: 10px;
		opacity: 0;
	}

	.popup h4 {
		font-size: 26px;
		font-weight: 300;
		margin-bottom: 40px;
		opacity: 0;
	}

	.popup form .contenedor-inputs {
		opacity: 0;
	}

	.popup form .contenedor-inputs input {
		width: 100%;
		margin-bottom: 20px;
		height: 52px;
		font-size: 18px;
		line-height: 52px;
		text-align: center;
		border: 1px solid #BBBBBB;
	}

	.popup form .btn-submit {
		padding: 0 20px;
		height: 40px;
		line-height: 40px;
		border: none;
		color: #fff;
		background: #5E7DE3;
		border-radius: 3px;
		font-family: 'Montserrat', sans-serif;
		font-size: 16px;
		cursor: pointer;
		transition: .3s ease all;
	}

	.popup form .btn-submit:hover {
		background: rgba(94, 125, 227, .9);
	}

	/* ------------------------- */
	/* ANIMACIONES */
	/* ------------------------- */
	.popup.active {
		transform: scale(1);
		opacity: 1;
	}

	.popup.active h3 {
		animation: entradaTitulo .8s ease .5s forwards;
	}

	.popup.active h4 {
		animation: entradaSubtitulo .8s ease .5s forwards;
	}

	.popup.active .contenedor-inputs {
		animation: entradaInputs 1s linear 1s forwards;
	}

	@keyframes entradaTitulo {
		from {
			opacity: 0;
			transform: translateY(-25px);
		}

		to {
			transform: translateY(0);
			opacity: 1;
		}
	}

	@keyframes entradaSubtitulo {
		from {
			opacity: 0;
			transform: translateY(25px);
		}

		to {
			transform: translateY(0);
			opacity: 1;
		}
	}

	@keyframes entradaInputs {
		from {
			opacity: 0;
		}

		to {
			opacity: 1;
		}
	}
</style>
</head>

<body id="body-pd">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"> </script>
    <script>
        document.addEventListener("DOMContentLoaded", function (event) {

            const showNavbar = (toggleId, navId, bodyId, headerId) => {
                const toggle = document.getElementById(toggleId),
                    nav = document.getElementById(navId),
                    bodypd = document.getElementById(bodyId),
                    headerpd = document.getElementById(headerId)

                // Validate that all variables exist
                if (toggle && nav && bodypd && headerpd) {
                    toggle.addEventListener('click', () => {
                        // show navbar
                        nav.classList.toggle('show')
                        // change icon
                        toggle.classList.toggle('bx-x')
                        // add padding to body
                        bodypd.classList.toggle('body-pd')
                        // add padding to header
                        headerpd.classList.toggle('body-pd')
                    })
                }
            }

            showNavbar('header-toggle', 'nav-bar', 'body-pd', 'header')

            /*===== LINK ACTIVE =====*/
            const linkColor = document.querySelectorAll('.nav_link')

            function colorLink() {
                if (linkColor) {
                    linkColor.forEach(l => l.classList.remove('active'))
                    this.classList.add('active')
                }
            }
            linkColor.forEach(l => l.addEventListener('click', colorLink))

            // Your code to run since DOM is loaded and ready
        });
    </script>
    <header class="header" id="header">
        <div class="header_toggle"><i class='bx bx-menu' id="header-toggle"></i></div>
        <div class="header_img">
        </div>
    </header>
    <div class="l-navbar" id="nav-bar">
        <nav class="nav">
            <div>
                <a href="inicio.html" class="nav_logo">
                    <img src="../img/imagotipo.png" style="width: 30px; height: 30px;" /><span
                        class="nav_logo-name">MusicPro</span> </a>
                <div class="nav_list">
                    <a href="dashboard_admin.aspx" class="nav_link active"><i class='bx bx-grid-alt nav_icon'></i><span
                        class="nav_name">Dashboard</span>
                        <a href="Productos.aspx" class="nav_link"><i class='bx bx-box nav_icon'></i><span
                            class="nav_name">Productos</span> </a>
                        <a href="Empleados.aspx" class="nav_link"><i class='bx bx-user nav_icon'></i><span
                            class="nav_name">Empleados</span> </a>
                        <a href="Informes.aspx" class="nav_link"><i class='bx bx-briefcase nav_icon'></i><span
                            class="nav_name">Informes</span> </a>
                </div>
            </div>
            <a href="index.html" class="nav_link"><i class='bx bx-log-out nav_icon'></i><span
                class="nav_name">SignOut</span> </a>
        </nav>
    </div>

    <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <!-- general form elements -->
                        <div class="card card-primary">
                            <div class="card-header" style="background-color: #3498DB;">
                                <h4 class="card-title"><i class="fas fa-plus"></i>Productos</h4>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="card card-success">
                                        <div class="card-header" style="background-color: #5F6A6A;">
                                            <h5 class="card-title"><i class="fas fa-boxes"></i> Crear Productos
                                            </h5>
                                        </div>
                                        <div class="card-body">
                                            <div class="input-group" id="basic-addon1">
                                                <button id="btn-abrir-popup" class="btn-abrir-popup btn btn-dark">Crear</button>
                                            </div>
                                        </div>
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th scope="col">#</th>
                                                    <th scope="col">Nombre</th>
                                                    <th scope="col">Descripcion</th>
                                                    <th scope="col">Serie</th>
                                                    <th scope="col">Marca</th>
                                                    <th scope="col">Cantidad</th>
                                                    <th scope="col">Total</th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <br>
                                    <button class="btn btn-ligth" style="background-color: #3498DB;"><i
                                            class="far fa-save"></i> Guardar</button>
                                    <button class="btn btn-ligth" style="background-color: #E74C3C;"><i
                                            class="fas fa-times"></i> Cancelar</button>
                                    <br>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="overlay" id="overlay">
			<div class="popup" id="popup">
				<a href="#" id="btn-cerrar-popup" class="btn-cerrar-popup"><i class="fas fa-times"></i></a>
				<h3>Producto</h3>
				<form action="">
						<input type="text" placeholder="Nombre Producto">
						<input type="text" placeholder="Descripcion">
						<input type="file" >
						<input type="text" placeholder="Serie">
                        <input type="text" placeholder="Marca">
                        <input type="text" placeholder="Cantidad">
                        <input type="text" placeholder="Cantidad_min">
                        <select>
                            <option>Seleccionar Categoria</option>
                        </select>
                        <select>
                            <option>Seleccionar Tipo De Producto</option>
                        </select>
                        <select>
                            <option>Seleccionar Producto</option>
                        </select>
                        <input type="text" placeholder="Total">
					
					<input type="submit" class="btn-submit" value="Crear">
				</form>
			</div>
		</div>
            </div><!-- /.container-fluid -->
        </section>
    	<script>
            var btnAbrirPopup = document.getElementById('btn-abrir-popup'),
                overlay = document.getElementById('overlay'),
                popup = document.getElementById('popup'),
                btnCerrarPopup = document.getElementById('btn-cerrar-popup');

            btnAbrirPopup.addEventListener('click', function () {
                overlay.classList.add('active');
                popup.classList.add('active');
            });

            btnCerrarPopup.addEventListener('click', function (e) {
                e.preventDefault();
                overlay.classList.remove('active');
                popup.classList.remove('active');
            });
        </script>

</body>

</html>
