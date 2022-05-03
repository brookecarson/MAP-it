<%@ page import="com.example.mapitsp.model.registration" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.mapitsp.dao.registrationDAO" %>
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
            <li><a href="event-view.jsp" class="nav-link" >Events</a></li>
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
        <h3 class="text-center">List of Registrations</h3>
        <hr>
        <div class="container text-left">
            <a href="#MainForm" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#ModalForm">Add New Registration</a>
        </div>
        <br>
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>Actions</th>
                <th>ID</th>
                <th>Team Name</th>
                <th>Captain Name</th>
                <th>Captain Email</th>
                <th>Captain Number</th>
                <th>Member One</th>
                <th>Member Two</th>
                <th>Member Three</th>
                <th>Member Four</th>
                <th>Member Five</th>
                <th>Member Six</th>
                <th>Member Seven</th>
                <th>Registration Code</th>
                <th>Registration Date</th>
            </tr>
            </thead>
            <tbody>
            <%
                registrationDAO regisdao = new registrationDAO();
                List<registration> registrationList = regisdao.selectAllRegistrations(); %>
            <% for(registration regis : registrationList) { %>

            <tr>
                <td><a onclick="" href="regis-view.jsp?id=<%= regis.getId()%>">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="deleteRegistration?id=<%= regis.getId()%>" onclick="return conf()" >Delete</a>

                <td> <%= regis.getId() %></td>
                <td> <%= regis.getGrp_name() %></td>
                <td> <%= regis.getCptn_name() %></td>
                <td> <%= regis.getCptn_email() %></td>
                <td> <%= regis.getCptn_number() %></td>
                <td> <%= regis.getMember_one() %></td>
                <td> <%= regis.getMember_two() %></td>
                <td> <%= regis.getMember_three() %></td>
                <td> <%= regis.getMember_four() %></td>
                <td> <%= regis.getMember_five() %></td>
                <td> <%= regis.getMember_six() %></td>
                <td> <%= regis.getMember_seven() %></td>
                <td> <%= regis.getRegistrationCode() %></td>
                <td> <%= regis.getDate() %></td>

            </tr>
            <% } %>
            </tbody>
        </table>

        <%  int id = 0;
            String strId = request.getParameter("id");
            if(strId != null) id = Integer.parseInt(strId);

            registration myRegistration;

            if(id != 0) myRegistration = regisdao.selectRegistration(id);
            else {
                myRegistration = new registration();
            }
        %>

    </div>
</div>


<div class="modal" id="ModalForm">
    <div class="modal-dialog">
        <div class="modal-content">


            <div class="modal-header">
                <h4 class="modal-title" id="ModalTitle">New Registration</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>

            <form method="post" onsubmit="return validateRegistration()" action="addRegistration" >
                <div class="modal-body">
                    <div class="container" id="MainForm">

                        <div class="row mb-2" id="div_form_id" style="display:flex;">
                            <label class="col-form-label col-md-3" for="id"> ID: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="id" id="id" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_grp_name" style="display:flex;">
                            <label class="col-form-label col-md-3" for="grp_name"> Group Name: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="grp_name" id="grp_name" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_cptn_name" style="display:flex;">
                            <label class="col-form-label col-md-3" for="cptn_name"> Captain Name: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="cptn_name" id="cptn_name" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_cptn_email" style="display:flex;">
                            <label class="col-form-label col-md-3" for="cptn_email"> Captain Email: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="cptn_email" id="cptn_email" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_cptn_number" style="display:flex;">
                            <label class="col-form-label col-md-3" for="cptn_number"> Captain Number: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="cptn_number" id="cptn_number" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_mem_one" style="display:flex;">
                            <label class="col-form-label col-md-3" for="mem_one"> Member One Name: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="mem_one" id="mem_one" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_mem_two" style="display:flex;">
                            <label class="col-form-label col-md-3" for="mem_two"> Member Two Name: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="mem_two" id="mem_two" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_mem_three" style="display:flex;">
                            <label class="col-form-label col-md-3" for="mem_three"> Member Three Name: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="mem_three" id="mem_three" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_mem_four" style="display:flex;">
                            <label class="col-form-label col-md-3" for="mem_four"> Member Four Name: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="mem_four" id="mem_four" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_mem_five" style="display:flex;">
                            <label class="col-form-label col-md-3" for="mem_five"> Member Five Name: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="mem_five" id="mem_five" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_mem_six" style="display:flex;">
                            <label class="col-form-label col-md-3" for="mem_six"> Member Six Name: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="mem_six" id="mem_six" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_mem_seven" style="display:flex;">
                            <label class="col-form-label col-md-3" for="mem_seven"> Member Seven Name: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="mem_seven" id="mem_seven" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_code" style="display:flex;">
                            <label class="col-form-label col-md-3" for="code"> Code: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="code" id="code" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_date" style="display:flex;">
                            <label class="col-form-label col-md-3" for="date"> Date: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="date" name="date" id="date" autocomplete="off"  />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="submit" value="submit" class="btn btn-success me-2" > Add </button>
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
                <h4 class="modal-title" id="EditModalTitle">Edit Submission</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>

            <form method="post" action="editRegistration">
                <div class="modal-body">
                    <div class="container" id="EditMainForm">

                        <div class="row mb-2" id="div_form_edit_id" style="display:flex;">
                            <label class="col-form-label col-md-3" for="id"> ID: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="id" id="edit_id" value= "<%= myRegistration.getId() %>" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_grp_edit_name" style="display:flex;">
                            <label class="col-form-label col-md-3" for="grp_name"> Group Name: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="grp_name" id="edit_grp_name" value= "<%= myRegistration.getGrp_name() %>" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_edit_cptn_name" style="display:flex;">
                            <label class="col-form-label col-md-3" for="cptn_name"> Captain Name: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="cptn_name" id="edit_cptn_name" value= "<%= myRegistration.getCptn_name() %>" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_edit_cptn_email" style="display:flex;">
                            <label class="col-form-label col-md-3" for="cptn_email"> Captain Email: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="cptn_email" id="edit_cptn_email" value= "<%= myRegistration.getCptn_email() %>" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_edit_cptn_number" style="display:flex;">
                            <label class="col-form-label col-md-3" for="cptn_number"> Captain Number: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="cptn_number" id="edit_cptn_number" value= "<%= myRegistration.getCptn_number() %>" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_edit_mem_one" style="display:flex;">
                            <label class="col-form-label col-md-3" for="mem_one"> Member One Name: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="mem_one" id="edit_mem_one" value= "<%= myRegistration.getMember_one() %>" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_edit_mem_two" style="display:flex;">
                            <label class="col-form-label col-md-3" for="mem_two"> Member Two Name: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="mem_two" id="edit_mem_two" value= "<%= myRegistration.getMember_two() %>" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_edit_mem_three" style="display:flex;">
                            <label class="col-form-label col-md-3" for="mem_three"> Member Three Name: </label>

                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="mem_three" id="edit_mem_three" value= "<%= myRegistration.getMember_three() %>" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_edit_mem_four" style="display:flex;">
                            <label class="col-form-label col-md-3" for="mem_four"> Member Four Name: </label>

                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="mem_four" id="edit_mem_four" value= "<%= myRegistration.getMember_four() %>" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_edit_mem_five" style="display:flex;">
                            <label class="col-form-label col-md-3" for="mem_five"> Member Five Name: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="mem_five" id="edit_mem_five" value= "<%= myRegistration.getMember_five() %>" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_edit_mem_six" style="display:flex;">
                            <label class="col-form-label col-md-3" for="mem_six"> Member Six Name: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="mem_six" id="edit_mem_six" value= "<%= myRegistration.getMember_six() %>" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_edit_mem_seven" style="display:flex;">
                            <label class="col-form-label col-md-3" for="mem_seven"> Member Seven Name: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="mem_seven" id="edit_mem_seven" value= "<%= myRegistration.getMember_seven() %>" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_edit_code" style="display:flex;">
                            <label class="col-form-label col-md-3" for="code"> Code: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="code" id="edit_code" value= "<%= myRegistration.getRegistrationCode() %>" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_edit_date" style="display:flex;">
                            <label class="col-form-label col-md-3" for="date"> Date: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="date" name="date" id="edit_date" value= "<%= myRegistration.getDate() %>" autocomplete="off"  />
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

<script src="js/admin_validate.js"></script>

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
