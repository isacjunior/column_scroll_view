import 'package:column_scroll_view/column_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Widget makeTestableWidget({Widget? child}) {
  return MaterialApp(
    home: Scaffold(
      body: child,
    ),
  );
}

void main() {
  testWidgets('Widget should render with flex false',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      makeTestableWidget(
        child: ColumnScrollView(
          child: Column(
            children: <Widget>[],
          ),
        ),
      ),
    );
    final widget =
        tester.widget<ColumnScrollView>(find.byType(ColumnScrollView));
    expect(widget.flex, false);
    final finderIntrinsicHeight = find.byType(IntrinsicHeight);
    final finderColumn = find.byType(Column);
    expect(finderIntrinsicHeight, findsNothing);
    expect(finderColumn, findsOneWidget);
  });

  testWidgets('Widget should render with flex true',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      makeTestableWidget(
        child: ColumnScrollView(
          flex: true,
          child: Column(
            children: <Widget>[
              Container(),
              Expanded(
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
    final widget =
        tester.widget<ColumnScrollView>(find.byType(ColumnScrollView));
    expect(widget.flex, true);
    final finderIntrinsicHeight = find.byType(IntrinsicHeight);
    final finderColumn = find.byType(Column);
    expect(finderIntrinsicHeight, findsOneWidget);
    expect(finderColumn, findsOneWidget);
  });
}
