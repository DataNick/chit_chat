var chatboxFocus = new Array();
var chatBoxes = new Array();

var ready = function() {

	chatBox = {

		chatWith: function (conversation_id) {

			chatBox.createChatBox(conversation_id);
			$("#chatbox_" + conversation_id + " .chatboxtextarea").focus();
		},

		close: function(conversation_id) {
			$('#chatbox_' + conversation_id).css('display', 'none');
			chatBox.restructure();
		},

		notify: function() {
			var audioplayer = $('#chatAudio')[0]
			audioplayer.play();
		},

		
	}
}