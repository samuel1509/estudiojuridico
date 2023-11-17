<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Estudio Jurídico Acuña y Asoc</title>
    <link rel="icon" type="image/x-icon" href="img/logo4.png" />

    <!-- bootstrap-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
   
    <!-- iconos bootstrap-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" />
    
    <!--estilos propios-->
    <link rel="stylesheet" href="css/style.css" />
</head>

<body>
    <header>
        <div class="logo">
            <img src="img/logo4.png" alt="logo de la empresa Acuña" />
            <h1>Estudio Jurídico</h1>
        </div>
    </header>
    <!-- <nav>
        <div class="nav-principal">
            <div class="nav-esc">
                <a href="#servicios">Servicios</a>
                <a href="#equipo">Equipo</a>
                <a href="#contacto">Contacto</a>
            </div>
            <div class="nav-portal">
                <a href="jus.html" target="_blank">Valor actual del Jus arancelario</a>
            </div>
        </div>
    </nav> -->
    
    <nav>
        <div class="container-flex text-center">
            <div class="row">
                <div class="col-sm-8 text-left mb-1">
                    <a class="btn btn-secondary" href="#servicios" role="button">Servicios</a>
                    <a class="btn btn-secondary" href="#equipo" role="button">Equipo</a>
                    <a class="btn btn-secondary" href="paginas/contacto.jsp#contacto" role="button">Contacto</a>
                </div>
                <div class="col-sm-4 text-right mb-1">
                    
                    <a class="btn btn-secondary" href="paginas/login.jsp" role="button"
                  ><i class="bi bi-person-square">  Login</i></a>
                  

                </div>
            </div>
        </div>
    </nav>

    <main class="container d-flex">
        <div class=" row d-flex flex-sm-column flex-md-row">
            <section class="col-11 col-sm-12 servicios" id="servicios">
                <!--Los class van siempre con minuscula-->
                <div class="container-fluid mt-2">
                    <h4>Servicios</h4>
                </div>
                <div class="container-fluid mt-3">
                    <div class="row g-3">
                        <div class="col-12 col-md-6 col-lg-3">
                            <div class="card">
                                <img src="img/familiacard.jpeg" alt="familia" class="card-img-top">
                                <div class="card-body">
                                    <h5 class="card-title">Derecho de familia</h5>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6 col-lg-3">
                            <div class="card">
                                <img src="img/foto3.jpg" alt="familia" class="card-img-top">
                                <div class="card-body">
                                    <h5 class="card-title">Derecho Penal</h5>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6 col-lg-3">
                            <div class="card">
                                <img src="img/derecholaboral.jpg" alt="familia" class="card-img-top">
                                <div class="card-body">
                                    <h5 class="card-title">Derecho Laboral</h5>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6 col-lg-3">
                            <div class="card">
                                <img src="img/administrativo2.jpg" alt="familia" class="card-img-top">
                                <div class="card-body">
                                    <h5 class="card-title">Derecho Administrativo</h5>
                                    
                                </div>
                            </div>
                        </div>
            
                    </div>
                </div>
            
            </section>
            <section class="col-11 equipo" id="equipo">
                <div class="contenedor">
                    <h2>Nuestro Equipo</h2>
                    <div class="fila-equipo">
                        <div class="col-equipo">
                            <img src="img/perfilnuevo.png" alt />
                            <h3>Dra. Camila</h3>
                            <p>Abogada graduada de la UNLP especializada en
                                Derecho
                                Laboral</p>
                        </div>
                        <div class="col-equipo">
                            <img src="img/perfilnuevo.png" alt />
                            <h3>Dra. Vanesa</h3>
                            <p>
                                Abogada graduada de la UNLP especializada en
                                Derecho
                                de Familia
                            </p>
                        </div>
                        <div class="col-equipo">
                            <img src="img/perfil.jpg" alt />
                            <h3>Dr. Jorge</h3>
                            <p>Abogado graduado de la UCALP especializado en
                                derecho
                                Penal</p>
                        </div>
                        <div class="col-equipo">
                            <img src="img/perfil.jpg" alt />
                            <h3>Dr. Pedro</h3>
                            <p>
                                Abogado graduado de la UNLP especializado en
                                Derecho
                                Administrativo
                            </p>

                        </div>
                    </div>
                </div>
            </section>
        </div>

        <!-- redes-->
        <aside class="col-md-1 col-sm-12 d-flex flex-md-column flex-sm-row justify-content-center">

            <a class="link-dark text-center" href="https://www.facebook.com" target="_blank">
                <i class="bi bi-facebook fs-3 mx-1 bg-dark-subtle rounded-circle"></i>
            </a>

            <a class="link-dark text-center" href="https://www.instagram.com" target="_blank">
                <i class="bi bi-instagram fs-3 mx-1 bg-dark-subtle rounded-circle"></i></a>

            <a class="link-dark text-center" href="https://www.whatsapp.com" target="_blank">
                <i class="bi bi-whatsapp fs-3 mx-1 bg-dark-subtle rounded-circle"></i></a>
        </aside>
      
    </main>

    <footer class="row row py-1 my-1">
        <div class="col d-flex align-items-center justify-content-center">
            <div class="fs-6 mb-3 text-alig">
                <a class="link-dark" class="link-dark" href="https://www.facebook.com" target="_blank">
                    <i class="bi bi-facebook fs-4 mx-1"></i></a>
                <a class="link-dark" href="https://www.instagram.com" target="_blank">
                    <i class="bi bi-instagram fs-4 mx-1"></i></a>
                <a class="link-dark" href="https://www.whatsapp.com" target="_blank">
                    <i class="bi bi-whatsapp fs-4 mx-1"></i></a>
                    <span class="fst-italic text-dark">
                        Grupo: María Luján Acuña, Griselda Molina, Sandra Caseres Cano, 
                            Florencia Mammana, Cristian Aparicio - Comisión #23564
                    </span>
            </div>
        </div>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>