function triggerCarousel(carousel) {
    var c_lazyload = false;
    var rtl = false;
	if ($("body").hasClass("rtl") || $("body").hasClass("lang-rtl")) rtl = true;	
    // console.log(typeof gdzSetting);
    if(typeof gdzSetting !== 'undefined') {
        var c_lazyload = gdzSetting.carousel_lazyload;
    }
    
    carousel.owlCarousel({
        loop:false,
        rtl:rtl,
        margin:carousel.data("margin"),
        nav:carousel.data("nav"),
        dots:carousel.data("dots"),
        autoplay:carousel.data("auto"),
        rewind:carousel.data("rewind"),
        slideBy:carousel.data("slidebypage"),
        lazyLoad:c_lazyload,
        navText: ['<svg width="29" height="24" viewBox="0 0 29 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M28 12L4 12" stroke="#999999" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M10 18L4 12L10 6" stroke="#999999" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></svg>','<svg width="29" height="24" viewBox="0 0 29 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M1 12H25" stroke="#999999" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M19 6L25 12L19 18" stroke="#999999" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></svg>'],
        responsive: {
            0:{
                items:carousel.data("xs")
            },
            576:{
                items:carousel.data("sm")
            },
            992:{
                items:carousel.data("md")
            }
        }
    });
}
jQuery(function ($) {
    $.each( $('.owl-carousel'), function( key, value ) {
        carousel = $(this);
        triggerCarousel(carousel);
    });

    $.each( $('.countdown'), function( key, value ) {
        var $expire_time = $(this).html();
        var _datetime = $expire_time.split(" ");
        var _date = _datetime[0];
        var _time = _datetime[1];
        var datestr = _date.split("-");
        var timestr = _time.split(":");
        var austDay = new Date(datestr[0], datestr[1]-1, datestr[2], timestr[0], timestr[1], timestr[2],0);
        $(this).countdown({until: austDay});
    });
});
  