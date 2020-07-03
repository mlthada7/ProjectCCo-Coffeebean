<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <title>Coffee Bean</title>
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
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="aboutus.jsp">About Us</a>
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
                    <h1 class="display-4 text-white">Welcome to our store! <br>Choose your bean here</h1>
                    <p class="lead mb-3 text-white">The best bean in the archipelago!</p>
                </div>
            </div>
        </div>
    </header>

    <!-- Page Content -->
    <div class="container">
        <div class="row">
            <div class="col-md-8 mb-3 mt-4">
                <h2>Our Coffee Bean</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 mb-5">
                <div class="card h-100">
                    <img class="card-img-top" src="img/beangayo.jpg">
                    <div class="card-body">
                        <h4 class="card-title">Gayo</h4>
                        <p class="card-text text-justify">Gayo coffee is a type of Arabica coffee that is well known in
                            various parts
                            of the
                            world. This coffee is produced in central Aceh in precisely the Gayo plateau. On high land..
                        </p>
                    </div>
                    <div class="card-footer">
                        <button type="button" class="btn btn-primary" data-toggle="modal"
                            data-target="#Gayo">More!</button>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-5">
                <div class="card h-100">
                    <img class="card-img-top" src="img/beantoraja.jpg" alt="">
                    <div class="card-body">
                        <h4 class="card-title">Toraja</h4>
                        <p class="card-text text-justify">Toraja coffee is produced from the South Sulawesi region in
                            the Toraja
                            mountains. The Toraja Mountains are very special, the land grows well. The proof is that
                            the..</p>
                    </div>
                    <div class="card-footer">
                        <button type="button" class="btn btn-primary" data-toggle="modal"
                            data-target="#Toraja">More!</button>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-5">
                <div class="card h-100">
                    <img class="card-img-top" src="img/beankintamani.jpg" alt="">
                    <div class="card-body">
                        <h4 class="card-title">Kintamani</h4>
                        <p class="card-text text-justify">In addition to tourist charm that is very famous in the world.
                            Bali also
                            has hidden gems which are the best coffee producers in the world. In the Kintamani area,
                            Bali..</p>
                    </div>
                    <div class="card-footer">
                        <button type="button" class="btn btn-primary" data-toggle="modal"
                            data-target="#Kintamani">More!</button>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-5">
                <div class="card h-100">
                    <img class="card-img-top" src="img/beanflores.jpg" alt="">
                    <div class="card-body">
                        <h4 class="card-title">Flores</h4>
                        <p class="card-text text-justify">In addition to having its natural beauty, Flores also has a
                            typical Flores
                            coffee which is found in the Ngada plain in East Nusa Tenggara. This area of ​​Flores also..
                        </p>
                    </div>
                    <div class="card-footer">
                        <button type="button" class="btn btn-primary" data-toggle="modal"
                            data-target="#Flores">More!</button>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-5">
                <div class="card h-100">
                    <img class="card-img-top" src="img/beanjava.jpg" alt="">
                    <div class="card-body">
                        <h4 class="card-title">Java</h4>
                        <p class="card-text text-justify">Even though there are many types of coffee, Java coffee is
                            still the main
                            choice for Dutch officials. Of the many copies in the archipelago, many people still fall..
                        </p>
                    </div>
                    <div class="card-footer">
                        <button type="button" class="btn btn-primary" data-toggle="modal"
                            data-target="#Java">More!</button>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-5">
                <div class="card h-100">
                    <img class="card-img-top" src="img/beanlanang.jpg" alt="">
                    <div class="card-body">
                        <h4 class="card-title">Lanang</h4>
                        <p class="card-text text-justify">The creation of the word lanang coffee is because the coffee
                            beans are
                            round, single and there is no middle hemisphere as in coffee beans in general. The word..
                        </p>
                    </div>
                    <div class="card-footer">
                        <button type="button" class="btn btn-primary" data-toggle="modal"
                            data-target="#Lanang">More!</button>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-5">
                <div class="card h-100">
                    <img class="card-img-top" src="img/beanluwak.jpg" alt="">
                    <div class="card-body">
                        <h4 class="card-title">Luwak</h4>
                        <p class="card-text text-justify">When we discuss coffee in the archipelago, it doesn't seem
                            complete if we
                            don't know this one coffee. This coffee is the target of coffee lovers around the world.
                            Very..</p>
                    </div>
                    <div class="card-footer">
                        <button type="button" class="btn btn-primary" data-toggle="modal"
                            data-target="#Luwak">More!</button>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-5">
                <div class="card h-100">
                    <img class="card-img-top" src="img/beanwamena.jpg" alt="">
                    <div class="card-body">
                        <h4 class="card-title">Wamena</h4>
                        <p class="card-text text-justify">Wamena coffee thrives in the mountains of Wamena and is one of
                            Indonesia's
                            coffee producers. Having a mild aroma and having a fragrant characteristic in each..</p>
                    </div>
                    <div class="card-footer">
                        <button type="button" class="btn btn-primary" data-toggle="modal"
                            data-target="#Wamena">More!</button>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-5">
                <div class="card h-100">
                    <img class="card-img-top" src="img/beansidikalang.jpg" alt="">
                    <div class="card-body">
                        <h4 class="card-title">Sidikalang</h4>
                        <p class="card-text text-justify">Sidikalang coffee is the best coffee in Indonesia, next with a
                            good taste.
                            This coffee is very popular with true coffee lovers from both the archipelago..</p>
                    </div>
                    <div class="card-footer">
                        <button type="button" class="btn btn-primary" data-toggle="modal"
                            data-target="#Sidikalang">More!</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->
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
        <!-- /.container -->
    </footer>


    <!-- Modal -->
    <div class="modal fade" id="Gayo" tabindex="0" role="dialog">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h3>Gayo</h3>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body text-center">
                    <img class="card-img-top" src="img/beangayo.jpg" style="width:300px; height: auto; ">
                    <p class="text-justify" style="margin-top: 10px;">
                        Gayo coffee is a type of Arabica coffee that is well known in various parts of the world. This
                        coffee is produced in central Aceh in precisely the Gayo plateau. It is on the gayo highlands
                        that this is the center of plantations and the best coffee production in the world. According to
                        international studies, Gayo Arabica coffee has the most distinctive and preferred taste compared
                        to Arabica coffee grown elsewhere.
                        Gayo coffee has a high taste, which is a delicious and distinctive aroma, lower acidity and
                        strong
                        bitterness. With a variety of pleasures and distinctive aroma by gayo arabica coffee, the
                        international world
                        presents Fair Trade Certified as a form of appreciation for gayo arabica coffee as the best
                        coffee in the
                        world. Gayo arabica coffee has now been exported to various countries such as Asia, America and
                        Europe. As
                        one of the promising commodities as one of the country's revenues. Well, as a good Indonesian
                        citizen it is
                        certainly a necessity to support these coffee farmers to continue to produce the world's best
                        coffee beans.
                    </p>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="Toraja" tabindex="0" role="dialog">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h3>Toraja</h3>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body text-center">
                    <img class="card-img-top" src="img/beantoraja.jpg" style="width:300px; height: auto; ">
                    <p class="text-justify" style="margin-top: 10px;">
                        Toraja coffee is produced from the South Sulawesi region in the Toraja mountains. The Toraja
                        Mountains are
                        very special, the land grows well. The proof is that the two best types of coffee in the world
                        can be
                        produced at once, namely Arabica Toraja Coffee and Robusta Arabica Coffee. The difference
                        between 2 types of
                        Toraja coffee is found in caffeine produced in each type of Toraja coffee. This coffee has a
                        high level of
                        acidity. The taste is that it has soil, unique and distinctive to be the main characteristic of
                        this Toraja
                        coffee. You will be surprised when you first try it. Your tongue will feel a bitter taste that
                        disappears
                        for a moment which leaves no trace of bitter taste on the tongue. This taste is favored by
                        domestic and
                        foreign coffee connoisseurs.</p>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="Kintamani" tabindex="0" role="dialog">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h3>Kintamani</h3>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body text-center">
                    <img class="card-img-top" src="img/beankintamani.jpg" style="width:300px; height: auto; ">
                    <p class="text-justify" style="margin-top: 10px;">
                        In addition to tourist charm that is very famous in the world. Bali also has hidden gems which
                        are the best
                        coffee producers in the world. In the Kintamani area, Bali has coffee that has distinctive
                        features from the
                        others. The flavor of coffee here is mixed with the taste of fruit that is not owned by other
                        regions.
                        Acidity mixes with a fresh taste of unique taste. This is caused by a system of planting coffee
                        beans that
                        are mixed with a variety of vegetables or commonly called intercropping systems. If you like the
                        aroma of
                        fresh and sour coffee. You can try Kintamani coffee as an alternative that is right for your
                        day.</p>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="Flores" tabindex="0" role="dialog">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h3>Flores</h3>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body text-center">
                    <img class="card-img-top" src="img/beanflores.jpg" width:300px; height: auto; ">
                    <p class=" text-justify" style="margin-top: 10px;">
                    Many of us know that Flores has a charming beauty to visit it. In addition to having its natural
                    beauty,
                    Flores also has a typical Flores coffee which is found in the Ngada plain in East Nusa Tenggara.
                    This area
                    of ​​Flores also contributes to the best coffee archipelago known to the world. Coffee in Flores
                    grows well
                    because of the volcanic ash from the volcano. Arabica coffee is a type of Flores coffee. Scented
                    with fruit
                    and added tobacco after drinking it. You will be impressed after drinking this coffee.</p>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="Java" tabindex="0" role="dialog">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h3>Java</h3>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body text-center">
                    <img class="card-img-top" src="img/beanjava.jpg" style="width:300px; height: auto; ">
                    <p class="text-justify" style="margin-top: 10px;">
                        Java coffee began to be known to the world since the 17th century. At that time the Dutch began
                        planting
                        Java coffee beans in Java and made it the largest producer of coffee in the world at that time.
                        Even though
                        there are many types of coffee, Java coffee is still the main choice for Dutch officials. Of the
                        many
                        coffees in the archipelago I honestly fell in love with this coffee.
                        This coffee is thinly flavored with spices. Through a wet milling process that makes it very
                        different and
                        interesting to taste. In the ijen mountains, Banyuwangi, East Java, this world-class Arabica
                        Java coffee is
                        produced perfect for true coffee lovers.</p>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="Lanang" tabindex="0" role="dialog">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h3>Lanang</h3>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body text-center">
                    <img class="card-img-top" src="img/beanlanang.jpg" style="width:300px; height: auto; ">
                    <p class="text-justify" style="margin-top: 10px;">
                        The creation of the word lanang coffee is because the coffee beans are round, single and there
                        is no middle
                        hemisphere as in coffee beans in general. The word "lanang" is a Javanese term to indicate that
                        it is
                        "male." And it is true that this coffee is one of its benefits and it adds to men's vitality. No
                        wonder this
                        coffee costs more than other coffees. This type of coffee can produce lanang robusta coffee and
                        lanang
                        arabica coffee. This coffee was very popular in the days of Dutch rule. You must taste this
                        lanang coffee to
                        try its properties.</p>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="Luwak" tabindex="0" role="dialog">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h3>Luwak</h3>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body text-center">
                    <img class="card-img-top" src="img/beanluwak.jpg" style="width:300px; height: auto; ">
                    <p class="text-justify" style="margin-top: 10px;">
                        When we discuss coffee in the archipelago, it doesn't seem complete if we don't know this one
                        coffee. This
                        coffee is the target of coffee lovers around the world. Very limited production makes this
                        coffee rare and
                        very expensive to taste a cup of civet coffee. Luwak coffee is produced from a unique process.
                        The history
                        of the creation of civet coffee is that in the Dutch era farmers were not allowed to taste the
                        coffee that
                        had been planted. One when the farmers saw the civet or ferret eat coffee beans. It turns out
                        that this
                        mongoose cannot digest the coffee beans it eats. Judging from the results of the manure which
                        still leaves
                        the coffee beans that they plant. Farmers who have high curiosity want to taste coffee. Boiling
                        the coffee
                        beans and it turns out to produce a high-flavored coffee dish to date. Civet coffee is the best
                        and most
                        expensive coffee in the world today and of course authentic Indonesian products. We also sell
                        raw coffee
                        beans that are ready to accompany your day.</p>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="Wamena" tabindex="0" role="dialog">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h3>Wamena</h3>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body text-center">
                    <img class="card-img-top" src="img/beanwamena.jpg" style="width:300px; height: auto; ">
                    <p class="text-justify" style="margin-top: 10px;">
                        Wamena coffee thrives in the mountains of Wamena and is one of Indonesia's coffee producers.
                        Having a mild
                        aroma and having a fragrant characteristic in each coffee bean is the character of the Wamena
                        coffee.
                        Farmers in Wamena still use organic ingredients to plant their coffee beans. So the original
                        coffee will
                        taste, light without pulp, fragrant and leave no sour taste on the tongue. Wamena coffee types
                        are still
                        relatively difficult to distribute.</p>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="Sidikalang" tabindex="0" role="dialog">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h3>Sidikalang</h3>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body text-center">
                    <img class="card-img-top" src="img/beansidikalang.jpg" style="width:300px; height: auto; ">
                    <p class="text-justify" style="margin-top: 10px;">
                        Sidikalang coffee is the best coffee in Indonesia, next with a good taste. This coffee is very
                        popular with
                        true coffee lovers from both the archipelago and overseas. Because of its high quality,
                        Sidikalang coffee is
                        the main competitor of Brazil coffee. This coffee has the most refined texture among the world's
                        coffee
                        types. Sidikalang coffee is the best choice when accompanying your afternoon.</p>
                </div>
            </div>
        </div>
    </div>

</body>

</html>