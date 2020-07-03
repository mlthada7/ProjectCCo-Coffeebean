<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description">
    <meta name="author">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <title>About us | Coffee Bean</title>
</head>

<body>
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
                    <li class="nav-item active">
                        <a class="nav-link" href="#">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="checkout.jsp">Order</a>
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
                    <h1 class="display-4 text-white">Get to know us better</h1>
                    <p class="lead mb-5 text-white">The best bean in the archipelago!</p>
                </div>
            </div>
        </div>
    </header>

    <!-- Page Content -->
    <div class="container">
        <div class="row">
            <div class="col-md-8 mb-4 mt-4 text-justify">
                <h2>About Our Store</h2>
                <p>Coffee Bean Shop is an online company with the cheapest and most trusted sales of coffee beans in
                    Indonesia.
                    This company is committed to selling selected and best coffee beans in Indonesia.</p>
                <p>Our company sells various kinds of coffee beans from various regions in the archipelago. Coffee beans
                    themselves are actually only two, Arabica and Robusta. But many process it to create a distinctive
                    coffee
                    flavor.</p>
                <br>
                <h2>Contact Us</h2>
                <address>
                    <strong>Coffee Bean Shop</strong>
                    <br>University of Indonesia
                    <br>Depok, 17600
                    <br>
                </address>
                <address>
                    <abbr title="Phone">Phone:</abbr>
                    (021) 8780999
                    <br>
                    <abbr title="Email" id="Coffee">Email:</abbr>
                    <a href="#">coffeebean@gmail.com</a>
                </address>
            </div>

            <div class="col-md-4 mb-5 mt-4">
                <h5>You can check our store location here!</h5>
                <!-- Disini akan di tambahkan Peta -->
                <div id="map" style="width: 100%;height: 400px;"></div>
            </div>

            <div class="col-md-12 mb-5">
                <h2>Coffee Bean Price List</h2>
                <table class="table table-bordered table-responsive">
                    <thead style="text-align: center;">
                        <tr>
                            <th>Qty</th>
                            <th><img src="img/beangayo.jpg" style="width: auto;height: 70px;">Gayo</th>
                            <th><img src="img/beantoraja.jpg" style="width: auto;height: 70px;">Toraja</th>
                            <th><img src="img/beankintamani.jpg" style="width: auto;height: 70px;">Kintamani</th>
                            <th><img src="img/beanflores.jpg" style="width: auto;height: 70px;">Flores</th>
                            <th><img src="img/beanjava.jpg" style="width: auto;height: 70px;">Java</th>
                            <th><img src="img/beanlanang.jpg" style="width: auto;height: 70px;">Lanang</th>
                            <th><img src="img/beanluwak.jpg" style="width: auto;height: 70px;">Luwak</th>
                            <th><img src="img/beanwamena.jpg" style="width: auto;height: 70px;">Wamena</th>
                            <th><img src="img/beansidikalang.jpg" style="width: auto;height: 70px;">Sidikalang</th>
                        </tr>
                    </thead>
                    <tbody></tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- /.container -->

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
    <script src="https://code.angularjs.org/1.2.6/angular.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.6.0/dist/leaflet.css">
    <script src="https://unpkg.com/leaflet@1.6.0/dist/leaflet.js"></script>

    <script src="jquery-3.4.1.js"></script>
    <script>
        $.getJSON("js/price.json", function (data) {
            var items = [];
            $.each(data, function (key, val) {
                items.push("<tr>");
                items.push("<td id='" + key + "'>" + val.qty + "</td>");
                items.push("<td id='" + key + "'>" + val.k1 + "</td>");
                items.push("<td id='" + key + "'>" + val.k2 + "</td>");
                items.push("<td id='" + key + "'>" + val.k3 + "</td>");
                items.push("<td id='" + key + "'>" + val.k4 + "</td>");
                items.push("<td id='" + key + "'>" + val.k5 + "</td>");
                items.push("<td id='" + key + "'>" + val.k6 + "</td>");
                items.push("<td id='" + key + "'>" + val.k7 + "</td>");
                items.push("<td id='" + key + "'>" + val.k8 + "</td>");
                items.push("<td id='" + key + "'>" + val.k9 + "</td>");
                items.push("</tr>");
            });
            $("<tbody/>", {
                "class": "mydata",
                html: items.join("")
            }).appendTo("table");
        });
    </script>

    <script>
        // koordinat dan zoom view peta
        // Koordinat yang digunakan berupa latitude dan longitude,
        //sebagai contoh saya menggunakan Koordinat CCIT
        var map = L.map('map').setView([-6.362141, 106.824923], 17);
        // ini adalah copyright, bisa dicopot tapi lebih baik kita hargai sang penciptanya ya :)
        L.tileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a>',
            subdomains: ['a', 'b', 'c'],
        }).addTo(map);
        // ini adalah koordinat marker
        L.marker([-6.362141, 106.824923]).addTo(map)
            .bindPopup("<b>Welcome to Coffee bean! :)</b>").openPopup();
        var popup = L.popup();

        function onMapClick(e) {
            popup
                .setLatLng(e.latlng)
                .setContent("Koordinat pada titik ini adalah " + e.latlng.toString())
                .openOn(map);
        }
        map.on('click', onMapClick);
    </script>

</body>

</html>