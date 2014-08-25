$ ->
  $('.add_questions_table tr td').on 'click', (e) ->
    e.preventDefault()
    e.stopPropagation()

    input = $(this).children().children('input[type=checkbox]')
    if input.is(':checked')
      input.removeAttr('checked')
    else
      input.prop('checked', 'true')