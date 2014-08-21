# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('.add-question').on 'click', (e) ->
    question_row = $(this).parent().parent()
    $('.quiz_questions').append($(question_row))
    $(this).parent().parent().remove()
