<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Eternal Bliss Weddings</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Playball&display=swap" rel="stylesheet">

        <!-- Icon Font Stylesheet -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

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
        <div class="container-fluid nav-bar" >
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
                            <a href="/" class="nav-item nav-link fs-5">Beranda</a>
                            <a href="/layanan" class="nav-item nav-link fs-5">Layanan</a>
                            <a href="/galleri" class="nav-item nav-link fs-5">Galeri</a>
                            <a href="/portofolio" class="nav-item nav-link fs-5">Portofolio</a>
                            <a href="/tentang-kami" class="nav-item nav-link fs-5">Tentang Kami</a>
                            <a href="/artikel" class="nav-item nav-link active fs-5">Artikel</a>
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


        <!-- Hero Start -->
        <div class="container-fluid bg-light py-4  mt-0">
            <div class="container text-center animated bounceInDown">
                <h1 class="display-1 mb-4">Artikel Kami</h1>
                <ol class="breadcrumb justify-content-center mb-0 animated bounceInDown">
                    <li class="breadcrumb-item"><a href="/">Beranda</a></li>
                    <li class="breadcrumb-item text-dark" aria-current="page">Artikel</li>
                </ol>
            </div>
        </div>
        <!-- Hero End -->


        <!-- Blog Start -->
        <div class="container-fluid blog py-3" style="background-color:#f8f8f8;">
            <div class="container">
                <div class="text-center wow bounceInUp" data-wow-delay="0.1s">
                    <small class="d-inline-block fw-bold text-dark text-uppercase bg-light border border-primary rounded-pill px-4 py-1 mb-3">Artikel Terbaru</small>
                    <h1 class="display-5 mb-3">Jadilah Orang Pertama Yang Membaca Berita Kami</h1>
                </div>
                <div class="row justify-content-center">
                    @foreach ($blog as $artikel)
                    <div class="col-md-6 col-lg-4 wow bounceInUp" data-wow-delay="0.1s">
                        <div class="blog-item">
                            <div class="overflow-hidden rounded mb-5">
                                <img src="{{ Storage::disk('s3')->url($artikel->image) }}" class="img-fluid w-100" alt="">
                                <div class="blog-content mx-2 d-flex rounded bg-light mt-5" >
                                    <div class="border border-5 border-light border-top-0 p-4">
                                        <span class="card-text mb-3 text-muted" style="font-size: 14px">{{ $artikel->nama_penulis }} , {{ $artikel->date }}</span>
                                        <h5 class="text-primary fw-medium mt-2 mb-3"><a href="/{{ $artikel->slug }}">{{ $artikel->judul }}</a></h5>
                                        <p class="lh-base mb-3 text-dark mt-3">{{ $artikel->deskripsi_singkat }} .....</p>
                                        <a href="#" class="card-link mt-3">#{{ $artikel->kategoris->kategori }}</a>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
        <!-- Blog End -->


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


        <!-- Back to Top -->
        <a href="#" class="btn btn-md-square btn-primary rounded-circle back-to-top"><i class="fa fa-arrow-up"></i></a>   

        
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
    </body>

</html>