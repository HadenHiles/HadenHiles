import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';

class MarkdownContent extends StatelessWidget {
  const MarkdownContent({Key? key, required this.data}) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    return MarkdownBody(
      data: data,
      styleSheet: MarkdownStyleSheet(
        h1: GoogleFonts.openSans(
          color: Colors.white,
          fontSize: 40,
          letterSpacing: .05,
          height: 2,
          fontWeight: FontWeight.bold,
        ),
        p: GoogleFonts.openSans(
          color: Colors.white,
          fontSize: 22,
          letterSpacing: .05,
          height: 2,
        ),
      ),
    );
  }
}
