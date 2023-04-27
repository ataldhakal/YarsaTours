<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 6/04/2023
  Time: 11:09 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Yarsa Tours & Travels : Home</title>
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/icon" href="assets/images/favicon.ico"/>

    <!-- Font Awesome -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <!-- Slick slider -->
    <link href="assets/css/slick.css" rel="stylesheet">
    <!-- Theme color -->
    <link id="switcher" href="assets/css/theme-color/default-theme.css" rel="stylesheet">

    <!-- Main Style -->
    <link href="assets/style.css" rel="stylesheet">

    <!-- Fonts -->

    <!-- Poppins For Title -->
    <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
    <style type="text/css">
        .nav {
            background-color: #333;
            overflow: hidden;
            float: right;
        }

        nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            float: left;
        }

        nav li {
            float: left;
            padding-top: 8px;
        }

        nav a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            font-weight: bold;
        }



        li i{
            font-size:80px;
            color:lightblue;
            text-shadow:2px 2px 4px #000000;
        }

        form {
            float: initial;
            margin: 14px 16px 10px 0;
        }

        form input[type=text] {
            padding: 6px;
            border: none;
            font-size: 17px;
            width: 200px;
        }

        form button[type=submit] {
            background-color: #4CAF50;
            color: white;
            padding: 6px 10px;
            border: none;
            cursor: pointer;
        }

        form button[type=submit]:hover {
            background-color: #45a049;
        }

        .bottom-right {
            position: absolute;
            bottom: 20px;
            right: 16px;
        }

        .bottom-right li{
            list-style: none;
            display: flex;
            margin-top: 9px;

        }
        .col-md-4{

            display: flex;

            border-radius: 15px;
            box-shadow: 5px 10px lightgrey;
        }

        .col-md-4 img{
            height:250px;
            width: 100%;
            border-top-right-radius: 15px;
            border-top-left-radius: 15px;
        }
        .mu-callto-action container{
            padding-top: 10px;
            background-color: lightgreen;
        }

    </style>


</head>
<body>



<!--START SCROLL TOP BUTTON -->
<a class="scrollToTop" href="#">
    <i class="fa fa-angle-up"></i>
</a>
<!-- END SCROLL TOP BUTTON -->

<!-- Start Header -->
<header id="mu-hero">
    <div class="container">
        <div class="mu-hero-area">

            <div class="mu-hero-top">
                <!-- Start center Logo -->
                <div class="mu-logo-area">
                    <!-- text based logo -->
                    <!--<a class="mu-logo" href="index.html"><span>Outing</span></a>-->
                    <!-- Image based logo -->
                    <img src="assets/images/logo2.png" alt="logo img" height="100>" width="200"></a>
                </div>
                <!-- End center Logo -->
                <div class="mu-hero-top-info">
                    <ul>
                        <li style="border: 1px solid black;"><a style="font-weight: bold;" href="user?page=logout">LOG OUT</a></li>

                        <li><a href="user?page=dashboard">DASH BOARD</a></li>
                        <li><a href="#aboutus">ABOUT US</a></li>
                        <li><a href="#tour">TOURS</a></li>
                        <li><i class="fa fa-home"></i></li>
                    </ul>
                </div>
            </div>

            <!-- Start hero featured area -->
            <div class="mu-hero-featured-area">
                <div class="mu-hero-featured-content">
                    <h2 style="color: black;">Welcome To Yarsa Tours & Travels</h2>
                    <h1 style="color: black;">WE PROVIDE SERVICE BEYOND EXPECTATIONS</h1>
                    <p style="color: black;">Explore the beauty of travelling with our eco friendly tour packages. We are environmentally concious and trained to contribute at maximum level.The company comprises the amalgamation of young dynamic personnel to experienced veterans of the tourism field.</p>

                    <form>
                        <input type="text" placeholder="Search destinations...">
                        <button type="submit">Go</button>
                    </form>

                    <div class="mu-scrolldown-area">
                        <a href="#mu-about" class="mu-scrolldown" id="mu-scrolldown"><i class="fa fa-chevron-down" aria-hidden="true"></i></a>
                    </div>
                    <div class="row2">
                        <div class="bottom-right">
                            <h1 style="color: #1a0a29; font-size: 25px;">OVERVIEW</h1>
                            <ul>
                                <li><i class="fa fa-map-marker"> Jhamsikhel, Lalitpur</i></li>
                                <li><i class="fa fa-car"> Serves all over Nepal</i></li>
                                <li><i class="fa fa-clock-o"> Opens at 7 AM and closes at 9 PM</i></li>
                                <li><i class="fa fa-exclamation-triangle"> Hours or services may differ</i></li>
                                <li><i class="fa fa-phone-square"> 9863462432</i></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!-- End hero featured area -->

    </div>
    </div>
</header>
<!-- End Header -->


<!-- Start main content -->
<main>
    <!-- Start About -->
    <section id="mu-about">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="mu-about-area">
                        <!-- Start Feature Content -->
                        <div class="row">
                            <div class="col-md-6">
                                <div class="mu-about-left">
                                    <img class="" src="assets\images\ama-dablam-2064522_1280.jpg" alt="img">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mu-about-right" id="aboutus">
                                    <h2 style="color: black;">About Our Agency</h2>
                                    <p style="color: black;">We are service oriented and dedicated enterpreneurs and professionals having long experience in the field of travel and tourism to serve the people willing to explore interesting destination.The company comprises the amalgamation of young dynamic personnel to experienced veterans of the tourism field. We provide wide range of service and exciting tourist destinations in all over Nepal.</p>

                                    <p style="color: black;">Yarsa tour and travels not only offers you the sites and sound of Beautiful Himalayan region but also introduces you to ever-smiling faces, open hearts and warmth of its people.We also promote the preservation and well-being of our natural, cultural and traditional legacies.</p>
                                </div>
                            </div>
                        </div>
                        <!-- End Feature Content -->

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End About -->

    <!-- Start Why Us -->
    <section id="mu-why-us">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="mu-why-us-area">
                        <h2>Why Us?</h2>
                        <div class="mu-why-us-content">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="mu-why-us-single">
                                        <div class="my-why-us-single-icon">
                                            <i class="fa fa-bed" aria-hidden="true"></i>
                                        </div>
                                        <h3>Luxurious Hotels</h3>
                                        <p>We accomodate you in luxurious hotels with high-quality amenities, such as comfortable bedding and gourmet dining options. Additionally, most of the stays are located in the heart of popular tourist destinations, making it easy to access nearby attractions and amenities.</p>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mu-why-us-single">
                                        <div class="my-why-us-single-icon">
                                            <i class="fa fa-thumbs-up" aria-hidden="true"></i>
                                        </div>
                                        <h3>The Best Service</h3>
                                        <p> We not only carry out adventures in Nepal, but also provide help to the one who are destitute in the society or village in various districts. Accordingly, certain percentage of our earnings goes for the development of such people. We will invest in basic needs such as education and health care.</p>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mu-why-us-single">
                                        <div class="my-why-us-single-icon">
                                            <i class="fa fa-plane" aria-hidden="true"></i>
                                        </div>
                                        <h3>Unique Experience</h3>
                                        <p>We go beyond the standard offering and providing tailored experiences to meet the individual needs and preferences of each of you which could involve personalized itineraries, exclusive experiences, exceptional customer service, and access to local experts.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Why Us -->

    <!-- Start Video -->
    <section id="mu-video">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="mu-video-area">
                        <h2 style="color: black;">Watch Our Recent Trip Video</h2>
                        <p style="color: black;" class="mu-title-content">A mere photograph can not define the beauty of Annapurna trekking region. The immense beauty of ABC was almost impossible to trap them into pictures. I don’t either have enough words to portray the image of what I witnessed. But here’s a little memoir put into a short video that would remind me of this exceptional tour in coming future.</p>

                        <!-- Start Video content -->

                        <!-- End Video content -->
                        <video height="480" width="854" controls autoplay>
                            <source src="assets/images/Video.mp4" type="video/mp4">
                            Your browser does not support the video tag.
                        </video>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Video -->

    <!-- Start Featured Tours -->
    <section id="mu-featured-tours" >
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="mu-featured-tours-area">
                        <h2>Our Featured Tours</h2>
                        <p class="mu-title-content">Yarsa Tour and Travels offers a range of activities to suit any taste across Nepal and makes sure that each activity is executed with perfection, according to your needs.</p>

                        <!-- Start Featured Tours content -->
                        <div class="mu-featured-tours-content">
                            <tbody id="paginated-list" data-current-page="1" aria-live="polite">
                            <div class="row">

                                <div class="col-md-4" id="tour">
                                    <div class="mu-featured-tours-single">
                                        <img src="assets/images/rara.jpg" alt="img">
                                        <div class="mu-featured-tours-single-info">
                                            <h3>Rara, Nepal</h3>
                                            <h4> 4 Days, 3 Nights</h4>
                                            <span class="mu-price-tag">Nrs.20,000</span>
                                            <p>Explore a stunning alpine lake located in the remote Mugu District of Nepal, near the border with Tibet known as the largest lake in Nepal and is surrounded by pristine forests and snow-capped mountains. </p>
                                            <a href="user?page=booknow&id=1" class="mu-book-now-btn">Book Now</a>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="mu-featured-tours-single">
                                        <img src="assets/images/train-5191141_1280.jpg" alt="img">
                                        <div class="mu-featured-tours-single-info">
                                            <h3>Darjeeling</h3>
                                            <h4> 5 days, 6 Nights</h4>
                                            <span class="mu-price-tag">Nrs.17,000</span>
                                            <p>Explore a picturesque hill town located in the Indian state of West Bengal, known for its stunning views of the Himalayas and world-famous tea gardens which offers a blend of colonial charm and Indo-Nepali culture.</p>
                                            <a href="user?page=booknow&id=2" class="mu-book-now-btn">Book Now</a>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="mu-featured-tours-single">
                                        <img src="assets/images/maxresdefault.jpg" alt="img">
                                        <div class="mu-featured-tours-single-info">
                                            <h3>Sauraha, Chitwan</h3>
                                            <h4> 3 Days, 4 Nights</h4>
                                            <span class="mu-price-tag">Nrs.14,000</span>
                                            <p> Explore Sauraha known for its proximity to Chitwan National Park, a UNESCO World Heritage site and one of the best places in the world to see Bengal tigers, one-horned rhinoceroses, and other wildlife. </p>
                                            <a href="user?page=booknow&id=3" class="mu-book-now-btn">Book Now</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mu-featured-tours-single">
                                        <img src="assets/images/140618003-Dhorpatan-Jumla-Trek.jpg" alt="img">
                                        <div class="mu-featured-tours-single-info">
                                            <h3>Dhorpatan, Nepal</h3>
                                            <h4> 6 Days, 7 Nights</h4>
                                            <span class="mu-price-tag">Nrs.22,000</span>
                                            <p>Explore a remote hunting reserve located in between Dhaulagiri and Annapurna range, known for its pristine alpine landscape and rich biodiversity, including endangered species such as the Himalayan tahr and snow leopard.</p>
                                            <a href="user?page=booknow&id=4" class="mu-book-now-btn">Book Now</a>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="mu-featured-tours-single">
                                        <img src="assets/images/wp7247138.jpg" alt="img">
                                        <div class="mu-featured-tours-single-info">
                                            <h3>Pokhara, Nepal</h3>
                                            <h4> 3 Days, 4 Nights</h4>
                                            <span class="mu-price-tag">Nrs.12,000</span>
                                            <p>Travel a scenic city located in central Nepal, known for its breathtaking views of the Himalayas and tranquil lakes and a vibrant nightlife, with many restaurants, bars, and cafes along the lakeside promenade. </p>
                                            <a href="user?page=booknow&id=5" class="mu-book-now-btn">Book Now</a>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="mu-featured-tours-single">
                                        <img src="assets/images/kk.jpg" alt="img">
                                        <div class="mu-featured-tours-single-info">
                                            <h3>Tibet</h3>
                                            <h4> 6 Days, 7 Nights</h4>
                                            <span class="mu-price-tag">Nrs.36,000</span>
                                            <p>Explore the home of many important Tibetan Buddhist site located in the Himalayas such as the Potala Palace and Jokhang Temple, known for its rich cultural heritage, stunning natural scenery, and spiritual significance.



                                            </p>
                                            <a href="user?page=booknow&id=6" class="mu-book-now-btn">Book Now</a>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <!-- End Featured Tours content -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Featured Tours -->

    <!-- Start Client Testimonials -->
    <section id="mu-testimonials">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="mu-testimonials-area">
                        <h2 style="color: black;">What Our Travelers Say</h2>

                        <div class="mu-testimonials-block">
                            <ul class="mu-testimonial-slide">

                                <li>
                                    <i class="fa fa-quote-left mu-client-quote" aria-hidden="true"></i>
                                    <p style="color: black;">"Had an incredible experience completing the Rara trek with this local travel specialist. They are a reliable and flexible company that is able to work around your schedule to accommodate the best possible trekking experience tailored to you. My guide was friendly and supportive and was at my beck and call the entire way through. Would strongly recommend choosing this agency for travel in Nepal!</p>
                                    <img class="mu-rt-img" src="assets/images/FB_IMG_1673032370499.jpg" alt="img">
                                    <h5 class="mu-rt-name"> - Sachin Chand</h5>
                                    <span class="mu-rt-title"> Satdobato, Lalitpur </span>
                                </li>

                                <li>
                                    <i class="fa fa-quote-left mu-client-quote" aria-hidden="true"></i>
                                    <p>"We flew over the Himalayas. The agency was top notch, the manager picked us up at our hotel and drove us to the airport. The flight is fantastic. Each person has a porthole and a hostess comes to explain to us the mountains that we see until the discovery of Everest. For anyone considering any form of adventure to Nepal, I would highly recommend this company as well as Apil Gautam as your guide.</p>
                                    <img class="mu-rt-img" src="assets/images/328042069_5814049498676613_9001862528497379422_n.jpg" alt="img">
                                    <h5 class="mu-rt-name"> - Suyog Upadhyaya Root</h5>
                                    <span class="mu-rt-title"> Narayanghat, Chitwan</span>
                                </li>

                                <li>
                                    <i class="fa fa-quote-left mu-client-quote" aria-hidden="true"></i>
                                    <p style="color: black;">" Wow, what a breathtaking experience this was! We travelled back in May, and our guide Balaram was professional and friendly at all times, keeping us at ease when we were very nervous beforehand. Would definitely recommend to anyone seeking such an experience. I could not thank Ganga Balaram enough for the amazing travel experience!"</p>
                                    <img class="mu-rt-img" src="assets/images/235590002_3120011351612887_886400291649173271_n.jpg" alt="img">
                                    <h5 class="mu-rt-name"> - Nirajan Shrestha</h5>
                                    <span class="mu-rt-title">Rukum, Nepal</span>
                                </li>

                            </ul>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Client Testimonials -->



    <!-- Start Call to Action -->
    <section id="mu-callto-action">
        <div class="container">
            <div class="row col-md-12">
                <div class="mu-callto-action-area">
                    <h2 style="color: black;">Explore the world by making journey with us</h2>
                    <a style="color: black;"class="mu-book-now-btn" href="#">Start Journey</a>
                </div>
            </div>
        </div>
    </section>
    <!-- Start Call to Action -->

    <!-- Start Contact -->
    <section id="mu-contact">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="mu-contact-area">
                        <h2>Contact Us</h2>
                        <p> You can reach us anytime for the queries and any other help through this mail. We reply within an hour. For the faster reply you can find us through the social media accounts linked at the end of this page.</p>

                        <!-- Start Contact Content -->
                        <div class="mu-contact-content">
                            <div class="row">

                                <div class="col-md-12">
                                    <div class="mu-contact-form-area">
                                        <div id="form-messages"></div>
                                        <form id="ajax-contact" method="post" action="mailer.php" class="mu-contact-form">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" placeholder="Name" id="name" name="name" required>
                                                    </div>
                                                </div>

                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <input type="email" class="form-control" placeholder="Enter Email" id="email" name="email" required>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="Your Subject" id="subject" name="subject" required>
                                            </div>

                                            <div class="form-group">
                                                <textarea class="form-control" placeholder="Message" id="message" name="message" required></textarea>
                                            </div>
                                            <button type="submit" class="mu-send-msg-btn"><span>Send Message</span></button>
                                        </form>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <!-- End Contact Content -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Contact -->

    <!-- Start Google Map -->

    <div id="mu-google-map">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7066.086116918137!2d85.29873529455712!3d27.685064030866577!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb184628029137%3A0x1dae687495f17539!2sJhamsikhel%2C%20Lalitpur%2044600!5e0!3m2!1sen!2snp!4v1680437484402!5m2!1sen!2snp" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>"</iframe>
    </div>

    <!-- End Google Map -->

</main>

<!-- End main content -->


<!-- Start footer -->
<footer id="mu-footer">
    <div class="container">
        <div class="mu-footer-area">
            <div class="row">
                <div class="col-md-6">
                    <div class="mu-footer-left">
                        <p class="mu-copy-right">&copy; Copyrights Yarsa Tour & Travels. All right reserved.</p>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="mu-footer-right">
                        <div class="mu-social-media">
                            <a href="https://www.facebook.com/atal.dhakal.9"><i class="fa fa-facebook"></i></a>
                            <a href="https://www.instagram.com/ataldhakal/?igshid=MTIzZWQxMDU=&fbclid=IwAR04ATLKRTDZT29CN3ZKb1T6u7n8a7mxCSCipgjO5GSdkolPsqQO3AuAq6A"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-google-plus"></i></a>
                            <a href="https://www.linkedin.com/in/atal-dhakal-547302215/"><i class="fa fa-linkedin"></i></a>
                            <a href="https://www.youtube.com/@yatrakaar5765"><i class="fa fa-youtube"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</footer>
<!-- End footer -->


<!-- JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
<!-- Slick slider -->
<script type="text/javascript" src="assets/js/slick.min.js"></script>
<!-- Ajax contact form  -->
<script type="text/javascript" src="assets/js/app.js"></script>



<!-- Custom js -->
<script type="text/javascript" src="assets/js/custom.js"></script>




</body>
</html>
