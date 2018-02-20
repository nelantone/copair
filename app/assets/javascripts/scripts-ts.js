// Toggle responsive Nav
$('.resToggle').on('click', function () {
  $('.the-nav').slideToggle(200)
  $('.the-nav').toggleClass('active')
  $('.resToggle').toggleClass('open')
})
// Clicking a link inside the mobile nav closes the nav
$('.the-nav li a').on('click', function () {
  $('.the-nav').css('display', 'none')
  $('.resToggle').toggleClass('open')
})

// hamburger menu

// fix navbar after scroll
$(window).scroll(function () {
  if ($('.the-header').offset().top > 50) {
    $('.the-header').addClass('affix')
  } else {
    $('.the-header').removeClass('affix')
  }
})
