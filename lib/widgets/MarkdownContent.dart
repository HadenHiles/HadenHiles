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
          fontSize: 38,
          letterSpacing: .05,
          height: 1,
          fontWeight: FontWeight.bold,
        ),
        h2: GoogleFonts.openSans(
          color: Colors.white,
          fontSize: 30,
          letterSpacing: .05,
          height: 1,
          fontWeight: FontWeight.bold,
        ),
        h3: GoogleFonts.openSans(
          color: Colors.white,
          fontSize: 22,
          letterSpacing: .05,
          height: 1,
          fontWeight: FontWeight.w200,
          fontStyle: FontStyle.italic,
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
