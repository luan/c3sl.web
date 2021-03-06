# This is a manifest file that'll be compiled into including all the files listed below.
# Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
# be included in the compiled file accessible from http://example.com/assets/application.js
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# the compiled file.
#
#= require jquery
#= require jquery-ui
#= require jquery_ujs
#= require jquery.pjax
#= require_tree .

setActiveMenu = () ->
  $("nav#menu > ul > li > a").removeClass("current")
  $("nav#menu > ul > li > a[href='" + location.pathname + "']").addClass("current")

jQuery ->
  setActiveMenu()
  $('body a').pjax('[data-pjax-container]')
  $('[data-pjax-container]').bind('end.pjax', setActiveMenu)
