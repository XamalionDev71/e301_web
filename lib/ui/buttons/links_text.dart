import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LinksText extends StatelessWidget {
  final String text;

  const LinksText({
    super.key,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      child: Text(text,
        style: GoogleFonts.montserratAlternates(
          fontSize: 14,
          color: Colors.grey[600],
        ),
      ),
    );
  }
}
