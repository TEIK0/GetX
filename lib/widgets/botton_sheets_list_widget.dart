import 'package:flutter/material.dart';

class BottomSheetListWidget extends StatelessWidget {
  const BottomSheetListWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.icon});

  final String title;
  final String subtitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(color: Colors.white),
      ),
      trailing: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
