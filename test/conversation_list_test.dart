import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:messenger/pages/conversation.dart';
import 'package:messenger/pages/conversation_list.dart';

void main(){
  MaterialApp app = MaterialApp(
    home: Scaffold(
        body: ConversationPageList(),
    ),
  );
  testWidgets('ConversationPageList UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(app);
    expect(find.byType(ConversationPage),findsOneWidget);
    expect(find.byType(PageView),findsOneWidget);

  });
}