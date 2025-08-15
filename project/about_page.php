<?php 
require('top.php');
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <style>

body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
}



h1, h2 {
    margin: 0.5rem 0;
}

.about,.Offer,.values, .team, .contact {
    padding: 2rem;
    background-color: #fff;
    margin: 1rem auto;
    max-width: 800px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.Offer {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-around;
}
.values{
    display: flex;
    flex-wrap: wrap;
    justify-content: space-around;
}
.header2{
    margin-right: 510px;
    margin-bottom: 30px;

}
.header3{
    margin-right: 565px;
    margin-bottom: 30px;
}

.contact p {
    margin: 0.5rem 0;
}
.hbs{
    margin-left: 150px;
}

.qtp{
    margin-left: 105px;
}

.csp{
    margin-left: 207px;
}

.osp1{
    margin-left: 40px;
}

    </style>
</head>
<body>
    <header>
        <!-- Start Bradcaump area -->
        <div class="ht__bradcaump__area" style="background: rgba(0, 0, 0, 0) url(images/bg/c3.jpg) no-repeat scroll center center / cover ;">
            <div class="ht__bradcaump__wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="bradcaump__inner">
                                <nav class="bradcaump-inner">
                                    <a class="breadcrumb-item" href="index.php">Home</a>
                                    <span class="brd-separetor"><i class="zmdi zmdi-chevron-right"></i></span>
                                    <span class="breadcrumb-item active">About Us</span>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div> 
        </div>
        <!-- End Bradcaump area -->
    </header>
    <section class="about">
        <h2 >Our Story</h2><br>
        <p><span class="osp1" >Welcome to FEIN FASHION,</span> where fashion meets passion! Founded in 2024. our journey began with a simple idea: to bring high-quality, stylish clothing to fashion enthusiasts around the world. What started as a small venture has grown into a beloved brand known for its unique designs and exceptional quality.<br><br> <span class="osp1"> At FEIN FASHION, we believe that fashion is more than just clothing—it’s a form of self-expression. Our mission is to empower individuals to express their unique style and personality through our carefully curated collections. We are committed to providing our customers with the latest trends, timeless classics, and everything in between.</span></p>
        </section>
    <section class="Offer">
        <h2 class="header2"> What We Offer</h2><br>
        <p ><span class="osp1">We</span> offer a wide range of clothing and accessories for men, women, and children. From casual wear to formal attire, our collections are designed to cater to every occasion and style preference. Each piece is crafted with attention to detail, ensuring that you receive only the best.</p>
        
    </section>
    <section class="values">
        <h2 class="header3">Our Values</h2><br>
        <p>
            <b class="osp1">Quality:</b> We prioritize quality in every aspect of our business, from the materials we use to the   <span class="qtp">craftsmanship of our products.</span><br><br>
            <b class="osp1">Sustainability:</b> We are dedicated to sustainable practices and strive to minimize our environmental <span class="hbs">impact.</span><br><br>
            <b class="osp1">Customer Satisfaction:</b> Our customers are at the heart of everything we do. We are committed to  <span class="csp">providing exceptional service and ensuring your shopping experience is </span> <span class="csp">seamless and enjoyable.</span>
        </p>
    
    </section>
    <section class="team">
        <h2 class="header2">Meet the Team</h2>
        <p>
        <span class="osp1">Our</span> team is a diverse group of passionate individuals who share a love for fashion and a commitment to excellence. From our designers to our customer service representatives, each team member plays a vital role in bringing our vision to life.
        </p>
        
    </section>
    <section class="contact">
        <h2>Contact Us</h2><br>
        <div class="osp1">
            <p>Email: feinfashion2024@gmail.com</p>
            <p>Phone: +91 7435943123, +91 7490072247</p>
            <p>Address: T.N.Rao college, Rajkot </p>
        </div>
    </section>
</body>
</html>
<?php 
require('footer.php');
?>
