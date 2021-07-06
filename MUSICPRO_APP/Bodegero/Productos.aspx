<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="MUSICPRO_APP.Bodegero.Productos" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>CodePen - transparency</title>
    <link href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css" runat="server" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" runat="server"
        rel="stylesheet" />
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

                products {
            width: 75%;
            padding-left: 30px;
            margin: 0;
            float: right
        }

        .card:hover {
            transform: scale(1.1);
            transition: all 0.5s ease-in-out;
            cursor: pointer
        }

        .card-body {
            padding: 0.5rem
        }

            .card-body .description {
                font-size: 0.78rem;
                padding-bottom: 8px
            }

        div.h6,
        h6 {
            margin: 0
        }

        .product .fa-star {
            font-size: 0.9rem
        }

        .rebate {
            font-size: 0.9rem
        }


        img {
            width: 192px;
            height: 132px;
            object-fit: contain
        }

        .clear {
            clear: both
        }

        .btn.btn-success {
            visibility: hidden
        }

        @media(min-width:992px) {

            .filter,
            #mobile-filter {
                display: none
            }
        }

        @media(min-width:768px) and (max-width:991px) {

            .radio,
            .checkbox {
                padding: 6px 10px;
                width: 49%;
                float: left;
                margin: 5px 5px 5px 0px
            }

            .filter,
            #mobile-filter {
                display: none
            }
        }

        @media(min-width:576px) and (max-width:767px) {
            #sidebar {
                width: 35%
            }

            #products {
                width: 65%
            }

            .filter,
            #mobile-filter {
                display: none
            }

            .h3 + .ml-auto {
                margin: 0
            }
        }

        @media(max-width:575px) {
            .wrapper {
                padding: 10px
            }

            .h3 {
                font-size: 1.3rem
            }

            #sidebar {
                display: none
            }

            #products {
                width: 100%;
                float: none
            }

            #products {
                padding: 0
            }

            .clear {
                float: left;
                width: 80%
            }

            .btn.btn-success {
                visibility: visible;
                margin: 10px 0px;
                color: #fff;
                padding: 0.2rem 0.1rem;
                width: 20%
            }

            .green-label {
                width: 50%
            }

            .btn.text-success {
                padding: 0
            }

            .content,
            #mobile-filter {
                clear: both
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
        <div class="header_toggle"> <i class='bx bx-menu' id="header-toggle"></i> </div>
        <div class="header_img"> <img src="https://i.imgur.com/hczKIze.jpg" alt=""> </div>
    </header>
    <div class="l-navbar" id="nav-bar">
        <nav class="nav">
            <div>
                <a href="Productos.aspx" class="nav_logo"><img src="https://i.imgur.com/hczKIze.jpg" style="width:30px; height:30px;" /><span
                        class="nav_logo-name">Bodeguero</span> </a>
                <div class="nav_list">
                   <a href="Productos.aspx" class="nav_link"><i class='bx bx-briefcase nav_icon'></i><span
                            class="nav_name">Productos</span> </a>
                </div>
            </div>
            <a href="index.html" class="nav_link"><i class='bx bx-log-out nav_icon'></i><span
                    class="nav_name">SignOut</span> </a>
        </nav>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class=" d-lg-flex flex-lg-row d-flex flex-column-reverse bg-light mt-5">
                    <section id="products">
                        <div class="container py-3">
                            <div class="row">
                                <div class="col-lg-4 col-md-6 col-sm-10 offset-md-0 offset-sm-1 pt-lg-0 pt-4">
                                    <div class="card">
                                        <img class="card-img-top" src="https://images.promusic.cl/uploads/2020-07/bulletmustangbk2.jpg520x520.r.jpg">
                                        <div class="card-body">
                                            <h6 class="font-weight-bold pt-1">Guitarras Cuerpo Solido</h6>
                                            <div class="text-muted description">Guitarras Cuerpo Solido</div>
                                            <div class="d-flex align-items-center product"><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="far fa-star"></span></div>
                                            <div class="d-flex align-items-center justify-content-between pt-3">            
                                                <div class="btn btn-primary">Aceptar Orden</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-sm-10 offset-md-0 offset-sm-1 pt-md-0 pt-4">
                                    <div class="card">
                                        <img class="card-img-top" src="https://images-na.ssl-images-amazon.com/images/I/71Oo2ZKroFL._AC_SL1500_.jpg">
                                        <div class="card-body">
                                            <h6 class="font-weight-bold pt-1">Guitarras Eléctricas</h6>
                                            <div class="text-muted description">Guitarras Eléctricas</div>
                                            <div class="d-flex align-items-center product"><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="far fa-star"></span></div>
                                            <div class="d-flex align-items-center justify-content-between pt-3">
                                                <div class="btn btn-danger">Despachar</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-sm-10 offset-md-0 offset-sm-1 pt-lg-0 pt-4">
                                    <div class="card">
                                        <img class="card-img-top" src="https://www.maneimport.com/wp-content/uploads/2020/06/ibaanezgio.jpg">
                                        <div class="card-body">
                                            <h6 class="font-weight-bold pt-1">Bajos Cinco Cuerdas</h6>
                                            <div class="text-muted description">Bajos Cinco Cuerdas</div>
                                            <div class="d-flex align-items-center product"><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="far fa-star"></span></div>
                                            <div class="d-flex align-items-center justify-content-between pt-3">        
                                                <div class="btn btn-primary">Aceptar Orden</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-sm-10 offset-md-0 offset-sm-1 pt-lg-4 pt-4">
                                    <div class="card">
                                        <img class="card-img-top" src="http://laguiadelpiano.com/wp-content/uploads/2015/11/bluthner-grand.jpg">
                                        <div class="card-body">
                                            <h6 class="font-weight-bold pt-1">Piano de media cola</h6>
                                            <div class="text-muted description">Piano de media cola</div>
                                            <div class="d-flex align-items-center product"><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="far fa-star"></span></div>
                                            <div class="d-flex align-items-center justify-content-between pt-3">          
                                                <div class="btn btn-primary">Aceptar Orden</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-sm-10 offset-md-0 offset-sm-1 pt-lg-4 pt-4">
                                    <div class="card">
                                        <img class="card-img-top" src="https://www.sagaspercusion.cl/images/yamaha-rydeen-kit-22-hot-red-hardware.jpg">
                                        <div class="card-body">
                                            <h6 class="font-weight-bold pt-1">Baterías Acústicas</h6>
                                            <div class="text-muted description">Baterías Acústicas</div>
                                            <div class="d-flex align-items-center product"><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="far fa-star"></span></div>
                                            <div class="d-flex align-items-center justify-content-between pt-3">
                                                <div class="btn btn-danger">Despachar</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-sm-10 offset-md-0 offset-sm-1 pt-lg-4 pt-4">
                                    <div class="card">
                                        <img class="card-img-top" src="https://amplificadores.de/wp-content/uploads/2018/12/amplificador-cabezal.jpg">
                                        <div class="card-body">
                                            <h6 class="font-weight-bold pt-1">Amplificadores Cabezales</h6>
                                            <div class="text-muted description">Amplificadores Cabezales</div>
                                            <div class="d-flex align-items-center product"><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="far fa-star"></span></div>
                                            <div class="d-flex align-items-center justify-content-between pt-3">
                                                <div class="btn btn-danger">Despachar</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>
    
</body>

</html>

