<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Admin | Coffee Bean</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
    rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
  
  <!-- The core Firebase JS SDK is always required and must be listed first -->
<script src="https://www.gstatic.com/firebasejs/7.15.5/firebase-app.js"></script>
<script src="https://www.gstatic.com/firebasejs/7.15.5/firebase-database.js"></script>
<script src="https://www.gstatic.com/firebasejs/7.15.5/firebase-firestore.js"></script>
<!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#available-libraries -->
<script src="https://www.gstatic.com/firebasejs/7.15.5/firebase-analytics.js"></script>

<script>
  // Your web app's Firebase configuration
  var firebaseConfig = {
    apiKey: "api_key",
    authDomain: "auth_domain",
    databaseURL: "databaseURL",
    projectId: "projectId",
    storageBucket: "storageBucket",
    messagingSenderId: "messagingSenderId",
    appId: "appId",
    measurementId: "measurementId"
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
  firebase.analytics();
</script>
</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-login-image-back sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="#">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Coffee Bean</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item active">
        <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true"
          aria-controls="collapsePages">
          <i class="fas fa-fw fa-folder"></i>
          <span>Pages</span>
        </a>
        <div id="collapsePages" class="collapse show" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item active" href="#">Admin Page</a>
          </div>
        </div>
      </li>

      

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

          

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Admin</span>
                <img class="img-profile rounded-circle" src="https://images.unsplash.com/photo-1523247452367-d68f888d4b80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80">
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#">
                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                  Profile
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">
          <!-- Page Heading -->
          <h1 class="h3 mb-4 text-gray-800">Coffee Order List</h1>
          <form class="user">
            <div class="form-group row">
              <div class=" col-sm-6 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user" id="uid" placeholder="ID" readonly>
              </div>
              <div class="col-sm-6">
                <input type="text" class="form-control form-control-user" id="status" placeholder="Status">
              </div>
            </div>
            <div class="form-group row">
              <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user" id="firstname" placeholder="Firstname" readonly>
              </div>
              <div class="col-sm-6">
                <input type="text" class="form-control form-control-user" id="lastname" placeholder="Lastname" readonly>
              </div>
            </div>
            <div class="form-group row">
              <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user" id="username" placeholder="Username" readonly>
              </div>
              <div class="col-sm-6">
                <input type="text" class="form-control form-control-user" id="email" placeholder="Email" readonly>
              </div>
            </div>
            <div class="form-group row">
              <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user" id="address" placeholder="Address" readonly>
              </div>
              <div class="col-sm-6">
                <input type="number" class="form-control form-control-user" id="zip" placeholder="Zip Code" readonly>
              </div>
            </div>
            <div class="form-group row">
              <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user" id="coffeeItem" placeholder="Coffee" readonly>
              </div>
              <div class="col-sm-6">
                <input type="number" class="form-control form-control-user" id="qtyItem" placeholder="Quantity" readonly>
              </div>
            </div>
            <input type="button" id="updateBtn" value="Update" onclick="update_user();" class="btn btn-warning btn-user"/>
            <input type="button" value="Delete" onclick="delete_user();" class="btn btn-danger btn-user"/>
            <hr>
          </form>
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Information</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table id="tb_users" class="table table-bordered" width="100%" cellspacing="0">
                  <tr>
                    <td>#ID</td>
                    <td>Firstname</td>
                    <td>Lastname</td>
                    <td>Username</td>
                    <td>Email</td>
                    <td>Address</td>
                    <td>Zip Code</td>
                    <td>Coffee</td>
                    <td>Quantity</td>
                    <td>Status</td>
                  </tr>
                </table>
              </div>
            </div>
          </div>
        </div>
        <!-- /.container-fluid -->
      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Your Website 2020</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="loginadm.jsp">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

  <script>
  var tbUsers = document.getElementById('tb_users');
  var usersRef = firebase.database().ref('users/');
  var rowIndex = 1;

  usersRef.once('value', function (snapshot) {
      snapshot.forEach(function (childSnapshot) {
          var childKey = childSnapshot.key;
          var childData = childSnapshot.val();

          var row = tbUsers.insertRow(rowIndex);
          var cellId = row.insertCell(0);
          var cellFirstname = row.insertCell(1);
          var cellLastname = row.insertCell(2);
          var cellUsername = row.insertCell(3);
          var cellEmail = row.insertCell(4);
          var cellAddress = row.insertCell(5);
          var cellZipcode = row.insertCell(6);
          var cellCoffee = row.insertCell(7);
          var cellQuantity = row.insertCell(8);
          var cellStatus = row.insertCell(9);


          cellId.appendChild(document.createTextNode(childKey));
          cellFirstname.appendChild(document.createTextNode(childData.firstname));
          cellLastname.appendChild(document.createTextNode(childData.lastname));
          cellUsername.appendChild(document.createTextNode(childData.username));
          cellEmail.appendChild(document.createTextNode(childData.email));
          cellAddress.appendChild(document.createTextNode(childData.address));
          cellZipcode.appendChild(document.createTextNode(childData.zip));
          cellCoffee.appendChild(document.createTextNode(childData.coffeeItem));
          cellQuantity.appendChild(document.createTextNode(childData.qtyItem));
          cellStatus.appendChild(document.createTextNode(childData.status));
          rowIndex = rowIndex + 1;
      });
      
      var table = document.getElementById("tb_users");
	  var rows = table.getElementsByTagName("tr");
	  	for (i = 0; i < rows.length; i++) {
	  		var currentRow = table.rows[i];
	  		var createClickHandler = function(row) {
	  			return function() {
	  				var cell1 = row.getElementsByTagName("td")[0];
	  				var cell2 = row.getElementsByTagName("td")[1];
	  				var cell3 = row.getElementsByTagName("td")[2];
	  				var cell4 = row.getElementsByTagName("td")[3];
	  				var cell5 = row.getElementsByTagName("td")[4];
	  				var cell6 = row.getElementsByTagName("td")[5];
	  				var cell7 = row.getElementsByTagName("td")[6];
	  				var cell8 = row.getElementsByTagName("td")[7];
	  				var cell9 = row.getElementsByTagName("td")[8];
	  				var cell10 = row.getElementsByTagName("td")[9];
	  				
	  				var uid = cell1.innerHTML;
	  				var firstname = cell2.innerHTML;
	  				var lastname = cell3.innerHTML;
	  				var username = cell4.innerHTML;
	  				var email = cell5.innerHTML;
	  				var address = cell6.innerHTML;
	  				var zip = cell7.innerHTML;
	  				var coffeeItem = cell8.innerHTML;
	  				var qtyItem = cell9.innerHTML;
	  				var status = cell10.innerHTML;
	
	  				document.getElementById('uid').value = uid;
	  				document.getElementById('firstname').value = firstname;
	  				document.getElementById('lastname').value = lastname;
	  				document.getElementById('username').value = username;
	  				document.getElementById('email').value = email;
	  				document.getElementById('address').value = address;
	  				document.getElementById('zip').value = zip;
	  				document.getElementById('coffeeItem').value = coffeeItem;
	  				document.getElementById('qtyItem').value = qtyItem;
	  				document.getElementById('status').value = status;
	  			};
	  		};
	  		currentRow.onclick = createClickHandler(currentRow);
	  	}
	  });
  
  function update_user() {
	  	var uid = document.getElementById('uid').value;
	  	var firstname = document.getElementById('firstname').value;
	  	var lastname = document.getElementById('lastname').value;
	  	var username = document.getElementById('username').value;
	  	var email = document.getElementById('email').value;
	  	var address = document.getElementById('address').value;
	  	var zip = document.getElementById('zip').value;
	  	var coffeeItem = document.getElementById('coffeeItem').value;
	  	var qtyItem = document.getElementById('qtyItem').value;
	  	var status = document.getElementById('status').value;
	  	
	  	var data = {
	  		firstname : firstname,
	  		lastname : lastname,
	  		username : username,
	  		email : email,
	  		address : address,
	  		zip : zip,
	  		coffeeItem : coffeeItem,
	  		qtyItem : qtyItem,
	  		status : status
	  	}
	  	
	  	var updates = {};
	  	updates['/users/' + uid] = data;
	  	firebase.database().ref().update(updates);
	  	alert('Data Updated Successfully!');
	  	reload_page();
	  }

  function delete_user() {
  	var uid = document.getElementById('uid').value;
  	firebase.database().ref().child('/users/' + uid).remove();
  	alert('Data Deleted Successfully!');
  	reload_page();
  }
  function reload_page() {
  	window.location.reload();
  }
  </script>

</body>

</html>