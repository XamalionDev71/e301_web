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
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.start,
            direction: Axis.horizontal,
            children: [
              WhiteCard(
                title: 'ac_unit_outlined',
                width: 170,
                child: Center(child: Icon(Icons.ac_unit_outlined)),
              ),
              WhiteCard(
                title: 'apps_outage',
                width: 170,
                child: Center(child: Icon(Icons.apps_outage)),
              ),
              WhiteCard(
                title: 'adobe',
                width: 170,
                child: Center(child: Icon(Icons.adobe)),
              ),
              WhiteCard(
                title: 'beenhere',
                width: 170,
                child: Center(child: Icon(Icons.beenhere)),
              ),
              WhiteCard(
                title: 'network_wifi',
                width: 170,
                child: Center(child: Icon(Icons.network_wifi)),
              ),
              WhiteCard(
                title: 'system_update',
                width: 170,
                child: Center(child: Icon(Icons.system_update)),
              ),
            ],
          )
        ],
      ),
    );
  }
}