<%@page import="java.util.Iterator"%>
<%@page import="model.dto.SistemaDTO"%>
<%@include  file="/template/validateLogin.jsp" %>
<%@include  file="/template/header.jsp" %>
<%@include  file="/template/nav.jsp" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>


  <body class="fixed-nav sticky-footer bg-dark" id="page-top">

<div class="content-wrapper">
      <div class="container-fluid">
        <div class="card mb-3">
          <div class="card-header">
            <i class="fa fa-table"></i>
            Listado de Sistemas
          </div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" width="100%" id="dataTable" cellspacing="0">
                  
                  <thead>
                  <th>Editar</th>
                  <th>Codigo CMDB</th>
                  <th>Nombre Sistema </th>
                  <th>Tipo Usuario</th>
                  <th>Tipo Contrasena</th>
                  <th>URL</th>
                  <th>Estado</th>
                   </thead>
                   <tbody>
                   <c:forEach items="${sistemas}" var="sistema">
                       <tr>
                           <td><a href="edit/${sistema.getIdSistema()}">Editar</a></td> 
                  <td> ${sistema.getCodigoCMDB() }</td> 
                  <td>${sistema.getNombreCorto()}</td> 
                
                <c:choose>
                    <c:when test = "${sistema.getTipoUsuario()==1}"><td>Aplicativo</td></c:when>
                    <c:when test = "${sistema.getTipoUsuario()==2}"><td>Base de datos </td></c:when>
                    <c:when test = "${sistema.getTipoUsuario()==3}"><td>Sistema Operativo</td></c:when>
                    <c:when test = "${sistema.getTipoUsuario()>=4}"><td>Perfil</td></c:when>
                </c:choose>
                  <td>${sistema.getTipoPass()}</td> 
                  <td><a href="${sistema.getURLSistema()}">${sistema.getURLSistema()}</a></td> 
                 <c:choose>
                  <c:when test = "${sistema.getEstado()==1}"><td>Activo</td></c:when>
                 <c:when test = "${sistema.getEstado()!=1}"><td>Inactivo</td></c:when>
                   </c:choose>
                       </tr>
                            </c:forEach> 
                </tbody>
              </table>
            </div>
          </div>
          <div class="card-footer small text-muted">
            Updated yesterday at 11:59 PM
          </div>
        </div>

      </div>
      <!-- /.container-fluid -->

    </div>
    <!-- /.content-wrapper -->
  </body
<%@include  file="/template/footer.jsp" %>
<%@include  file="/template/gotop.jsp" %>
<%@include  file="/template/logout.jsp" %>
