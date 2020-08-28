import 'package:clean_soundboard/sound/ui/sound_screen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:clean_soundboard/sound/ui/sound_widget.dart';

void main() {
  group('Widget Tests:', () {
    
    final testWidget = MaterialApp(
      home: SoundWidget(),
    );
  
    testWidgets('Screen builds', (WidgetTester tester) async {
      await tester.pumpWidget(testWidget);
      await tester.pump(Duration(milliseconds: 200));
      
      expect(find.byType(AppBar), findsOneWidget);
      expect(find.byType(TextFieldListTile), findsOneWidget);
      expect(find.byType(RaisedButton), findsOneWidget);
    });
    
    testWidgets('Text displays correctly', (WidgetTester tester) async {
      await tester.pumpWidget(testWidget);
      await tester.pump(Duration(milliseconds: 200));
      
      expect(find.text('Sample clean_framework app'), findsOneWidget);
      expect(find.text('Sound URL'), findsOneWidget);
    });
  });
}