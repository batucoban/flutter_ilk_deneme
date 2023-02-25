import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({super.key});

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {

  //var _MyColors2 = [Colors.red, Colors.yellow, Colors.blue];
  Color? _backgroundColor = Colors.transparent;

  void changeBackgroundColor(Color color){
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _colorOnTap,
        items: const [
        BottomNavigationBarItem(
          icon: _ColorContainer(color: Colors.red), 
          label: 'Red'
          ),
        BottomNavigationBarItem(
          icon: _ColorContainer(color: Colors.yellow), 
          label: 'Yellow'
          ),
          BottomNavigationBarItem(
          icon: _ColorContainer(color: Colors.blue), 
          label: 'Blue'
          ),
      ]),
    );
  }

  void _colorOnTap(int value) {
        if(value == _MyColors.red.index){
          changeBackgroundColor(Colors.red);
        }
        else if(value == _MyColors.yellow.index){
          changeBackgroundColor(Colors.yellow);
        }
        else if(value == _MyColors.blue.index){
          changeBackgroundColor(Colors.blue);
        }
      }
}

enum _MyColors {red, yellow, blue}


class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    super.key, required this.color
  });
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
    color: color,
    width: 10,
    height: 10,
    );
  }
}