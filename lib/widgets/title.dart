import 'package:flutter/material.dart';

class CustomTitle extends StatefulWidget {
  final String title;

  const CustomTitle({super.key, required this.title});

  @override
  State<CustomTitle> createState() => _CustomTitleState();
}

class _CustomTitleState extends State<CustomTitle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Text(
        widget.title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
