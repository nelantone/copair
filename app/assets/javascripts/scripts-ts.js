// Scroll Reveal

window.sr = ScrollReveal();
sr.reveal('.headline', { duration: 2000 });
sr.reveal('.information', { duration: 2000 });


// Smooth scroll and link highlight

$(document).ready(function () {
    $(document).on("scroll", onScroll);
    $('a[href*=\\#]:not([href=\\#])').on('click', function (e) {
        e.preventDefault();
        $(document).off("scroll");

        $('a').each(function () {
            $(this).removeClass('active-link');
        })
        $(this).addClass('active-link');

        var target = this.hash,
            menu = target;
        $target = $(target);
        $('html, body').stop().animate({
            'scrollTop': $target.offset().top-65
        }, 1000, 'swing', function () {
            window.location.hash = target;
            $(document).on("scroll", onScroll);
        });
    });
});
function onScroll(event){
    var scrollPos = $(document).scrollTop();
    $('nav a').each(function () {
        var currLink = $(this);
        var refElement = $(currLink.attr("href"));
        if (refElement.position().top - 65 <= scrollPos && refElement.position().top + refElement.height() > scrollPos) {
            $('nav ul li a').removeClass("active-link");
            currLink.addClass("active-link");
        }
        else{
            currLink.removeClass("active-link");
        }
    });
}

// Toggle responsive Nav
$('.resToggle').on('click', function(){
  $('.the-nav').slideToggle(200);
  $('.the-nav').toggleClass('active');
  $('.resToggle').toggleClass('open');
});
// Clicking a link inside the mobile nav closes the nav
$('.the-nav li a').on('click', function(){
$('.the-nav').css('display', 'none');
$('.resToggle').toggleClass('open');
});

// hamburger menu

// fix navbar after scroll
$(window).scroll(function() {
    if ($(".the-header").offset().top > 50) {
        $('.the-header').addClass('affix');
    } else {
        $('.the-header').removeClass('affix');
    }
});

