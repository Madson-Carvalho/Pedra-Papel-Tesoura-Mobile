import 'package:flutter/material.dart';

class CircleAvatarRadius50 extends StatefulWidget {
  final String imagePath;

  const CircleAvatarRadius50({super.key, required this.imagePath});

  @override
  State<CircleAvatarRadius50> createState() => _CircleAvatarRadius50State();
}

class _CircleAvatarRadius50State extends State<CircleAvatarRadius50> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundImage: AssetImage(widget.imagePath),
    );
  }
}
