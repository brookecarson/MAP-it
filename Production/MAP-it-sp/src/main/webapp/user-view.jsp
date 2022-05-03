<%@ page import="com.example.mapitsp.model.user" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.mapitsp.dao.userDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
  <title>Admin View</title>
  <link rel="shortcut icon" href="images/MAP-logo.jpg">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css" />

</head>
<body>

<header>
  <nav class="navbar navbar-expand-md navbar-dark" style="background-color: darkgreen">
    <div>
      <a href="index.jsp" class="navbar-brand"> ISB MAP </a>
    </div>

    <ul class="navbar-nav">
      <li><a href="admin-test.jsp" class="nav-link">Submissions</a></li>
    </ul>
    <ul class="navbar-nav">
      <li><a href="event-view.jsp" class="nav-link">Events</a></li>
    </ul>
    <ul class="navbar-nav">
      <li><a href="regis-view.jsp" class="nav-link">Registrations</a></li>
    </ul>
    <ul class="navbar-nav">
      <li><a href="user-view.jsp" class="nav-link">Users</a></li>
    </ul>

  </nav>
</header>
<br>


<div class="row">

    <div class="container">
      <h3 class="text-center">List of Users</h3>
      <hr>
      <div class="container text-left">
        <a href="#MainForm" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#ModalForm">Add New User</a>
      </div>
      <br>
      <table class="table table-bordered">
        <thead>
        <tr>
          <th>Actions</th>
          <th>ID</th>
          <th>Name</th>
          <th>Email</th>
          <th>Role</th>
        </tr>
        </thead>
        <tbody>
            <%
              userDAO userdao = new userDAO();
              List<user> userList = userdao.selectAllUsers(); %>
            <% for(user mainUser : userList) { %>

              <tr>
                  <td><a onclick="" href="user-view.jsp?id=<%= mainUser.getId()%>">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="deleteUser?id=<%= mainUser.getId()%>" onclick="return conf()" > Delete</a></td>

                  <td> <%= mainUser.getId() %></td>
                    <td> <%= mainUser.getName() %></td>
                    <td> <%= mainUser.getEmail() %></td>
                    <td> <%= mainUser.getRole() %></td>

              </tr>
              <% } %>
        </tbody>
      </table>

      <%  int id = 0;
        String strId = request.getParameter("id");
        if(strId != null) id = Integer.parseInt(strId);

        user main;

        if(id != 0) main = userdao.selectUser(id);
        else {
          main = new user();
        }
      %>
    </div>
</div>

<div class="modal" id="ModalForm">
  <div class="modal-dialog">
    <div class="modal-content">


      <div class="modal-header">
        <h4 class="modal-title" id="ModalTitle">New User</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>

      <form method="post" action="addUser">
        <div class="modal-body">
          <div class="container" id="MainForm">

            <div class="row mb-2" id="div_form_id" style="display:flex;">
              <label class="col-form-label col-md-3" for="id"> ID: </label>
              <div class="col-12 col-md">
                <input class="form-control" type="text" name="id" id="id" autocomplete="off"  />
              </div>
            </div>
            <div class="row mb-2" id="div_form_name" style="display:flex;">
              <label class="col-form-label col-md-3" for="name"> Name: </label>
              <div class="col-12 col-md">
                <input class="form-control" type="text" name="name" id="name" autocomplete="off"  />
              </div>
            </div>
            <div class="row mb-2" id="div_form_email" style="display:flex;">
              <label class="col-form-label col-md-3" for="email"> Email: </label>
              <div class="col-12 col-md">
                <input class="form-control" type="email" name="email" id="email" autocomplete="off"  />
              </div>
            </div>
            <div class="row mb-2" id="div_form_password" style="display:flex;">
              <label class="col-form-label col-md-3" for="password"> Password: </label>
              <div class="col-12 col-md">
                <input class="form-control" type="password" name="password" id="password" autocomplete="off"  />
              </div>
            </div>
            <div class="row mb-2" id="div_form_number" style="display:flex;">
              <label class="col-form-label col-md-3" for="role"> Role: </label>
              <div class="col-12 col-md">
                <input class="form-control" type="text" name="role" id="role" autocomplete="off"  />
              </div>
            </div>
          </div>
        </div>

        <div class="modal-footer">
          <button type="submit" class="btn btn-success me-2" > Add </button>
          <button type="reset" class="btn btn-warning me-2" > Clear </button>
          <button type="button" class="btn btn-danger me-2" data-bs-dismiss="modal">Cancel</button>
        </div>

      </form>
    </div>
  </div>
</div>

<div class="modal" id="EditModalForm">
  <div class="modal-dialog">
    <div class="modal-content">


      <div class="modal-header">
        <h4 class="modal-title" id="EditModalTitle">Edit User</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>

      <form method="post" action="editUser">
        <div class="modal-body">
          <div class="container" id="EditMainForm">

            <div class="row mb-2" id="edit_div_form_id" style="display:flex;">
              <label class="col-form-label col-md-3" for="id"> ID: </label>
              <div class="col-12 col-md">
                <input class="form-control" type="text" name="id" id="edit_id" value= "<%= main.getId() %>" autocomplete="off"  />
              </div>
            </div>
            <div class="row mb-2" id="edit_div_form_name" style="display:flex;">
              <label class="col-form-label col-md-3" for="name"> Name: </label>
              <div class="col-12 col-md">
                <input class="form-control" type="text" name="name" id="edit_name" value= "<%= main.getName() %>" autocomplete="off"  />
              </div>
            </div>
            <div class="row mb-2" id="edit_div_form_email" style="display:flex;">
              <label class="col-form-label col-md-3" for="email"> Email: </label>
              <div class="col-12 col-md">
                <input class="form-control" type="email" name="email" id="edit_email" value= "<%= main.getEmail() %>" autocomplete="off"  />
              </div>
            </div>
            <div class="row mb-2" id="edit_div_form_password" style="display:flex;">
              <label class="col-form-label col-md-3" for="password"> Password: </label>
              <div class="col-12 col-md">
                <input class="form-control" type="password" name="password" id="edit_password" value= "<%= main.getPassword() %>" autocomplete="off"  />
              </div>
            </div>
            <div class="row mb-2" id="edit_div_form_number" style="display:flex;">
              <label class="col-form-label col-md-3" for="role"> Role: </label>
              <div class="col-12 col-md">
                <input class="form-control" type="text" name="role" id="edit_role" value= "<%= main.getRole() %>" autocomplete="off"  />
              </div>
            </div>
          </div>
        </div>

        <div class="modal-footer">
          <button type="submit" class="btn btn-success me-2" > Save </button>
          <button type="reset" class="btn btn-warning me-2"> Reset </button>
          <button type="button" class="btn btn-danger me-2" data-bs-dismiss="modal">Cancel</button>
        </div>

      </form>
    </div>
  </div>
</div>

<script>
  function conf(){
    return window.confirm('Are you sure you want to delete?');
  }

  <% if (id != 0)  {

       %>
  var myModal = new bootstrap.Modal(document.getElementById('EditModalForm'), {})
  myModal.toggle() <% } %>

</script>


</body>


</html>