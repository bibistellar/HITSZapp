import 'package:flutter/material.dart';
import 'LikePage.dart';
import 'NumberPage.dart';

class RankPage extends StatefulWidget {
  @override
  _RankPageState createState() => _RankPageState();
}

class _RankPageState extends State<RankPage>
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
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 10,
      children: <Widget>[
        Container(
          height: 400,
          width: 150,

          decoration: BoxDecoration(
            color: Colors.red
            
          ),
          
        ),
        Container(
          height: 400,
          width: 150,
          
          decoration: BoxDecoration(
            
            color: Colors.yellow
          ),
        )
      ],
    );
  }
}
