import 'package:djangoflow_markdown_truncate/djangoflow_markdown_truncate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Djangoflow Markdown Truncate Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final String markdownSample = '''
# Flutter Markdown Truncate Example

This is an example of a Markdown content that supports both **maxCharacters** and **maxLines** truncation.

### Features
- **Bold text** is preserved.
- _Italic text_ is preserved.
- Links like [Google](https://google.com) are also preserved.
- Code snippets: `flutter create .`

Try to truncate this text by setting different values for **maxCharacters** or **maxLines**.
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Djangoflow Markdown Truncate Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Default MarkdownBody (No Truncation)',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: 10),
              MarkdownBody(
                data: markdownSample,
                styleSheet: MarkdownStyleSheet.fromTheme(Theme.of(context)),
              ),
              Divider(),
              Text(
                'Character-based Truncation (max 100 characters)',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: 10),
              DjangoflowMarkdownCharacterTruncate(
                data: markdownSample,
                maxCharacters: 100,
                styleSheet: MarkdownStyleSheet.fromTheme(Theme.of(context)),
                onReadMoreTapped: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Read more tapped!')),
                  );
                },
              ),
              Divider(),
              Text(
                'Line-based Truncation (max 3 lines)',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: 10),
              DjangoflowMarkdownLineTruncate(
                data: markdownSample,
                maxLines: 3,
                styleSheet: MarkdownStyleSheet.fromTheme(Theme.of(context)),
                onReadMoreTapped: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Read more tapped!')),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
