import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class MarkdownContent extends StatelessWidget {
  const MarkdownContent({Key? key, required this.data}) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    return MarkdownBody(
      data: data,
      styleSheet: MarkdownStyleSheet(
        h1: TextStyle(
          color: Colors.white,
          fontSize: 40,
        ),
        p: TextStyle(
          color: Colors.white70,
          fontSize: 18,
        ),
      ),
    );
  }
}
