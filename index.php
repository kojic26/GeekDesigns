<?php
    include './includes/header.php';
    require './database/database.php';
?>

    <!-- Hero Section Begin -->
    <section class="hero">
        <div class="hero__slider owl-carousel">
            <div class="hero__items set-bg" data-setbg="img/hero/hero-1.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-5 col-lg-7 col-md-8">
                            <div class="hero__text">
                                <h6>Khun Collection</h6>
                                <h2>Anime Collections</h2>
                                <p>Find exclusive anime clothing created anime artist and anime companies based off anime movies, anime tv shows, & anime artists!</p>
                                <a href="shop.php" class="primary-btn">Shop now <span class="arrow_right"></span></a>
                                <div class="hero__social">
                                    <a href="https://www.facebook.com/jpynzon"><i class="fa fa-facebook"></i></a>
                                    <a href="https://www.youtube.com/watch?v=xvFZjo5PgG0"><i class="fa fa-instagram"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="hero__items set-bg" data-setbg="img/hero/hero-2.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-5 col-lg-7 col-md-8">
                            <div class="hero__text">
                                <h6>Khun Collection</h6>
                                <h2>Gamer Collections</h2>
                                <p>Level up your wardrobe with our gamer clothing collection, featuring iconic gaming characters, logos, 
                                    and gameplay elements in bold designs and slogans that are a must-have for any gaming enthusiast.</p>
                                <a href="shop.php" class="primary-btn">Shop now <span class="arrow_right"></span></a>
                                <div class="hero__social">
                                    <a href="https://www.facebook.com/jpynzon"><i class="fa fa-facebook"></i></a>
                                    <a href="https://www.youtube.com/watch?v=xvFZjo5PgG0"><i class="fa fa-instagram"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Banner Section Begin -->
    <section class="banner spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-7 offset-lg-4">
                    <div class="banner__item">
                        <div class="banner__item__pic">
                            <img src="img/banner/banner-1.jpg" alt="">
                        </div>
                        <div class="banner__item__text">
                            <h2>Anime Collections 2023</h2>
                            <a href="shop.php">Shop now</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="banner__item banner__item--middle">
                        <div class="banner__item__pic">
                            <img src="img/banner/banner-2.jpg" alt="">
                        </div>
                        <div class="banner__item__text">
                            <h2>Gamer Collections 2023</h2>
                            <a href="shop.php">Shop now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Banner Section End -->

    <!-- Product Section Begin -->
    <section class="product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="filter__controls">
                        <li class="active" data-filter="*">All</li>
                        <li data-filter=".new-arrivals">Anime Designs</li>
                        <li data-filter=".hot-sales">Gaming Designs</li>
                    </ul>
                </div>
            </div>
            <div class="row product__filter">
                <div class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix <?php echo $row['category_name']; ?>">

                    <?php
                        $sql= "SELECT * FROM products";
                        $result= mysqli_query($connect , $sql);
                        while($row = $result->fetch_assoc()){
                    ?>

                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="img/product/<?php echo $row['image']; ?>">
                            <span class="label">New</span>
                        </div>
                        <div class="product__item__text">
                            <h6><?php echo $row['name']; ?></h6>
                            <a href="product-detail.php?id=<?php echo $row['product_id']; ?>" class="buy-now">Buy Now</a>
                            <h5><?php echo $row['price']; ?></h5>                           
                        </div>                          
                    </div>
                    
                    <?php } ?> 

                </div>
            </div>
        </div>
    </section>
    <!-- Product Section End -->

    <!-- Categories Section Begin -->
    <section class="categories spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="categories__text">
                        <h2><br /> <span>Don't Miss Out!</span> <br /></h2>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="categories__hot__deal">
                        <img src="img/product-sale.png" alt="">
                        <div class="hot__deal__sticker">
                            <span>Sale Of</span>
                            <h5>₱150.00</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 offset-lg-1">
                    <div class="categories__deal__countdown">
                        <span>Deal Of The Week</span>
                        <h2>Luffy Gear Fourth Hoodie - One Piece</h2>
                        <div class="categories__deal__countdown__timer" id="countdown">
                            <div class="cd-item">
                                <span>3</span>
                                <p>Days</p>
                            </div>
                            <div class="cd-item">
                                <span>1</span>
                                <p>Hours</p>
                            </div>
                            <div class="cd-item">
                                <span>50</span>
                                <p>Minutes</p>
                            </div>
                            <div class="cd-item">
                                <span>18</span>
                                <p>Seconds</p>
                            </div>
                        </div>
                        <a href="#" class="primary-btn">Shop now</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Categories Section End -->
    
    <!-- Footer -->
    <?php 
    include './includes/footer.php';
    ?>

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery.nicescroll.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/jquery.countdown.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
</body>

</html>