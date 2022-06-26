import 'package:flutter/material.dart';

class BioCard extends StatelessWidget {
  final IconData leadingIcon;
  final String title;
  final String subtitle;
  final IconData trailing;
  final double marginBottom;

  BioCard({
    Key? key,
    required this.leadingIcon,
    required this.title,
    required this.subtitle,
    required this.trailing,
    this.marginBottom = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      margin: EdgeInsets.only(bottom: marginBottom),
      child: ListTile(
        leading: Icon(leadingIcon),
        title: Text(
          title,
          style: TextStyle(
            fontFamily: 'Gemunu',
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            fontFamily: 'Gemunu',
          ),
        ),
        trailing: Icon(trailing),
      ),
    );
  }
}
