<%@ page import="com.example.mapitsp.model.event" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.mapitsp.dao.eventDAO" %>
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
        <h3 class="text-center">List of Events</h3>
        <hr>
        <div class="container text-left">
            <a href="#MainForm" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#ModalForm">Add New Event</a>
        </div>
        <br>
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>Actions</th>
                <th>ID</th>
                <th>Event Title</th>
                <th>Status</th>
                <th>Type</th>
                <th>Sport</th>
                <th>Location</th>
                <th>Gender</th>
                <th>Date</th>
                <th>Registration Code</th>
                <th>Link</th>
            </tr>
            </thead>
            <tbody>
            <%
                eventDAO eventdao = new eventDAO();
                List<event> eventList = eventdao.selectAllEvents(); %>
            <% for(event mainEvent : eventList) { %>

            <tr>
                <td><a onclick="" href="event-view.jsp?id=<%= mainEvent.getId()%>">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="deleteEvent?id=<%= mainEvent.getId()%>" onclick="return conf()" >Delete</a>
                    <a href="" onclick="">View</a></td>

                <td> <%= mainEvent.getId() %></td>
                <td> <%= mainEvent.getTitle() %></td>
                <td> <%= mainEvent.getStatus() %></td>
                <td> <%= mainEvent.getType() %></td>
                <td> <%= mainEvent.getSport() %></td>
                <td> <%= mainEvent.getLocation() %></td>
                <td> <%= mainEvent.getGender() %></td>
                <td> <%= mainEvent.getDate() %></td>
                <td> <%= mainEvent.getRegistrationCode() %></td>
                <td> <%= mainEvent.getLink() %></td>

            </tr>
            <% } %>
            </tbody>
        </table>

        <%  int id = 0;
            String strId = request.getParameter("id");
            if(strId != null) id = Integer.parseInt(strId);

            event myEvent;

            if(id != 0) myEvent = eventdao.selectEvent(id);
            else {
                myEvent = new event();
            }
        %>
    </div>
</div>


<div class="modal" id="ModalForm">
    <div class="modal-dialog">
        <div class="modal-content">


            <div class="modal-header">
                <h4 class="modal-title" id="ModalTitle">New Event</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>

            <form method="post" action="addEvent">
                <div class="modal-body">
                    <div class="container" id="MainForm">

                        <div class="row mb-2" id="div_form_id" style="display:flex;">
                            <label class="col-form-label col-md-3" for="id"> ID: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="id" id="id" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_name" style="display:flex;">
                            <label class="col-form-label col-md-3" for="name"> Title: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="name" id="name" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_status" style="display:flex;">
                            <label class="col-form-label col-md-3" for="status"> Status: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" placeholder="Open or Closed" type="text" name="status" id="status" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_type" style="display:flex;">
                            <label class="col-form-label col-md-3" for="type"> Type: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" placeholder="Individual or Group" type="text" name="type" id="type" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_location" style="display:flex;">
                            <label class="col-form-label col-md-3" for="location"> Location: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="location" id="location" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_sport" style="display:flex;">
                            <label class="col-form-label col-md-3" for="sport"> Sport: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="sport" id="sport" autocomplete="off"  />
                            </div>
                        </div>

                        <div class="row mb-2" id="div_form_gender" style="display:flex;">
                            <label class="col-form-label col-md-3" for="gender"> Gender: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="gender" id="gender" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_date" style="display:flex;">
                            <label class="col-form-label col-md-3" for="date"> Date: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="date" name="date" id="date" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_link" style="display:flex;">
                            <label class="col-form-label col-md-3" for="link"> Link: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="link" id="link" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="div_form_code" style="display:flex;">
                            <label class="col-form-label col-md-3" for="code"> Code: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="code" id="code" autocomplete="off"  />
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
                <h4 class="modal-title" id="EditModalTitle">Edit Submission</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>

            <form method="post" action="editEvent">
                <div class="modal-body">
                    <div class="container" id="EditMainForm">

                        <div class="row mb-2" id="edit_div_form_id" style="display:flex;">
                            <label class="col-form-label col-md-3" for="id"> ID: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="id" id="edit_id" value= "<%= myEvent.getId() %>" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="edit_div_form_title" style="display:flex;">
                            <label class="col-form-label col-md-3" for="name"> Title: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="name" id="edit_name" value= "<%= myEvent.getTitle() %>" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="edit_div_form_status" style="display:flex;">
                            <label class="col-form-label col-md-3" for="status"> Status: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="status" id="edit_status" value= "<%= myEvent.getStatus() %>" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="edit_div_form_type" style="display:flex;">
                            <label class="col-form-label col-md-3" for="type"> Type: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="type" id="edit_type" value= "<%= myEvent.getType() %>" autocomplete="off"  />
                            </div>
                        </div>
                        <div class="row mb-2" id="edit_div_form_location" style="display:flex;">
                            <label class="col-form-label col-md-3" for="location"> Location: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="location" id="edit_location" value= "<%= myEvent.getLocation() %>" autocomplete="off"  />
                            </div>
                        </div>

                        <div class="row mb-2" id="edit_div_form_sport" style="display:flex;">
                            <label class="col-form-label col-md-3" for="sport"> Sport: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="sport" id="edit_sport" value= "<%= myEvent.getSport() %>" autocomplete="off"  />
                            </div>
                        </div>

                        <div class="row mb-2" id="edit_div_form_gender" style="display:flex;">
                            <label class="col-form-label col-md-3" for="gender"> Gender: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="gender" id="edit_gender" value= "<%= myEvent.getGender() %>" autocomplete="off"  />
                            </div>
                        </div>

                        <div class="row mb-2" id="edit_div_form_date" style="display:flex;">
                            <label class="col-form-label col-md-3" for="date"> Date: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="date" name="date" id="edit_date" value= "<%= myEvent.getDate() %>" autocomplete="off"  />
                            </div>
                        </div>

                        <div class="row mb-2" id="edit_div_form_link" style="display:flex;">
                            <label class="col-form-label col-md-3" for="link"> Link: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="link" id="edit_link" value= "<%= myEvent.getLink() %>" autocomplete="off"  />
                            </div>
                        </div>

                        <div class="row mb-2" id="edit_div_form_code" style="display:flex;">
                            <label class="col-form-label col-md-3" for="code"> Registration Code: </label>
                            <div class="col-12 col-md">
                                <input class="form-control" type="text" name="code" id="edit_code" value= "<%= myEvent.getRegistrationCode() %>" autocomplete="off"  />
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
