
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:messenger/pages/conversation.dart';
import 'package:messenger/components/chat_appbar.dart';
import 'package:messenger/components/chat_list.dart';
import 'package:messenger/components/input_item.dart';

void main(){
  MaterialApp app = MaterialApp(
    home: Scaffold(
      body:  ConversationPage()
    ),
  );

  testWidgets('ConversationPage UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(app);

    expect(find.byType(ChatAppBar),findsOneWidget);
    expect(find.byType(InputWidget),findsOneWidget);
    expect(find.byType(ChatListWidget),findsOneWidget);


  });
}