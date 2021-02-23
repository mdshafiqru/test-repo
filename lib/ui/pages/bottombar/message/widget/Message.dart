
import 'package:flutter/material.dart';
import 'file:///D:/extreme-sm/project/pro-health/lib/ui/pages/bottombar/message/models/ChatMessage.dart';
import 'package:pro_health/ui/utilities/Constant.dart';

void main() {
  runApp(MessageWidget());
}

class MessageWidget extends StatelessWidget {
  MessageWidget({Key key, this.chatMessage}) : super(key: key);
  ChatMessage chatMessage;
  @override
  Widget build(BuildContext context) {
    return MessageWidgetPage(chatMessage: chatMessage,);
  }
}

class MessageWidgetPage extends StatefulWidget {
  MessageWidgetPage({Key key, this.title, this.chatMessage}) : super(key: key);

  final String title;
  ChatMessage chatMessage;

  @override
  _MessageWidgetPageState createState() => _MessageWidgetPageState();
}

class _MessageWidgetPageState extends State<MessageWidgetPage> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
      child: Align(
        alignment: (!widget.chatMessage.reciever ? Alignment.topLeft : Alignment.topRight),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: (widget.chatMessage.reciever ? Colors.teal[50] : Colors.blueGrey[100]),
          ),
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(widget.chatMessage.message),
            ],
          ),
        ),
      ),
    );
  }
}