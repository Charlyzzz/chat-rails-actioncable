App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('.messages').append "<p>#{data}<p>"

  chat: (message)->
    @perform 'chat', message: message, user: 'Me!'
