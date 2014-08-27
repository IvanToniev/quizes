$ ->
  $('.dropdown').hover(
    -> $(this).addClass 'open'
    -> $(this).removeClass 'open'
  )