<#import "blocks/template.ftlh" as t>
<@t.template user>
    <html lang="ru">
    <!--<![endif]-->
    <head>
        <meta charset="utf-8" />
        <title>Best Pharmacy Reviews – Consumer Reports</title>
        <meta name="description" content="" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="shortcut icon" href="favicon.png" />
        <link rel="stylesheet" href="/static/css/main.min.css" />
    </head>
    <body>
    <header id="main" class="parallax-container" data-position="bottom center" data-parallax="scroll" data-speed="0.2" data-image-src="/static/img/main-bg1.jpg">
<#--        <div class="navbar">-->
<#--            <div class="top-nav">-->
<#--                <a class="logo" href="#">-->
<#--                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 240 35" width="180" height="35">-->
<#--                        <path d="M19.67,25.02c0,0.73-0.43,0.96-1,0.96H6.07c-0.7,0-1.06-0.17-1.06-1.06V3.88c0-0.6,0.3-0.93,0.93-0.93h3.35c0.73,0,1,0.23,1,1v17.59h8.43c0.66,0,0.96,0.33,0.96,0.96V25.02z" fill="#166729"></path>-->
<#--                        <path d="M25.71,25.06c0,0.63-0.33,0.93-0.86,0.93h-3.22c-0.5,0-0.9-0.27-0.9-0.9V3.65c0-0.6,0.17-0.93,0.8-1.03l3.25-0.43c0.63-0.1,0.93,0.17,0.93,0.7V25.06z" fill="#166729"></path>-->
<#--                        <path d="M35.6,26.42c-5.61,0-8.23-3.62-8.23-8.56c0-4.88,3.09-8.5,8.46-8.5c5.61,0,8.23,3.62,8.23,8.56C44.07,22.8,40.98,26.42,35.6,26.42z M35.77,13.28c-2.46,0-3.25,2.12-3.25,4.55c0,2.46,0.7,4.68,3.15,4.68s3.25-2.19,3.25-4.61C38.92,15.43,38.22,13.28,35.77,13.28z" fill="#166729"></path>-->
<#--                        <path d="M55.55,10.79c0.2-0.66,0.56-0.96,1.23-0.96h3.42c0.56,0,0.66,0.5,0.5,0.93l-6.57,17.06c-1.53,3.95-3.52,5.38-7.83,5.38c-0.76,0-1.33-0.07-1.99-0.2c-0.63-0.13-0.63-0.53-0.56-1.06l0.3-2.09c0.1-0.66,0.37-0.73,0.66-0.73c0.33,0,0.8,0.1,1.63,0.1c1.96,0,2.82-0.63,3.39-2.09l0.4-1.03l-6.14-15.27c-0.2-0.46,0.03-1,0.6-1h3.92c0.56,0,0.86,0.27,1,0.66l3.09,9.82h0.1L55.55,10.79z" fill="#166729"></path>-->
<#--                        <path d="M71.81,3.65c0-0.6,0.17-0.93,0.8-1.03l3.25-0.43c0.63-0.1,0.93,0.17,0.93,0.7v22.17c0,0.66-0.4,0.93-0.9,0.93H73.1c-0.56,0-0.83-0.3-0.86-0.66l-0.07-0.7c-0.93,1.03-2.62,1.79-4.38,1.79c-4.65,0-6.97-3.72-6.97-8.23c0-4.41,2.36-8.83,7.27-8.83c1.46,0,2.82,0.5,3.72,1.33V3.65z M71.81,14.44c-0.6-0.56-1.66-1.06-2.62-1.06c-2.42,0-3.19,2.52-3.19,4.51c0,2.06,0.56,4.48,3.09,4.48c0.96,0,2.19-0.63,2.72-1.19V14.44z" fill="#166729"></path>-->
<#--                        <path d="M84.89,26.42c-1.76,0-3.95-0.53-5.54-1.23c-0.46-0.2-0.53-0.56-0.4-1l0.66-2.16c0.13-0.46,0.4-0.73,1.03-0.46c1.63,0.66,3.09,1.03,4.35,1.03c1.16,0,1.79-0.43,1.79-1.16c0-0.63-0.33-0.96-1.56-1.43l-2.49-0.93c-2.26-0.83-3.75-2.42-3.75-4.81c0-3.32,3.39-4.91,6.34-4.91c1.73,0,3.39,0.27,5.14,1.06c0.43,0.2,0.53,0.5,0.4,0.93l-0.7,2.26c-0.13,0.43-0.56,0.46-0.93,0.33c-1.43-0.5-2.49-0.86-3.85-0.86c-1.1,0-1.59,0.53-1.59,1.06c0,0.4,0.13,0.83,1.26,1.26l2.82,1.13c2.36,0.93,3.68,2.32,3.68,4.55C91.56,24.89,88.37,26.42,84.89,26.42z" fill="#166729"></path>-->
<#--                        <path d="M100.42,18.35h-1.86v6.74c0,0.56-0.23,0.9-1,0.9h-3.32c-0.6,0-0.96-0.13-0.96-0.86V3.98c0-0.83,0.23-1.03,1-1.03h5.18c3.85,0,6.5,0.66,8.2,2.52c1.19,1.33,1.79,3.15,1.79,4.91C109.45,15.66,105.36,18.35,100.42,18.35z M100.19,7.04h-1.63v7.27h1.39c2.39,0,4.18-0.93,4.18-3.68C104.14,8.1,102.68,7.04,100.19,7.04z" fill="#97be0d"></path>-->
<#--                        <path d="M116.08,25.02c0,0.66-0.3,0.96-0.96,0.96h-2.99c-0.7,0-1.03-0.23-1.03-0.96V3.65c0-0.6,0.17-0.93,0.8-1.03l3.25-0.43c0.63-0.1,0.93,0.17,0.93,0.7v8.13c1.29-1.1,3.42-1.66,5.08-1.66c3.62,0,5.24,2.32,5.24,5.91v9.76c0,0.66-0.3,0.96-0.96,0.96h-2.99c-0.7,0-1.03-0.23-1.03-0.96v-8.86c0-1.39-0.4-2.32-1.89-2.32c-1.1,0-2.52,0.5-3.45,1.29V25.02z" fill="#97be0d"></path>-->
<#--                        <path d="M145.49,25.22c0,0.5-0.33,0.76-0.8,0.76h-1.76c-1.96,0-2.75-0.56-3.19-1.53h-0.07c-0.9,1.03-3.02,1.96-4.65,1.96c-4.78,0-7-3.78-7-8.2c0-5.87,3.65-8.86,7.3-8.86c1.86,0,3.35,0.86,4.05,1.86l0.1-0.73c0.07-0.43,0.33-0.66,0.76-0.66h2.99c0.46,0,0.8,0.27,0.8,0.8v11.45c0,0.33,0.13,0.56,0.5,0.56h0.27c0.46,0,0.7,0.17,0.7,0.66V25.22z M139.05,14.6c-0.6-0.53-1.69-1.13-2.69-1.13c-1.63,0-3.15,1.33-3.15,4.41c0,2.06,0.53,4.51,3.05,4.51c1.19,0,2.39-0.9,2.79-1.39V14.6z" fill="#97be0d"></path>-->
<#--                        <path d="M152.46,15.13v9.92c0,0.6-0.27,0.93-0.93,0.93h-3.12c-0.6,0-0.93-0.3-0.93-0.93V10.79c0-0.8,0.4-0.96,0.96-0.96h2.69c0.63,0,0.93,0.17,0.96,0.66l0.07,1c1.19-1.43,2.36-2.12,4.18-2.12c1,0,1.36,0.2,1.26,0.9l-0.5,3.15c-0.07,0.37-0.23,0.53-0.53,0.53c-0.33,0-0.5-0.07-1.06-0.07C154.42,13.87,153.29,14.3,152.46,15.13z" fill="#97be0d"></path>-->
<#--                        <path d="M163.41,25.02c0,0.7-0.3,0.96-0.96,0.96h-2.99c-0.7,0-1.03-0.23-1.03-0.96V10.69c0-0.6,0.37-0.86,0.93-0.86h2.72c0.56,0,0.9,0.17,0.96,0.7l0.07,0.63c1.33-1.13,3.05-1.79,4.75-1.79c2.22,0,3.45,1.1,4.15,2.22c1.49-1.49,3.68-2.22,5.77-2.22c2.59,0,4.22,1.46,4.81,2.82c0.6,1.33,0.66,2.82,0.66,5.18v7.67c0,0.7-0.3,0.96-0.96,0.96h-2.99c-0.7,0-1.03-0.23-1.03-0.96v-8.89c0-1.33-0.3-2.39-1.79-2.39c-1.16,0-2.52,0.63-3.42,1.39v9.89c0,0.7-0.3,0.96-0.96,0.96h-2.72c-0.7,0-1.03-0.23-1.03-0.96v-8.89c0-1.33-0.3-2.39-1.79-2.39c-1.1,0-2.22,0.56-3.15,1.39V25.02z" fill="#97be0d"></path>-->
<#--                        <path d="M202.97,25.22c0,0.5-0.33,0.76-0.8,0.76h-1.76c-1.96,0-2.75-0.56-3.19-1.53h-0.07c-0.9,1.03-3.02,1.96-4.65,1.96c-4.78,0-7-3.78-7-8.2c0-5.87,3.65-8.86,7.3-8.86c1.86,0,3.35,0.86,4.05,1.86l0.1-0.73c0.07-0.43,0.33-0.66,0.76-0.66h2.99c0.46,0,0.8,0.27,0.8,0.8v11.45c0,0.33,0.13,0.56,0.5,0.56h0.27c0.46,0,0.7,0.17,0.7,0.66V25.22z M196.53,14.6c-0.6-0.53-1.69-1.13-2.69-1.13c-1.63,0-3.15,1.33-3.15,4.41c0,2.06,0.53,4.51,3.05,4.51c1.19,0,2.39-0.9,2.79-1.39V14.6z" fill="#97be0d"></path>-->
<#--                        <path d="M217.41,24.43c0.2,0.66,0,0.83-0.43,1.03c-1.49,0.66-3.29,0.96-5.04,0.96c-4.81,0-8.2-2.79-8.2-8.26c0-5.38,3.22-8.79,8.5-8.79c1.56,0,3.05,0.23,4.61,0.9c0.46,0.2,0.46,0.5,0.37,0.96l-0.53,2.39c-0.13,0.53-0.46,0.5-0.9,0.33c-0.93-0.37-1.89-0.63-2.92-0.63c-2.59,0-3.98,1.73-3.98,4.58c0,3.22,1.46,4.61,4.15,4.61c1.03,0,1.76-0.17,2.92-0.6c0.36-0.13,0.7-0.2,0.83,0.3L217.41,24.43z" fill="#97be0d"></path>-->
<#--                        <path d="M229.79,10.79c0.2-0.66,0.56-0.96,1.23-0.96h3.42c0.56,0,0.66,0.5,0.5,0.93l-6.57,17.06c-1.53,3.95-3.52,5.38-7.83,5.38c-0.76,0-1.33-0.07-1.99-0.2c-0.63-0.13-0.63-0.53-0.56-1.06l0.3-2.09c0.1-0.66,0.37-0.73,0.66-0.73c0.33,0,0.8,0.1,1.63,0.1c1.96,0,2.82-0.63,3.39-2.09l0.4-1.03l-6.14-15.27c-0.2-0.46,0.03-1,0.6-1h3.92c0.56,0,0.86,0.27,1,0.66l3.09,9.82h0.1L229.79,10.79z" fill="#97be0d"></path>-->
<#--                    </svg>-->
<#--                </a>-->
<#--                <ul class="main-menu">-->
<#--                    <li><a class="scroll" href="#about">About</a></li>-->
<#--                    <li><a class="scroll" href="#">Prescriptions</a></li>-->
<#--                    <li><a class="scroll" href="#reviews">Reviews</a></li>-->
<#--                    <li><a class="scroll" href="#">Pharmacy services</a></li>-->
<#--                    <li><a class="scroll" href="#">Health & advice</a></li>-->
<#--                </ul>-->
<#--            </div>-->
<#--            <div class="sidebar">-->
<#--                <a href="#"><i class="fa fa-user"></i></a>-->
<#--            </div>-->
<#--        </div>-->
        <div class="headline">
            <div class="container">
                <div class="row">
                    <div class="col-6 offset-3">
                        <p>At Pharmacy Lab, we believe that being a local independent pharmacy means providing our patients with medical and drug services tailored to their needs. Order the necessary medicines and try our loyalty system</p>
                        <a href="/products" class="offer">Try it!</a>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <section id="about">
        <div class="container">
            <div class="col">
                <h3>About us</h3>
            </div>
            <div class="row">
                <div class="col-7">
                    <div class="ticket">
                        <h4>NHS prescriptions, delivered to your door, for free</h4>
                        <p>Taking care of your NHS prescriptions. Order your medicine, get reminders and have it delivered for free. To your home, your family or friends.</p>
                        <a href="/login" class="trigger">Sign up for free</a>
                    </div>
                </div>
                <div class="col-5">
                    <div class="ticket">
                        <iframe width="450px" height="290px" src="https://www.youtube.com/embed/ngC4cfZU7A0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-6">
                    <div class="ticket">
                        <h4>NHS prescriptions, delivered to your door</h4>
                        <p>Taking care of your NHS prescriptions. Order your medicine, get reminders and have it delivered for free. To your home, your family or friends.</p>
                    </div>
                </div>
                <div class="col-6">
                    <div class="ticket">
                        <h4>Order your medicine</h4>
                        <p>Taking care of your NHS prescriptions. Order your medicine, get reminders and have it delivered for free. To your home, your family or friends.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <script src="/static/js/libs.min.js" defer></script>
    <script src="/static/js/common.js" defer></script>
    <!-- Yandex.Metrika counter --><!-- /Yandex.Metrika counter -->
    <!-- Google Analytics counter --><!-- /Google Analytics counter -->
    </body>
    </html>



</@t.template>