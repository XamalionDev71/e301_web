import 'package:e301_web/ui/cards/white_card.dart';
import 'package:e301_web/ui/labels/custom_labels.dart';
import 'package:flutter/material.dart';

class IconsView extends StatelessWidget {
  const IconsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Text('Icons View',style: CustomLabels.h1),
          SizedBox(height: 10),
          
        ],
      ),
    );
  }
}