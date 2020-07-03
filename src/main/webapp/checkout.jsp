<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    
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
    <title>Checkout Form | Coffee Bean</title>
</head>

<body class="bg-light" ng-app="validationApp" ng-controller="mainController">
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container">
            <a class="navbar-brand text-white" href="#">
                <h6>Coffee </h6>
                <h7>Bean </h7>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="aboutus.jsp">About Us</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Order</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Header -->
    <header class="bg-primary py-5" id="Home"
        style="background-image: url('img/heder.jpg'); width: auto; height: 550px;">
        <div class="container h-100">
            <div class="row h-100">
                <div class="col-lg-12 mb-auto mt-auto">
                    <h1 class="display-4 text-white">Interested in our products?</h1>
                    <p class="lead mb-5 text-white">Please fill the checkout form down below!</p>
                </div>
            </div>
        </div>
    </header>

    <div class="container">
        <div class="row">
            <div class="col-md-4 order-md-2 mb-5 mt-4">
                <h4 class="d-flex justify-content-between align-items-center mb-3">
                    <span class="text-muted">Your cart</span>
                </h4>
                <ul class="list-group mb-3">
                    <li class="list-group-item d-flex justify-content-between lh-condensed">
                        <div>
                            <b>
                                <p class="my-0" id="printCoffee"></p>
                            </b>
                            <small>
                                <p class="my-0 text-muted" id="printQty"></p>
                            </small>
                        </div>
                        <p class="my-0 text-muted" id="printPrice"></p>
                    </li>
                    <li class="list-group-item d-flex justify-content-between">
                        <span>Total :</span>
                        <strong>
                            <p id="printTotal"></p>
                        </strong>
                    </li>
                </ul><br />

                <h4 class="mb-3">Payment</h4>
                <div class="d-block my-3">
                    <div class="custom-control custom-radio">
                        <input id="gopay" name="paymentMethod" type="radio" class="custom-control-input" checked
                            required>
                        <label class="custom-control-label" for="gopay">Go-Pay</label>
                    </div>
                    <div class="custom-control custom-radio">
                        <input id="ovo" name="paymentMethod" type="radio" class="custom-control-input" required>
                        <label class="custom-control-label" for="ovo">OVO</label>
                    </div>
                    <div class="custom-control custom-radio">
                        <input id="dana" name="paymentMethod" type="radio" class="custom-control-input" required>
                        <label class="custom-control-label" for="dana">Dana</label>
                    </div>
                </div>
            </div>

            <!-- Form -->
            <div class="col-md-8 mb-5 mt-4">
                <h4 class="mb-3">Checkout Form</h4>
                <form name="userForm" onsubmit="return(validate());" ng-submit="submitForm(userForm.$valid)" novalidate>
                    <div class="row">
                        <div class="col-md-6 mb-3"
                            ng-class="{ 'has-error' : userForm.firstname.$invalid && !userForm.firstname.$pristine }">
                            <label>First name</label>
                            <input type="text" class="form-control" name="firstname" id="firstname" ng-model="user.firstname"
                                ng-pattern="/^[a-zA-Z]*$/" placeholder="" value="" required>
                            <p ng-show="userForm.firstname.$invalid && !userForm.firstname.$pristine"
                                class="help-block">Your name is
                                required.</p>
                        </div>
                        <div class="col-md-6 mb-3"
                            ng-class="{ 'has-error' : userForm.lastname.$invalid && !userForm.lastname.$pristine }">
                            <label>Last name</label>
                            <input type="text" class="form-control" name="lastname" id="lastname" ng-model="user.lastname"
                                ng-pattern="/^[a-zA-Z]*$/" placeholder="" value="" required>
                            <p ng-show="userForm.lastname.$invalid && !userForm.lastname.$pristine" class="help-block">
                                You name is
                                required.</p>
                        </div>
                    </div>

                    <div class="mb-3"
                        ng-class="{ 'has-error' : userForm.username.$invalid && !userForm.username.$pristine }">
                        <label>Username</label>
                        <input type="text" class="form-control" name="username" id="username" ng-model="user.username"
                            ng-minlength="5" ng-maxlength="8" placeholder="" required>
                        <p ng-show="userForm.username.$error.minlength" class="help-block">Username is too short. Min 5
                            lenght</p>
                        <p ng-show="userForm.username.$error.maxlength" class="help-block">Username is too long. Max 8
                            lenght</p>
                    </div>

                    <div class="mb-3" ng-class="{ 'has-error' : userForm.email.$invalid && !userForm.email.$pristine }">
                        <label>Email</label>
                        <input type="email" class="form-control" name="email" id="email" ng-model="user.email" placeholder=""
                            required>
                        <p ng-show="userForm.email.$invalid && !userForm.email.$pristine" class="help-block">Enter a
                            valid email.</p>
                    </div>

                    <div class="mb-3"
                        ng-class="{ 'has-error' : userForm.address.$invalid && !userForm.address.$pristine }">
                        <label>Address</label>
                        <input type="text" class="form-control" name="address" id="address" ng-model="user.address" placeholder=""
                            required>
                        <p ng-show="userForm.address.$invalid && !userForm.address.$pristine" class="help-block">Enter a
                            valid address.</p>
                    </div>

                    <div class="row">
                        <div class="col-md-4 mb-3"
                            ng-class="{ 'has-error' : userForm.coffee.$invalid && !userForm.coffee.$pristine }">
                            <label>Coffee</label>
                            <select class="custom-select d-block w-100" name="coffeeItem" id="coffeeItem"
                                ng-model="user.coffee" required>
                                <option value="" selected>--</option>
                                <option value="Gayo">Gayo</option>
                                <option value="Luwak">Luwak</option>
                                <option value="Toraja">Toraja</option>
                                <option value="Java">Java</option>
                                <option value="Kintamani">Kintamani</option>
                                <option value="Flores">Flores</option>
                                <option value="Lanang">Lanang</option>
                                <option value="Wamena">Wamena</option>
                                <option value="Sidikalang">Sidikalang</option>
                                <p ng-show="userForm.coffee.$invalid && !userForm.coffee.$pristine" class="help-block">
                                    Enter a
                                    valid coffee.</p>
                            </select>

                        </div>
                        <div class="col-md-4 mb-3"
                            ng-class="{ 'has-error' : userForm.qty.$invalid && !userForm.qty.$pristine }">
                            <label for="qty">Quantity</label>
                            <select class="custom-select d-block w-100" name="qtyItem" id="qtyItem" ng-model="user.qty"
                                required>
                                <option value="" selected>--</option>
                                <option value="1">1 kg</option>
                                <option value="2">2 kg</option>
                                <option value="3">3 kg</option>
                                <p ng-show="userForm.qty.$invalid && !userForm.qty.$pristine" class="help-block">Enter a
                                    valid quantity.</p>
                            </select>
                        </div>

                        <div class="col-md-3 mb-3"
                            ng-class="{ 'has-error' : userForm.zip.$invalid && !userForm.zip.$pristine }">
                            <label for="zip">Zip code</label>
                            <input type="text" class="form-control" id="zip" ng-model="user.zip" ng-pattern="/^[0-9]*$/" 
                            ng-minlength="5" ng-maxlength="5" placeholder="ex: 10229"
                                required>
                            <p ng-show="userForm.zip.$invalid && !userForm.zip.$pristine" class="help-block">Enter a
                                valid zip code.</p>
                        </div>
                    </div>

                    <hr class="mb-3">
                    <button class="btn btn-primary btn-lg btn-block bg-primary" type="submit" 
                    id="addbtn" onclick="calculatePrice()">Continue to
                        Order</button>
                </form>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="py-4 text-center bg-dark">
        <div class="container">
            <p class="m-3 text-white">Copyright &copy; Coffee Bean Shop</p>
            <ul class="list-inline">
                <li class="list-inline-item">
                    <a href="#" style="color: white">Privacy Policy</a>
                </li>
                <li class="list-inline-item">
                    <a href="#" style="color: white">Terms of Use</a>
            </ul>
        </div>
    </footer>



    <!-- Bootstrap core JavaScript
================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/calculation.js"></script>
    <script src="https://code.angularjs.org/1.2.6/angular.js"></script>
    <script src="js/jsform.js"></script>    

</body>

</html>