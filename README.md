# ColumnScrollView

ColumnScrollView possibility that you create and insert Column and Flex itens inside [SingleChildScrollView].

## Getting Started

In the pubspec.yaml of your flutter project, add the following dependency:

```yaml
dependencies:
  ...
  column_scroll_view: ^1.0.0
```

In your library add the following import:

```dart
import 'package:column_scroll_view/column_scroll_view.dart';
```

## Usage

```dart
ColumnScrollView(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Container(
        color: Color(0xff222222),
        height: 120,
      ),
      Container(
        color: Color(0xff222222),
        height: 120,
      ),
      Container(
        color: Color(0xff222222),
        height: 120,
      )
    ],
  ),
)
```