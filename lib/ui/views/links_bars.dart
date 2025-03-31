
import 'package:e301_web/ui/buttons/links_text.dart';
import 'package:flutter/material.dart';

class LinksBars extends StatelessWidget {
  const LinksBars({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
        width: double.infinity,
        height: 70,
        child: Wrap(
          alignment: WrapAlignment.center,
          children: [
            LinksText(text: 'About',onPressed:() => print('Click on About')),
            LinksText(text: 'Help Center'),
            LinksText(text: 'Terms of Service'),
            LinksText(text: 'Cookies Privacy'),
            LinksText(text: 'Ads Info'),
            LinksText(text: 'Blog'),
            LinksText(text: 'Status'),
            LinksText(text: 'Careers'),
            LinksText(text: 'Brand Reosurces'),
            LinksText(text: 'Advertisng'),
            LinksText(text: 'Marketing'),
          ],
        ),
      ),
    );
  }
}