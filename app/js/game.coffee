$ -> # waits for jquery to load

  cnt = 0

  clearBoard = ->
    $('.board-cell').text('')
    cnt = 0

  $('#start-game').on 'click', (e) ->
    clearBoard()
    $(@).hide()
    $('.board').fadeIn(500)

  $('.board-cell').on 'click', (e) ->
    mark = if cnt % 2 == 0 then 'x' else 'o'
    if $(@).text() == ''
      $(@).text mark
      $(@).addClass mark
      cnt += 1


