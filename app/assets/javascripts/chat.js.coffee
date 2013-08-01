$ ->
  console.log('loading chat on'+ window.location.host)
  socket = new WebSocket "ws://#{window.location.host}/chat"

  socket.onopen = () ->
    $("#output").append "READY TO CHAT! <br>"

  socket.onmessage = (event) ->
    if event.data.length
      $("#output").append "#{event.data}<br>"

  $("body").on "submit", "form.chat", (event) ->
    event.preventDefault()
    $input = $(this).find("input")
    socket.send $input.val()
    $input.val(null)