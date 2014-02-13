Expose =
  init: ->
    Expose.hideTargets()
    Expose.addListeners()

  hideTargets: ->
    $('[ex-target]').each (index, ex) ->
      $ex = $(ex)
      $target = $($ex.attr('ex-target'))
      position = $ex.attr('ex-position')
      reverse = $ex.attr('ex-reverse')
      line = $(ex).offset().top - $(window).scrollTop()

      if position == 'bottom'
        line -= $(window).height()
      else if position == 'middle'
        line -= $(window).height() / 2

      if reverse
        if line > 0
          $target.show()
        else
          $target.hide()
      else
        if line < 0
          $target.show()
        else
          $target.hide()

  addListeners: ->
    $(window).scroll (e) ->
      $('[ex-target]').each (index, ex) ->
        $ex = $(ex)
        $target = $($ex.attr('ex-target'))
        transition = $ex.attr('ex-transition')
        position = $ex.attr('ex-position')
        reverse = $ex.attr('ex-reverse')
        line = $(ex).offset().top - $(window).scrollTop()

        if position == 'bottom'
          line -= $(window).height()
        else if position == 'middle'
          line -= $(window).height() / 2

        if reverse
          if line > 0
            if transition == 'fade'
              $target.fadeIn()
            else
              $target.show()
          else
            if transition == 'fade'
              $target.fadeOut()
            else
              $target.hide()
        else
          if line < 0
            if transition == 'fade'
              $target.fadeIn()
            else
              $target.show()
          else
            if transition == 'fade'
              $target.fadeOut()
            else
              $target.hide()

$ ->
  Expose.init()