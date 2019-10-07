import 'package:flutter/material.dart';
import 'package:messenger/components/chat_appbar.dart';
import 'package:messenger/components/chat_list.dart';
import 'package:messenger/components/input_item.dart';

class ConversationPage extends StatefulWidget {
  @override
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: ChatAppBar(), // Custom app bar for chat screen
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                ChatListWidget(), //Chat list
                InputWidget() // The input widget
              ],
            ),
          ],
        ),
      ),
    );
  }
}
