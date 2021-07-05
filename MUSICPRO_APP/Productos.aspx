<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Productos.aspx.cs" Inherits="MUSICPRO_APP.Productos" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
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
    <div class="container">
        <div class="row">
            <div class="col-lg-3 mb-lg-0 mb-2">
                <p>
                    <a class="btn btn-primary w-100 d-flex align-items-center justify-content-between"
                        data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="true"
                        aria-controls="collapseExample"><span class="fas fa-bars"><span class="ps-3">Categorias</span></span> <span class="fas fa-chevron-down"></span></a>
                </p>
                <div class="collapse show border" id="collapseExample">
                    <ul class="list-unstyled">
                        <li><a class="dropdown-item" href="#">Instrumentos de Cuerdas</a></li>
                        <li><a class="dropdown-item" href="#">Percusión</a></li>
                        <li><a class="dropdown-item" href="#">Amplificadores</a></li>
                        <li><a class="dropdown-item" href="#">Accesorios varios</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="d-lg-flex">
                    <div class="d-lg-flex align-items-center border">
                        <div class="dropdown w-100 my-lg-0 my-2">
                            <button
                                class="btn btn-secondary d-flex justify-content-between align-items-center"
                                type="button" id="dropdownMenu" data-bs-toggle="dropdown" aria-expanded="true">
                                <span
                                    class=" w-100 d-flex align-items-center"><span class=" fw-lighter pe-2">Todas
                                        Las</span><span class="fw-lighter pe-3">
                                        Categorias</span> <span class="fas fa-chevron-down ms-auto"></span></span>
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="dropdownMenu">
                                <li><a class="dropdown-item" href="#">Instrumentos de Cuerdas</a></li>
                                <li><a class="dropdown-item" href="#">Percusión</a></li>
                                <li><a class="dropdown-item" href="#">Amplificadores</a></li>
                                <li><a class="dropdown-item" href="#">Accesorios varios</a></li>
                            </ul>
                        </div>
                        <div class="d-flex align-items-center w-100 h-100 ps-lg-0 ps-sm-3">
                            <input class=" ps-md-0 ps-3"
                                type="text" placeholder="¿Qué Necesitas?">
                            <div class="btn btn-primary d-flex align-items-center justify-content-center">SEARCH</div>
                        </div>
                    </div>
                    <div class="d-flex align-items-center ms-lg-auto mt-lg-0 mt-3 pe-2">
                        <span
                            class=" me-2 fas fa-phone bg-light rounded-circle"></span>
                        <div class="d-flex flex-column ps-2">
                            <p class="fw-bold">+562 2263 3763</p>
                            <p class="text-muted">suporte 24/7</p>
                        </div>
                    </div>
                </div>
                <div class=" d-lg-flex flex-lg-row d-flex flex-column-reverse bg-light mt-5">
                    <section id="products">
                        <div class="container py-3">
                            <div class="row">
                                <div class="col-lg-4 col-md-6 col-sm-10 offset-md-0 offset-sm-1">
                                    <div class="card">
                                        <img class="card-img-top" src="https://www.freepnglogos.com/uploads/cucumber-png/cucumber-png-image-purepng-transparent-png-26.png">
                                        <div class="card-body">
                                            <h6 class="font-weight-bold pt-1">Product title</h6>
                                            <div class="text-muted description">Space for small product description</div>
                                            <div class="d-flex align-items-center justify-content-between pt-3">
                                                <div class="d-flex flex-column">
                                                    <div class="h6 font-weight-bold">36.99 USD</div>
                                                </div>
                                                <div class="btn btn-primary">Comprar Ahora</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-sm-10 offset-md-0 offset-sm-1 pt-md-0 pt-4">
                                    <div class="card">
                                        <img class="card-img-top" src="https://www.freepnglogos.com/uploads/carrot-png/carrot-mint-with-turmeric-chia-equine-pure-delights-12.png">
                                        <div class="card-body">
                                            <h6 class="font-weight-bold pt-1">Product title</h6>
                                            <div class="text-muted description">Space for small product description</div>
                                            <div class="d-flex align-items-center product"><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="far fa-star"></span></div>
                                            <div class="d-flex align-items-center justify-content-between pt-3">
                                                <div class="d-flex flex-column">
                                                    <div class="h6 font-weight-bold">36.99 USD</div>
                                                    <div class="text-muted rebate">48.56</div>
                                                </div>
                                                <div class="btn btn-primary">Comprar Ahora</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-sm-10 offset-md-0 offset-sm-1 pt-lg-0 pt-4">
                                    <div class="card">
                                        <img class="card-img-top" src="https://www.freepnglogos.com/uploads/tomato-png/tomato-bunch-fresh-tomatoes-png-image-pngpix-24.png">
                                        <div class="card-body">
                                            <h6 class="font-weight-bold pt-1">Product title</h6>
                                            <div class="text-muted description">Space for small product description</div>
                                            <div class="d-flex align-items-center product"><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="far fa-star"></span></div>
                                            <div class="d-flex align-items-center justify-content-between pt-3">
                                                <div class="d-flex flex-column">
                                                    <div class="h6 font-weight-bold">36.99 USD</div>
                                                    <div class="text-muted rebate">48.56</div>
                                                </div>
                                                <div class="btn btn-primary">Comprar Ahora</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-sm-10 offset-md-0 offset-sm-1 pt-lg-4 pt-4">
                                    <div class="card">
                                        <img class="card-img-top" src="https://www.freepnglogos.com/uploads/grapes-png/grapes-grape-red-transparent-png-stickpng-5.png">
                                        <div class="card-body">
                                            <h6 class="font-weight-bold pt-1">Product title</h6>
                                            <div class="text-muted description">Space for small product description</div>
                                            <div class="d-flex align-items-center product"><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="far fa-star"></span></div>
                                            <div class="d-flex align-items-center justify-content-between pt-3">
                                                <div class="d-flex flex-column">
                                                    <div class="h6 font-weight-bold">36.99 USD</div>
                                                    <div class="text-muted rebate">48.56</div>
                                                </div>
                                                <div class="btn btn-primary">Comprar Ahora</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-sm-10 offset-md-0 offset-sm-1 pt-lg-4 pt-4">
                                    <div class="card">
                                        <img class="card-img-top" src="https://www.freepnglogos.com/uploads/cucumber-png/cucumber-png-image-purepng-transparent-png-26.png">
                                        <div class="card-body">
                                            <h6 class="font-weight-bold pt-1">Product title</h6>
                                            <div class="text-muted description">Space for small product description</div>
                                            <div class="d-flex align-items-center product"><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="far fa-star"></span></div>
                                            <div class="d-flex align-items-center justify-content-between pt-3">
                                                <div class="d-flex flex-column">
                                                    <div class="h6 font-weight-bold">36.99 USD</div>
                                                    <div class="text-muted rebate">48.56</div>
                                                </div>
                                                <div class="btn btn-primary">Comprar Ahora</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-sm-10 offset-md-0 offset-sm-1 pt-lg-4 pt-4">
                                    <div class="card">
                                        <img class="card-img-top" src="https://www.freepnglogos.com/uploads/watermelon-png/watermelon-gea-products-2.png">
                                        <div class="card-body">
                                            <h6 class="font-weight-bold pt-1">Product title</h6>
                                            <div class="text-muted description">Space for small product description</div>
                                            <div class="d-flex align-items-center product"><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="far fa-star"></span></div>
                                            <div class="d-flex align-items-center justify-content-between pt-3">
                                                <div class="d-flex flex-column">
                                                    <div class="h6 font-weight-bold">36.99 USD</div>
                                                    <div class="text-muted rebate">48.56</div>
                                                </div>
                                                <div class="btn btn-primary">Comprar Ahora</div>
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


</asp:Content>
