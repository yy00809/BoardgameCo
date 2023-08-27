// app/assets/javascripts/channels/chatrooms.coffee
App.chatrooms = App.cable.subscriptions.create({
  channel: "ChatroomChannel",
  slug: window.location.pathname.split("/")[2]
}, {
  connected: function() {},
  disconnected: function() {},
  received: function(data) {
    $("#messages").append("<li><strong>" + data.username + ":</strong> " + data.message + "</li>");
  },
  send_message: function(message, chatroom_id) {
    return this.perform('send_message', {
      message: message,
      chatroom_id: chatroom_id
    });
  }
});

$(document).on('submit', '#new_message', function(e) {
  e.preventDefault();
  var $this = $(this);
  var message = $this.find('#message_body').val();
  var chatroom_id = $this.data('chatroom-id');
  App.chatrooms.send_message(message, chatroom_id);
  $this.find('#message_body').val('');
});
