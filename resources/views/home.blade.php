<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Eternal Bliss Weddings</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <!-- Meta Description -->
        <meta name="description" content="deskripsi">
        
        <!-- Meta Keywords -->
        <meta name="keywords" content="katakunci">
        
        <!-- Meta Author -->
        <meta name="author" content="author">
        
        <!-- Meta Robots -->
        <meta name="robots" content="index, follow">
        
        <!-- Open Graph Metadata -->
        <meta property="og:title" content="Contoh SEO Metadata untuk HTML, CSS, dan JavaScript">
        <meta property="og:description" content="Ini adalah contoh halaman yang mengoptimalkan metadata untuk SEO menggunakan HTML, CSS, dan JavaScript.">
        <meta property="og:image" content="URL_GAMBAR_THUMBNAIL">
        <meta property="og:url" content="URL_HALAMAN">
        <meta property="og:type" content="website">
        
        <!-- Twitter Card Metadata -->
        <meta name="twitter:card" content="summary_large_image">
        <meta name="twitter:title" content="Contoh SEO Metadata untuk HTML, CSS, dan JavaScript">
        <meta name="twitter:description" content="Ini adalah contoh halaman yang mengoptimalkan metadata untuk SEO menggunakan HTML, CSS, dan JavaScript.">
        <meta name="twitter:image" content="URL_GAMBAR_THUMBNAIL">
        <meta name="twitter:site" content="@UsernameTwitterKamu">
        
        <!-- Canonical Link -->
        <link rel="canonical" href="URL_HALAMAN">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Playball&display=swap" rel="stylesheet">

        <!-- Icon Font Stylesheet -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

        <!-- Libraries Stylesheet -->
        <link href="{{ asset('lib/animate/animate.min.css') }}" rel="stylesheet">
        <link href="{{ asset('lib/lightbox/css/lightbox.min.css') }}" rel="stylesheet">
        <link href="{{ asset('lib/owlcarousel/owl.carousel.min.css') }}" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="{{ asset('css/style.css') }}" rel="stylesheet">
    </head>

    <body>
        <!-- Spinner Start -->
        <div id="spinner" class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50  d-flex align-items-center justify-content-center">
            <div class="spinner-grow text-primary" role="status"></div>
        </div>
        <!-- Spinner End -->

        <!-- Navbar start -->
        <div class="container-fluid nav-bar">
            <div class="container">
                <nav class="navbar navbar-light navbar-expand-lg py-2">
                    <a href="/" class="navbar-brand">
                        @foreach ($logo as $logos)
                            @if ($logos->images)
                                <img src="{{ Storage::disk('s3')->url($logos->images->path) }}" class="img-fluid " alt="Image" style="height:60px; object-fit: cover; ">
                            @else
                                Gambar tidak tersedia
                            @endif
                        @endforeach
                    </a>
                    <button class="navbar-toggler py-2 px-3" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                        <span class="fa fa-bars text-primary"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarCollapse">
                        <div class="navbar-nav mx-auto">
                            <a href="/" class="nav-item nav-link active fs-5">Beranda</a>
                            <a href="/layanan" class="nav-item nav-link fs-5">Layanan</a>
                            <a href="/galleri" class="nav-item nav-link fs-5">Galeri</a>
                            <a href="/portofolio" class="nav-item nav-link fs-5">Portofolio</a>
                            <a href="/tentang-kami" class="nav-item nav-link fs-5">Tentang Kami</a>
                            <a href="/artikel" class="nav-item nav-link fs-5">Artikel</a>
                        </div>
                        <a href="/kontak-kami" class="btn btn-primary py-2 px-4 d-none d-xl-inline-block rounded-pill">Hubungi Kami</a>
                    </div>
                </nav>
            </div>
        </div>
        <!-- Navbar End -->

        <!-- Modal Search Start -->
        <div class="modal fade" id="searchModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-fullscreen">
                <div class="modal-content rounded-0">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Search by keyword</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body d-flex align-items-center">
                        <div class="input-group w-75 mx-auto d-flex">
                            <input type="search" class="form-control bg-transparent p-3" placeholder="keywords" aria-describedby="search-icon-1">
                            <span id="search-icon-1" class="input-group-text p-3"><i class="fa fa-search"></i></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal Search End -->

        <!-- Carousel Start -->
        <div class="container-fluid carousel-header px-0">
            <div id="carouselId" class="carousel slide" data-bs-ride="carousel">
                <ol class="carousel-indicators">
                    @foreach ($carousel as $index => $carousels)
                        <li data-bs-target="#carouselId" data-bs-slide-to="{{ $index }}" class="{{ $index == 0 ? 'active' : '' }}"></li>
                    @endforeach
                </ol>
                <div class="carousel-inner" role="listbox">
                    @foreach ($carousel as $index => $carousels)
                        <div class="carousel-item {{ $index == 0 ? 'active' : '' }}">
                            <img src="{{ Storage::disk('s3')->url($carousels->path) }}" class="img-fluid" alt="Image">
                            <div class="carousel-caption">
                                <div class="p-3" style="max-width: 900px;">
                                    <h4 class="text-primary text-uppercase mb-3">Wedding Organizer Specialist</h4>
                                    <h1 class="display-1 text-capitalize text-dark mb-3">Eternal Bliss Wedding</h1>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselId" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselId" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
        
        <!-- Carousel End -->

         <!-- Pricing Start -->
         <div class="container-fluid service bg-light  py-2">
            <div class="container">
                <div class="text-center wow bounceInUp" data-wow-delay="0.1s">
                    <small class="d-inline-block fw-bold text-dark text-uppercase bg-light border border-primary rounded-pill px-4 py-1 mb-3">Pricelist</small>
                    <h1 class="display-5 mb-3">Paket Impian</h1>
                </div>
                
                <div class="row g-4">
                    @foreach ($price as $prices)
                    <div class="col-lg-3 col-md-6 col-sm-12 wow bounceInUp" data-wow-delay="0.1s">
                        <div class="bg-light rounded service-item">
                            <div class="service-content d-flex align-items-center justify-content-center p-4">
                                <div class="service-content-icon text-center">
                                    <img class="img-fluid rounded w-100 mb-3" src="{{ Storage::disk('s3')->url($prices->image) }}" alt="">
                                    <h3 class="mb-3">{{ $prices->judul }}</h3>
                                    <p class="mb-4">{{ $prices->item1}}</p>
                                    <p class="mb-4">{{ $prices->item2}}</p>
                                    <p class="mb-4">{{ $prices->item3}}</p>
                                    <p class="mb-4">{{ $prices->item4}}</p>
                                    <p class="mb-4">{{ $prices->item5}}</p>
                                    <a href="/layanan" class="btn btn-primary px-4 py-2 rounded-pill">See More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach

                </div>
            </div>
        </div>
        <!-- Pricing End -->

        <!-- About Satrt -->
        <div class="container-fluid py-2 my-3 mb-2" style="background-color:#f8f8f8;">
            <div class="container-fluid">
                <div class="row g-0 mx-auto align-items-center">
                    <div class="col-lg-12 wow bounceInUp " data-wow-delay="0.1s" style="min-height: 400px;">
                        <div class="position-relative h-100">
                            <div class="video">
                                @foreach ($header as $headers)
                                <img src={{ Storage::disk('s3')->url($headers->images->path) }} class="position-absolute img-fluid w-100 h-100" alt="Image">                 
                                @endforeach
                                @foreach ($about as $abouts)
                                <button type="button" class="btn btn-play" data-bs-toggle="modal" data-src="{{ $abouts->video }}" data-bs-target="#videoModal">
                                    <span></span>
                                </button>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row g-5 align-items-center mt-1">
                    <div class="col-lg-12 text-center mx-auto wow bounceInUp" data-wow-delay="0.3s">
                        @foreach ($about as $abouts)
                        <small class="d-inline-block fw-bold text-dark text-uppercase bg-light border border-primary rounded-pill px-4 py-1 mb-3">Tentang Kami</small>
                            <h1 class="display-5 mb-4">{{ $abouts->judul }}</h1>
                            <p class="mb-4">{{ $abouts->text }}</p>
                        @endforeach
                        
                        <a href="/tentang-kami" class="btn btn-primary py-3 px-5 rounded-pill">Read More<i class="fas fa-arrow-right ps-2"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <!-- About End -->

        <!-- Modal Video -->
        <div class="modal fade" id="videoModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content rounded-0">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Youtube Video</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <!-- 16:9 aspect ratio -->
                        <div class="ratio ratio-16x9">
                            <iframe class="embed-responsive-item" src="" id="video" allowfullscreen allowscriptaccess="always"
                                allow="autoplay"></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Service Start -->
        <div class="container-fluid service bg-light py-3" style="background-color:#f8f8f8;">
            <div class="container">
                <div class="text-center wow bounceInUp" data-wow-delay="0.1s">
                    <small class="d-inline-block fw-bold text-dark text-uppercase bg-light border border-primary rounded-pill px-4 py-1 mb-3">Layanan Kami</small>
                    <h1 class="display-5 mb-2">Apa yang Kami Tawarkan</h1>
                </div>
                <div class="row g-4">
                    @foreach ($service as $layanan)
                    <div class="col-lg-3 col-md-6 col-sm-12 wow bounceInUp" data-wow-delay="0.1s">
                        <div class="bg-light rounded service-item">
                            <div class="service-content d-flex align-items-center justify-content-center p-4">
                                <div class="service-content-icon text-center">
                                    <img class="img-fluid rounded w-100 mb-3" src="{{ Storage::disk('s3')->url($layanan->image) }}" alt="">
                                    <h4 class="mb-3">{{ $layanan->judul }}</h4>
                                    <p class="mb-4">{{ $layanan->detail}}</p>
                                    <a href="/layanan" class="btn btn-primary px-4 py-2 rounded-pill">Read More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
        <!-- Service End -->

       


        <!-- Gallery Start -->
        <div class="container-fluid event py-4"style="background-color:#f8f8f8;">
            <div class="container">
                <div class="text-center wow bounceInUp" data-wow-delay="0.1s">
                    <small class="d-inline-block fw-bold text-dark text-uppercase bg-light border border-primary rounded-pill px-4 py-1 mb-3">Galeri</small>
                    <h1 class="display-5 mb-3">Galeri Event Profesional kami</h1>
                </div>
                <div class="tab-class text-center">
                    <div class="tab-content">
                        <div id="tab-1" class="tab-pane fade show p-0 active">
                            <div class="row g-4">
                                <div class="col-lg-12">
                                    <div class="row g-4">
                                        @foreach ($gallery as $galeri)
                                        <div class="col-md-6 col-lg-3 wow bounceInUp" data-wow-delay="0.1s">
                                            <div class="event-img position-relative">
                                                @if ($galeri->images)
                                                    <img class="img-fluid rounded w-100" src="{{ Storage::disk('s3')->url($galeri->images->path) }}" alt="">
                                                <div class="event-overlay d-flex flex-column p-4">
                                                    <h4 class="me-auto">{{ $galeri->texts->heading }}</h4>
                                                    <a href="{{ Storage::disk('s3')->url($galeri->images->path) }}" data-lightbox="event-1" class="my-auto"><i class="fas fa-search-plus text-dark fa-2x"></i></a>
                                                </div>
                                                @endif
                                            </div>
                                        </div>
                                        @endforeach   
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab-2" class="tab-pane fade show p-0">
                            <div class="row g-4">
                                <div class="col-lg-12">
                                    <div class="row g-4">
                                        @foreach ($gallery as $galeri)
                                        <div class="col-md-6 col-lg-3">
                                            <div class="event-img position-relative">
                                                @if ($galeri->images && ($galeri->texts->heading == 'Wedding'))
                                                <img class="img-fluid rounded w-100" src="{{ Storage::disk('s3')->url($galeri->images->path) }}" alt="">
                                                <div class="event-overlay d-flex flex-column p-4">
                                                    <h4 class="me-auto">{{ $galeri->texts->heading }}</h4>
                                                    <a href="{{ Storage::disk('s3')->url($galeri->images->path) }}" data-lightbox="event-8" class="my-auto"><i class="fas fa-search-plus text-dark fa-2x"></i></a>
                                                </div>
                                                @endif
                                            </div>
                                        </div>
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab-3" class="tab-pane fade show p-0">
                            <div class="row g-4">
                                <div class="col-lg-12">
                                    <div class="row g-4">
                                        @foreach ($gallery as $galeri)
                                        <div class="col-md-6 col-lg-3">
                                            <div class="event-img position-relative">
                                                @if ($galeri->images && ($galeri->texts->heading == 'Engagement'))
                                                <img class="img-fluid rounded w-100" src="{{ Storage::disk('s3')->url($galeri->images->path) }}" alt="">
                                                <div class="event-overlay d-flex flex-column p-4">
                                                    <h4 class="me-auto">{{ $galeri->texts->heading }}</h4>
                                                    <a href="{{ Storage::disk('s3')->url($galeri->images->path) }}" data-lightbox="event-8" class="my-auto"><i class="fas fa-search-plus text-dark fa-2x"></i></a>
                                                </div>
                                                @endif
                                            </div>
                                        </div>
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Gallery End -->
        
        <!-- Testimonial Start -->
        <div class="container-fluid bg-light py-4" >
            <div class="container">
                <div class="text-center wow bounceInUp" data-wow-delay="0.1s">
                    <small class="d-inline-block fw-bold text-dark text-uppercase bg-light border border-primary rounded-pill px-4 py-1 mb-3">Testimonial</small>
                    <h1 class="display-5 mb-5">Apa kata Pelanggan Kami!</h1>
                </div>
                
                <div class="owl-carousel owl-theme testimonial-carousel testimonial-carousel-1 mb-4 wow bounceInUp" data-wow-delay="0.1s">
                    @foreach ($testimoni as $review)
                    <div class="testimonial-item rounded bg-light">
                        <div class="d-flex mb-3">
                            <img src="{{ Storage::disk('s3')->url($review->image) }}" class="img-fluid rounded-circle flex-shrink-0" alt="">
                            <div class="position-absolute" style="top: 15px; right: 20px;">
                                <i class="fa fa-quote-right fa-2x"></i>
                            </div>
                            <div class="ps-3 my-auto">
                                <h4 class="mb-0">{{ $review->name }}</h4>
                                <p class="m-0">{{ $review->job }}</p>
                            </div>
                        </div>
                        <div class="testimonial-content">
                            <p class="fs-5 m-0 pt-3">{{ $review->description }}</p>
                        </div>
                    </div>
                    @endforeach
                </div>
                
            </div>
        </div>
        <!-- Testimonial End -->

        <!-- Team Start -->
        <div class="container-fluid team py-4"style="background-color:#f8f8f8;">
            <div class="container">
                <div class="text-center wow bounceInUp" data-wow-delay="0.1s">
                    <small class="d-inline-block fw-bold text-dark text-uppercase bg-light border border-primary rounded-pill px-4 py-1 mb-3">Team Kami</small>
                    <h1 class="display-5 mb-5">Kami Memiliki Tim Yang Berpengalaman</h1>
                </div>
                <div class="row g-4">
                    @foreach ($team as $tim)
                    <div class="col-lg-3 col-md-6 wow bounceInUp" data-wow-delay="0.1s">
                        <div class="team-item rounded">
                            <img class="img-fluid rounded-top " src="{{ Storage::disk('s3')->url($tim->image) }}" alt="">
                            <div class="team-content text-center py-3 bg-dark rounded-bottom">
                                <h4 class="text-primary">{{ $tim->judul }}</h4>
                                <p class="text-white mb-0">{{ $tim->detail }}</p>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
        <!-- Team End -->

        <!-- Google Maps Section -->
        @foreach ($contact as $kontak)
            <div class="map-container">
                <iframe src="{{ $kontak->map }}" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        @endforeach

        <!-- Footer Start -->
        <div class="container-fluid footer py-3 my-2 mb-0 bg-light wow bounceInUp" data-wow-delay="0.1s">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div class="footer-item">
                            @foreach ($logo as $logos)
                                @if ($logos->images)
                                    <img src="{{ Storage::disk('s3')->url($logos->images->path) }}" class="img-fluid " alt="Image" style="height: 50px; object-fit: cover; ">
                                @else
                                    Gambar tidak tersedia
                                @endif
                            @endforeach
                            @foreach ($about as $abouts)
                            <p class="lh-lg mb-4">{{ $abouts->text }}</p>
                        @endforeach 
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="footer-item">
                        
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="footer-item">
                            @foreach ($contact as $kontak)
                            <h4 class="mb-4">Follow US</h4>
                            <div class="d-flex flex-column align-items-start">
                                <p><a href="https://wa.me/{{ $kontak->whatsapp }}" target="Tes Aja"><i class="fab fa-whatsapp text-primary me-2"></i> Whatsapp</p>
                                <p><a href="{{ $kontak->instagram }}"><i class="fab fa-instagram text-primary me-2"></i> Instagram</p>
                                <p><a href="{{ $kontak->tiktok }}"><i class="fab fa-tiktok text-primary me-2"></i> Tiktok</p>
                                <p><a href="{{ $kontak->youtube }}"><i class="fab fa-youtube text-primary me-2"></i> Youtube</p>
                            </div>
                            @endforeach
                        </div>
                    </div>
                </div>
                {{-- @endforeach --}}
            </div>
        </div>
        <!-- Footer End -->

        <!-- Back to Top -->
        @foreach ($contact as $kontak)
            <a href="https://wa.me/{{ $kontak->whatsapp }}?text=Halo,%20saya%20tertarik%20dengan%20layanan%20Anda." class="whatsapp-sticky">
                <i class="fab fa-whatsapp"></i>
            </a>
        @endforeach

        <!-- Copyright Start -->
        <div class="container-fluid copyright bg-dark py-4">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                        <span class="text-light"><a href="#"><i class="fas fa-copyright text-light me-2"></i>Your Site Name</a>, All right reserved.</span>
                    </div>
                    <div class="col-md-6 my-auto text-center text-md-end text-white">
                        Designed By <a class="border-bottom" href="https://websidn.com">Websidn</a> Distributed By <a class="border-bottom" href="">Newus Technology</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Copyright End -->


        
        
        <!-- JavaScript Libraries -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="{{ asset('lib/wow/wow.min.js') }}"></script>
        <script src="{{ asset('lib/easing/easing.min.js') }}"></script>
        <script src="{{ asset('lib/waypoints/waypoints.min.js') }}"></script>
        <script src="{{ asset('lib/counterup/counterup.min.js') }}"></script>
        <script src="{{ asset('lib/lightbox/js/lightbox.min.js') }}"></script>
        <script src="{{ asset('lib/owlcarousel/owl.carousel.min.js') }}"></script>

        <!-- Template Javascript -->
        <script src="{{ asset('js/main.js') }}"></script>

        <!-- SEO Structur Data -->
    <script type="application/ld+json">
        {
          "@context": "https://schema.org",
          "@type": "Organization",
          "name": "Nama Organisasi",
          "url": "https://www.namaorganisasi.com",
          "logo": "https://www.namaorganisasi.com/logo.png",
          "contactPoint": {
            "@type": "ContactPoint",
            "telephone": "+1-800-555-1212",
            "contactType": "Customer Service"
          },
          "sameAs": [
            "https://www.facebook.com/namaorganisasi",
            "https://www.twitter.com/namaorganisasi",
            "https://www.instagram.com/namaorganisasi"
          ]
        }
    </script>  

    </body>
</html>