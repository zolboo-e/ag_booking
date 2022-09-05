import 'package:flutter/material.dart';

class ListItem {
  const ListItem({
    required this.leading,
    required this.text,
    this.trailing,
  });

  final Icon leading;
  final Icon? trailing;
  final String text;
}
