# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).delegate '.main-content .img-fluid', 'click', (event) ->
  event.preventDefault()
  $src = $(this).attr("src")
  $alt = $(this).attr("alt")
  $title = $(this).attr("title")
  $('#img-modal .modal-body').empty()
  $('#img-modal .modal-body').append('<img src="' + $src + '" alt="' + $alt + '" title="'+ $title + '" class="img-fluid">')
  $("#img-modal").modal()
  return