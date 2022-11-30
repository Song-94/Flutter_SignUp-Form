import 'package:flutter/material.dart';

class DefaultScaffold extends StatefulWidget {
  final String title;
  final Widget child;

  const DefaultScaffold({
    Key? key,
    required this.title,
    required this.child,
  }) : super(key: key);

  @override
  State<DefaultScaffold> createState() => _DefaultScaffoldState();
}

class _DefaultScaffoldState extends State<DefaultScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
        ),
      ),
      body: widget.child,
    );
  }
}
