<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MUSICPRO_APP._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
       <div class="row">
            <div class="col-lg-3 mb-lg-0 mb-2">
                <p> <a class="btn btn-primary w-100 d-flex align-items-center justify-content-between"
                        data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="true"
                        aria-controls="collapseExample"> <span class="fas fa-bars"><span class="ps-3">
                                Categorias</span></span> <span class="fas fa-chevron-down"></span> </a> </p>
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
                        <div class="dropdown w-100 my-lg-0 my-2"> <button
                                class="btn btn-secondary d-flex justify-content-between align-items-center"
                                type="button" id="dropdownMenu" data-bs-toggle="dropdown" aria-expanded="true"> <span
                                    class=" w-100 d-flex align-items-center"> <span class=" fw-lighter pe-2">Todas
                                        Las</span><span class="fw-lighter pe-3">
                                        Categorias</span> <span class="fas fa-chevron-down ms-auto"></span> </span>
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="dropdownMenu">
                                <li><a class="dropdown-item" href="#">Instrumentos de Cuerdas</a></li>
                                <li><a class="dropdown-item" href="#">Percusión</a></li>
                                <li><a class="dropdown-item" href="#">Amplificadores</a></li>
                                <li><a class="dropdown-item" href="#">Accesorios varios</a></li>
                            </ul>
                        </div>
                        <div class="d-flex align-items-center w-100 h-100 ps-lg-0 ps-sm-3"> <input class=" ps-md-0 ps-3"
                                type="text" placeholder="¿Qué Necesitas?">
                            <div class="btn btn-primary d-flex align-items-center justify-content-center"> SEARCH</div>
                        </div>
                    </div>
                    <div class="d-flex align-items-center ms-lg-auto mt-lg-0 mt-3 pe-2"> <span
                            class=" me-2 fas fa-phone bg-light rounded-circle"></span>
                        <div class="d-flex flex-column ps-2">
                            <p class="fw-bold">+562 2263 3763</p>
                        </div>
                    </div>
                </div>
                <div class=" d-lg-flex flex-lg-row d-flex flex-column-reverse bg-light mt-5">
                    <div class="p-5" id="2">
                        <p class="p-green">Instrumentos de Cuerdas</p>
                        <P class="fs-4 fw-bold">Guitarras</P>
                        <p class="fs-4 fw-bold">Guitarras Eléctricas</p>
                        <p class="text-muted mb-4">Recogida y entrega gratis disponibles</p>
                        <div class="btn btn-success px-4">COMPRAR AHORA</div>
                    </div>
                    <div id="1"> <img src="https://cdn.pixabay.com/photo/2014/04/03/10/01/guitar-309644_1280.png"
                            class="w-75 h-75" alt=""> </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="owl-carousel">
                    <div class="product-card">
                        <div class="product-badge text-danger"></div><a class="product-thumb" href="#"
                            data-abc="true"><img src="img/banner-jackson2.png" alt="Product"></a>
                        <h3 class="product-title"><a href="#" data-abc="true">Guitarra Electroacustica BELLATONO VITE S9V, charcoal burst</a></h3>
                        <h4 class="product-price">$299.990</h4>
                        <div class="product-buttons"> <button class="btn btn-outline-secondary btn-sm btn-wishlist"
                                data-toggle="tooltip" title="" data-original-title="Whishlist"><i
                                    class="fa fa-heart"></i></button> <button class="btn btn-primary d-flex align-items-center justify-content-center"
                                data-toast="" data-toast-type="success" data-toast-position="topRight"
                                data-toast-icon="icon-circle-check" data-toast-title="Product"
                                data-toast-message="successfuly added to cart!">Agregar al Carro</button> </div>
                    </div>
                    <div class="product-card">
                        <div class="product-badge text-danger">25% Off</div><a class="product-thumb" href="#"
                            data-abc="true"><img src="https://i.imgur.com/ILEU18M.jpg" alt="Product"></a>
                        <h3 class="product-title"><a href="#" data-abc="true">Dell Inspiration 4</a></h3>
                        <h4 class="product-price"> <del>$544.99</del>$444.99 </h4>
                        <div class="product-buttons"> <button class="btn btn-outline-secondary btn-sm btn-wishlist"
                                data-toggle="tooltip" title="" data-original-title="Whishlist"><i
                                    class="fa fa-heart"></i></button> <button class="btn btn-primary d-flex align-items-center justify-content-center"
                                data-toast="" data-toast-type="success" data-toast-position="topRight"
                                data-toast-icon="icon-circle-check" data-toast-title="Product"
                                data-toast-message="successfuly added to cart!">Agregar al Carro</button> </div>
                    </div>
                    <div class="product-card">
                        <div class="product-badge text-danger">28% Off</div><a class="product-thumb" href="#"
                            data-abc="true"><img src="https://i.imgur.com/2kePJmX.jpg" alt="Product"></a>
                        <h3 class="product-title"><a href="#" data-abc="true">Dell Xtreame 5</a></h3>
                        <h4 class="product-price"> <del>$244.99</del>$144.99 </h4>
                        <div class="product-buttons"> <button class="btn btn-outline-secondary btn-sm btn-wishlist"
                                data-toggle="tooltip" title="" data-original-title="Whishlist"><i
                                    class="fa fa-heart"></i></button> <button class="btn btn-primary d-flex align-items-center justify-content-center"
                                data-toast="" data-toast-type="success" data-toast-position="topRight"
                                data-toast-icon="icon-circle-check" data-toast-title="Product"
                                data-toast-message="successfuly added to cart!">Add to Cart</button> </div>
                    </div>
                    <div class="product-card">
                        <div class="product-badge text-danger">48% Off</div><a class="product-thumb" href=""
                            data-abc="true"><img src="https://i.imgur.com/yugQN69.jpg" alt="Product"></a>
                        <h3 class="product-title"><a href="" data-abc="true">HP Pro 4</a></h3>
                        <h4 class="product-price"> <del>$544.99</del>$344.99 </h4>
                        <div class="product-buttons"> <button class="btn btn-outline-secondary btn-sm btn-wishlist"
                                data-toggle="tooltip" title="" data-original-title="Whishlist"><i
                                    class="fa fa-heart"></i></button> <button class="btn btn-primary d-flex align-items-center justify-content-center"
                                data-toast="" data-toast-type="success" data-toast-position="topRight"
                                data-toast-icon="icon-circle-check" data-toast-title="Product"
                                data-toast-message="successfuly added to cart!">Add to Cart</button> </div>
                    </div>
                    <div class="product-card">
                        <div class="product-badge text-danger">29% Off</div><a class="product-thumb" href="#"
                            data-abc="true"><img src="https://i.imgur.com/JOpmFkw.png" alt="Product"></a>
                        <h3 class="product-title"><a href="#" data-abc="true">Microsoft surface 5</a></h3>
                        <h4 class="product-price"> <del>$644.99</del>$344.99 </h4>
                        <div class="product-buttons"> <button class="btn btn-outline-secondary btn-sm btn-wishlist"
                                data-toggle="tooltip" title="" data-original-title="Whishlist"><i
                                    class="fa fa-heart"></i></button> <button class="btn btn-primary d-flex align-items-center justify-content-center"
                                data-toast="" data-toast-type="success" data-toast-position="topRight"
                                data-toast-icon="icon-circle-check" data-toast-title="Product"
                                data-toast-message="successfuly added to cart!">Add to Cart</button> </div>
                    </div>
                    <div class="product-card">
                        <div class="product-badge text-danger">28% Off</div><a class="product-thumb" href="#"
                            data-abc="true"><img src="https://i.imgur.com/O02Owsf.jpg" alt="Product"></a>
                        <h3 class="product-title"><a href="#" data-abc="true">HP Elitebook 840</a></h3>
                        <h4 class="product-price"> <del>$844.99</del>$644.99 </h4>
                        <div class="product-buttons"> <button class="btn btn-outline-secondary btn-sm btn-wishlist"
                                data-toggle="tooltip" title="" data-original-title="Whishlist"><i
                                    class="fa fa-heart"></i></button> <button class="btn btn-primary d-flex align-items-center justify-content-center"
                                data-toast="" data-toast-type="success" data-toast-position="topRight"
                                data-toast-icon="icon-circle-check" data-toast-title="Product"
                                data-toast-message="successfuly added to cart!">Add to Cart</button> </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
