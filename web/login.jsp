<%@include  file="template/header.jsp" %>
      <body class="bg-dark">
   <div class="container">

      <div class="card card-login mx-auto mt-5">
        <div class="card-header">
          Login
        </div>
        <div class="card-body">
            <form action="LoginServlet" method="post">
            <div class="form-group">
              <label for="user">Usuario de Dominio:</label>
              <input type="text" class="form-control" id="user"  name="user" aria-describedby="DomainHelp" placeholder="Ingrese usuario de dominio">
            </div>
            <div class="form-group">
              <label for="pwd">Contraseña:</label>
              <input type="password" class="form-control" id="pwd" name="pwd" placeholder="Ingrese contraseña de dominio">
            </div>
            <div class="form-group">
              <div class="form-check">
                <label class="form-check-label">
                  <input type="checkbox" class="form-check-input">
                  Remember Password
                </label>
              </div>
            </div>
            
            <input type="submit" class="btn btn-primary btn-block" value="Login">
          </form>
          <div class="text-center">
              <p>Contacte a HelpDesk para cambios y desbloques de contraseña.</p>
          </div>
        </div>
      </div>
    </div>
      </body>
<%@include  file="template/footer.jsp" %>

<!-- Logout Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Desea salir?</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
           Seleccione "Cerrar sesión" si está listo para finalizar su sesión actual.

          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            <a class="btn btn-primary" href="login.jsp">Salir</a>
          </div>
        </div>
      </div>
    </div>
