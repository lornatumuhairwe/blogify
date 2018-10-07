# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('.link_button.add-reply').click ->
    $(this).next().removeClass('d-none');
    $(this).addClass('d-none');
