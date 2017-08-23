<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
		<title>主界面</title>
		<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
		<script type="text/javascript" src="js/websocketUtils.js"></script>
		<!-- js code -->
		<script type="text/javascript">
			var ws;
			$(function() {
				var url = "ws://localhost:8080//spring-websocket/webSocketServer";
				ws = websocket.util.getWs(url);
				websocket.util.onopen(ws);

				ws.onmessage = function(event) {
					var receiveMsg = $("#receive").val();
					//$("#receive")[0].innerHTML(receiveMsg + event.data);
					console.log(event.data);
					$("#receive")[0].value = receiveMsg + event.data;
				}
			});

			function send() {
				var value = $("#val").val();
				ws.send(value);
				// 		websocket.util.sendMsg(ws,value);
			}

			function closed() {
				console.log("close ws...");
				websocket.util.onclose(ws);
			}
		</script>
	</head>

	<body>
		欢迎:xxxxxx

		<textarea rows="5" cols="6" id="val">
		输入消息
	</textarea>
		<input type="button" value="Send" onclick="send();" />
		<input type="button" value="Close" onclick="closed();" /><br /> 接受消息框
		<textarea rows="10" cols="15" id="receive">
		
	</textarea>
	</body>

</html>