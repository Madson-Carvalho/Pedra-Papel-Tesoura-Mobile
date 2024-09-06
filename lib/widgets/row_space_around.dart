import 'package:flutter/material.dart';

class RowSpaceAround extends StatefulWidget {
  final List<Widget> children;

  const RowSpaceAround({super.key, required this.children});

  @override
  State<RowSpaceAround> createState() => _RowSpaceAroundState();
}

class _RowSpaceAroundState extends State<RowSpaceAround> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: widget.children,
    );
  }
}
