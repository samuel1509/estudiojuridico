<!doctype html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta content="width=device-width, initial-scale=1.0" name="viewport" />
        <title>Contacta con nosotros</title>
        <!-- bootstrap-->
        <link crossorigin="anonymous"
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            rel="stylesheet" />
        <!-- iconos bootstrap-->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css"
            rel="stylesheet" />
        <!--estilos propios-->
        <link href="../css/style.css" rel="stylesheet" />
    </head>

    <body>
        <header>
            <div class="logo">
                <img alt="logo de la empresa" src="../img/logo4.png" />
                <h1>Estudio Jurídico</h1>
            </div>
        </header>
        <nav>
            <div class="container-flex text-center">
                <div class="row">
                    <div class="col-sm-8 text-left mb-1">
                        <a class="btn btn-secondary"
                            href="../index.jsp#servicios"
                            role="button">
                            Servicios
                        </a>
                        <a class="btn btn-secondary"
                            href="../index.jsp#equipo"
                            role="button">
                            Equipo
                        </a>
                        <a class="btn btn-secondary"
                            href="../view/contacto.jsp#contacto"
                            role="button">
                            Contacto
                        </a>
                    </div>
                    
                    <div class="col-sm-4 text-right mb-1">
                        <a class="btn btn-secondary" href="../view/login.jsp" role="button"
                        ><i class="bi bi-door-open-fill">Acceder</i></a>                       
                    </div>
                 
                </div>	
            </div>
        </nav>
        <main class="container d-flex flex-sm-column flex-md-row">
            <!-- formulario contacto-->
            <section class="row" id="contacto">
                <article class="col-12">
                    <div class="card">
                        <div class="card-header text-center">
                            <h1 class="card-title">Contacta con nosotros</h1>
                            <h3 class="card-subtitle mb-2 text-muted">
                                Podemos
                                ayudarte legalmente!!
                            </h3>
                        </div>
                        <div class="card-body bg-dark-subtle">
                            <form class="row g-3" id="formContacto">
                                <div class="col-md-6">
                                    <label class="form-label" for="inputNombre">
                                        Nombre
                                        <span class="text-danger">*</span>
                                    </label>
                                    <input autofocus
                                        class="form-control"
                                        id="inputNombre"
                                        placeholder="Ingresa tu nombre"
                                        required
                                        type="text" />
                                </div>

                                <div class="col-md-6">
                                    <label class="form-label"
                                        for="inputApellido">
                                        Apellido
                                        <span class="text-danger">*</span>
                                    </label>
                                    <input class="form-control"
                                        id="inputApellido"
                                        placeholder="Ingresa tu apellido"
                                        required
                                        type="text" />
                                </div>

                                <div class="col-md-6">
                                    <label class="form-label" for="inputEmail">
                                        Email
                                        <span class="text-danger">*</span>
                                    </label>
                                    <input class="form-control"
                                        id="inputEmail"
                                        placeholder="Ingresa email de contacto"
                                        required
                                        type="email" />
                                </div>

                                <div class="col-md-6">
                                    <label class="form-label"
                                        for="inputTelefono">
                                        Telefono
                                        <span class="text-danger">*</span>
                                    </label>
                                    <input class="form-control"
                                        id="inputTelefono"
                                        placeholder="Ingresa telÃ©fono de contacto"
                                        required
                                        type="text" />
                                </div>

                                <div class="col-12">
                                    <label class="form-label" for="textMensaje">
                                        Escribenos
                                        <span class="text-danger">*</span>
                                    </label>
                                    <textarea class="form-control"
                                        id="textMensaje"
                                        maxlength="255"
                                        required
                                        rows="3"
                                        style="resize: none;"></textarea>
                                    <p>Máximo de 255 caracteres
                                        (<span class="text-danger"
                                            id="resultado">0</span>)
                                    </p>
                                </div>
                                <div class="col-12">
                                    <input class="btn btn-outline-primary"
                                        type="submit" id="btnEnviar"
                                        value="Enviar">
                                    
                                    <button class="btn btn-outline-secondary"
                                        type="button"
                                        id="btnLimpiar">
                                        Limpiar
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </article>
            </section>
            <!-- formulario contacto-->

            <!-- redes-->
            <aside class="col-md-1 col-sm-12 d-flex flex-md-column flex-sm-row justify-content-center">
                
                <a class="link-dark text-center"
                    href="https://www.facebook.com"
                    target="_blank">
                    <i
                        class="bi bi-facebook fs-3 mx-1 bg-dark-subtle rounded-circle">
                    </i>
                </a>

                <a class="link-dark text-center"
                    href="https://www.instagram.com"
                    target="_blank">
                    <i
                        class="bi bi-instagram fs-3 mx-1 bg-dark-subtle rounded-circle">
                    </i>
                </a>

                <a class="link-dark text-center"
                    href="https://www.whatsapp.com"
                    target="_blank">
                    <i
                        class="bi bi-whatsapp fs-3 mx-1 bg-dark-subtle rounded-circle">
                    </i>
                </a>
            </aside>
            <!-- redes-->
        </main>
        <footer class="row py-1 my-1">
            <div class="col d-flex align-items-center justify-content-center">
                <div class="col fs-6 mb-3 text-alig">
                    <a class="link-dark"
                        href="https://www.facebook.com"
                        target="_blank">
                        <i class="bi bi-facebook fs-4 mx-1"></i>
                    </a>
                    <a class="link-dark"
                        href="https://www.instagram.com"
                        target="_blank">
                        <i class="bi bi-instagram fs-4 mx-1"></i>
                    </a>
                    <a class="link-dark"
                        href="https://www.whatsapp.com"
                        target="_blank">
                        <i class="bi bi-whatsapp fs-4 mx-1"></i>
                    </a>

                    <span class="fst-italic text-dark">
                        Grupo: María Luján Acuña, Griselda Molina, Sandra Caseres Cano, 
                                Florencia Mammana, Cristian Aparicio
                         - Comisión #23564
                    </span>

                </div>
            </div>
        </footer>
        <script crossorigin="anonymous"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js">
    </script>
        <!-- funciones para la pagina contactos-->
        <script src="../js/contacto.js"></script>
    </body>
</html>
