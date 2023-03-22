		$(document).ready(function () { 
		$("#searchform").on('submit',(function(e) {
		e.preventDefault();
	var searchinput=$('#searchInput').val();
	//alert(searchinput);
	if ((searchinput)=="") {
		window.location="";
            }
		$.ajax({
			type: "POST", 
			url: "getsearchNow.php",              
			data: new FormData(this), 
			contentType: false,       
			cache: false,             
			processData:false,       

			success: function(html)   
			{ //alert(html);
			if (html) {
			document.getElementById('searchResult').innerHTML = html;
			}
			
			
			}
		});
	
	}));
	
	
	
});
function goBack() { 
  window.history.back();
}

(function($) {
    "use strict";
    var $wn = $(window);
    jQuery(document).ready(function($) {

        /***************
         *  Preloader  *
         ***************/
        var $element = $("#loading");
        $element.fadeOut(1000);

        /***************************
         *   Header Fixed  *
         ***************************/
        $(window).scroll(function() {
            if ($(this).scrollTop() > 1) {
                $('header').addClass("header-small");
            } else {
                $('header').removeClass("header-small");
            }
        });

        /*==============================================
            Parallax
        ==============================================*/

        //$('.parallax').jarallax();

        /*==============================================
            Sub Menu On Mobile
        ==============================================*/

        $(".navbar button").click(function() {
            $(this).toggleClass("nav-active");
        });

        $('.navbar-nav li.has-submenu span').click(function() {
            $(this).parent().find('ul').slideToggle();
            $(this).toggleClass('active');
        });


        /*************************************
         * Bootstrap Dropdown Menu on hover  *
         *************************************/
        function dropdown() {
            var $viewportWidth = $wn.width();
            var $element = $('ul.nav li.dropdown');
            if ($viewportWidth > 767) {
                $element.hover(function() {
                    $(this)
                        .find('.dropdown-menu')
                        .stop(true, true)
                        .delay(200)
                        .slideDown(300);
                }, function() {
                    $(this)
                        .find('.dropdown-menu')
                        .stop(true, true)
                        .delay(200)
                        .slideUp(300);
                });
            }
        }
        $wn.on('resize', dropdown);
        dropdown();

        /************************************
         * Home Page Banner Carousel  Slider*
         ************************************/
        $('.banner-image').owlCarousel({
            loop: true,
            margin: 0,
            nav: true,
            dots: false,
            items: 1,
            autoplay: false,
            responsive: {
                0: {
                    nav: false,
                },
                1200: {
                    nav: true,
                }
            }

        });

        /*==============================================
            Banner Carousel
         ==============================================*/
        var $element = $('.banner-slider');
        if ($element.length > 0) {
            $element.bxSlider({
                controls: false,
                auto: true,
                mode: 'fade',
                speed: 800,
            });
        }

        /*==============================================
            Cources Carousel
         ==============================================*/
        var $element = $('.our-cources .owl-carousel');
        if ($element.length > 0) {
            $element.owlCarousel({
                loop: true,
                margin: 30,
                navText: ['', ''],
                nav: true,
                autoplay: true,
                smartSpeed: 1000,
                autoplayHoverPause: true,
                responsive: {
                    0: {
                        items: 1
                    },

                    480: {
                        items: 2,
                        margin: 20
                    },

                    768: {
                        items: 3,
                        margin: 20
                    },

                    1024: {
                        items: 4,
                        margin: 0
                    },
                }
            });
        }

        /*==============================================
            Participated case Carousel
         ==============================================*/
        var $element = $('.practice-area .owl-carousel');
        if ($element.length > 0) {
            $element.owlCarousel({
                loop: true,
                margin: 0,
                navText: ['', ''],
                nav: true,
                autoplay: true,
                smartSpeed: 1000,
                autoplayHoverPause: true,
                responsive: {
                    0: {
                        items: 1
                    },

                    480: {
                        items: 2,
                    },

                    768: {
                        items: 3,
                    },

                    1024: {
                        items: 3,
                    },
                }
            });
        }

        /****************
         *   Couter up  *
         ****************/
        var $element = $('.counter');
        if ($element.length > 0) {
            $element.counterUp({
                delay: 10,
                time: 1000
            });
        }

        /*********************
         *   magnific-popup  *
         *********************/
        var $groups = {};
        var $gallery = $('.galleryItem');
        $gallery.each(function() {
            var id = parseInt($(this)
                .attr('data-group'), 10);
            if (!$groups[id]) {
                $groups[id] = [];
            }
            $groups[id].push(this);
        });
        $.each($groups, function() {
            $(this)
                .magnificPopup({
                    type: 'image',
                    closeOnContentClick: true,
                    gallery: {
                        enabled: true
                    }
                })
        });

        /***************************
         *   Testimonial Carousel  *
         ***************************/

        $('.testimonial-slide').owlCarousel({
            loop: true,
            margin: 30,
            nav: true,
            items: 1,
            dots: true,
            autoplay: true,
            smartSpeed: 1000,
            responsive: {
                0: {
                    nav: false,
                },

                768: {
                    nav: true,
                    dots: false,
                },
            }
        });

        /**********************
         *   Brands Carousel  *
         **********************/
        var $element = $('.logos .owl-carousel');
        if ($element.length > 0) {
            $element.owlCarousel({
                loop: true,
                margin: 30,
                navText: ['', ''],
                nav: true,
                dots: false,
                autoplay: true,
                smartSpeed: 1000,
                autoplayHoverPause: true,
                responsive: {
                    0: {
                        items: 2,
                        dots: true,
                    },

                    480: {
                        items: 3,
                        margin: 20
                    },

                    768: {
                        items: 4,
                        margin: 20,
                        dots: false,
                    },

                    1024: {
                        items: 5,
                        margin: 30
                    },

                    1200: {
                        items: 6,
                        margin: 30
                    },
                }
            });
        }

        /***************************************
         * footer menu accordian (@media 767)  *
         ***************************************/

        function footerAcc() {
            var $allFooterAcco = $(".foot-nav > ul");
            var $allFooterAccoItems = $(".foot-nav h3");
            if ($wn.width() < 768) {
                $allFooterAcco.css('display', 'none');
                $allFooterAccoItems.on("click", function() {
                    if ($(this)
                        .hasClass('open')) {
                        $(this)
                            .removeClass('open');
                        $(this)
                            .next()
                            .stop(true, false)
                            .slideUp(300);
                    } else {
                        $allFooterAcco.slideUp(300);
                        $allFooterAccoItems.removeClass('open');
                        $(this)
                            .addClass('open');
                        $(this)
                            .next()
                            .stop(true, false)
                            .slideDown(300);
                        return false;
                    }
                });
            } else {
                $allFooterAcco.css('display', 'block');
                $allFooterAccoItems.off();
            }
        }
        $wn.on('resize', function() {
            footerAcc();
        });
        footerAcc();

        /**********************
         *   Gallery Isotope  *
         **********************/
        var $isotopeContainer = $('.isotopeContainer');
        if ($isotopeContainer.length > 0) {
            $isotopeContainer.isotope({
                itemSelector: '.isotopeSelector'

            });
            $('.isotopeFilters')
                .on('click', 'a', function(e) {
                    $('.isotopeFilters')
                        .find('.active')
                        .removeClass('active');
                    $(this)
                        .parent()
                        .addClass('active');
                    var $filterValue = $(this)
                        .attr('data-filter');
                    $isotopeContainer.isotope({
                        filter: $filterValue
                    });
                    e.preventDefault();
                    return false;
                });
        }

        /**************************
         *   Testimonial Masonry  *
         **************************/
        var $element = $('.testimonials');
        if ($element.length > 0) {
            $element.masonry({
                itemSelector: '.grid-item',
                percentPosition: true
            });
        }

        /****************************
         *   News & Events Masonry  *
         ****************************/
        var $element = $('.news-listing');
        if ($element.length > 0) {
            $element.masonry({
                itemSelector: '.grid-item',
                percentPosition: true
            });
        }

        /*****************
         *   Datepicker  *
         *****************/
        var $element = $('.datepicker');
        if ($element.length > 0) {
            $element.datepicker()
        }

        /****************************
         *   Validate Contact Form  *
         ****************************/
        var $form = $("#ContactForm");
        if ($form.length > 0) {
            $form.validate({
                rules: {
                    first_name: {
                        required: true,
                        minlength: 3
                    },
                    last_name: {
                        required: true
                    },
                    company: {
                        required: true
                    },
                    business_email: {
                        required: true,
                        email: true
                    },
                    phone_number: {
                        required: true,
                        number: true,
                        minlength: 10
                    },
                    job_title: {
                        required: true
                    }
                },
                messages: {
                    first_name: {
                        required: "Please Enter Name",
                        minlength: "Name must consist of at least 3 characters"
                    },
                    email: {
                        required: "Please provide an Email",
                        email: "Please enter a valid Email"
                    },
                    phone: {
                        required: "Please provide Phone Number",
                        number: "Please enter only digits",
                        minlength: "Phone Number must be atleast 10 Numbers"
                    },
                    message: {
                        required: "Please Enter Job Tittle"
                    },
                    last_name: {
                        required: "Please Enter Last Name"
                    }
                },

                submitHandler: function($form) {
                    //Send Booking Mail AJAX
                    var formdata = jQuery("#ContactForm")
                        .serialize();
                    jQuery.ajax({
                        type: "POST",
                        url: "contact_form/ajax-contact.php",
                        data: formdata,
                        dataType: 'json',
                        async: false,
                        success: function(data) {
                            if (data.success) {
                                jQuery('.msg')
                                    .removeClass('msg-error');
                                jQuery('.msg')
                                    .addClass('msg-success');
                                jQuery('.msg')
                                    .text('Thank You, Your Message Has been Sent');
                            } else {
                                jQuery('.msg')
                                    .removeClass('msg-success');
                                jQuery('.msg')
                                    .addClass('msg-error');
                                jQuery('.msg')
                                    .text('Error on Sending Message, Please Try Again');
                            }

                        },
                        error: function(error) {
                            jQuery('.msg')
                                .removeClass('msg-success');
                            jQuery('.msg')
                                .addClass('msg-error');
                            jQuery('.msg')
                                .text('Something Went Wrong');
                        }

                    });
                }
            });
        }
    });

    /***************************
     *   Scroll to top action  *
     ***************************/
    var $element = $('.scroll-top');

    $wn.on("scroll", function() {
        if ($(this)
            .scrollTop() > 100) {
            $element.fadeIn();
        } else {
            $element.fadeOut();
        }
    });

    $element.on("click", function() {
        var $scrollElement = $("html, body");
        $scrollElement.animate({
            scrollTop: 0
        }, 600);
        return false;
    });

})(jQuery);