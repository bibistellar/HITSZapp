import 'package:flutter/material.dart';


class UpPage extends StatefulWidget {
  @override
  _UpPageState createState() => _UpPageState();
}

class _UpPageState extends State<UpPage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('排行榜'),), 
      body: Container(),
    );
  }
}