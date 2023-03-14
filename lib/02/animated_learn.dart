import 'package:flutter/material.dart';

class AnimatedLearn extends StatefulWidget {
  const AnimatedLearn({super.key});

  @override
  State<AnimatedLearn> createState() => _AnimatedLearnState();
}

class _AnimatedLearnState extends State<AnimatedLearn> with TickerProviderStateMixin {

  // Text('data', style: TextStyle(fontSize: 30, color: Colors.grey),)

  
  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: _durationItems.durationLow);
  }

  
  bool _isVisible = false;
  bool _isOpacity = false;
  late AnimationController controller;

  void _changeVisible() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }
  void _changeOpacity() {
    setState(() {
      _isOpacity = !_isOpacity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _placeHolderWidget(),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        _changeVisible();
        controller.animateTo(_isVisible ? 1 : 0);
      }),
      body: Column(
        children: [
          ListTile(
            title: AnimatedOpacity(
              duration: _durationItems.durationLow,
              opacity: _isOpacity ? 1 : 0,
              child: const Text('data')
              ),
            trailing: IconButton(
              onPressed: (){
                _changeOpacity();
              },
              icon: const Icon(Icons.precision_manufacturing_rounded),
              ),
          ),
           AnimatedDefaultTextStyle(
            style: _isVisible ? const TextStyle(fontSize: 30, color: Colors.grey) 
            : const TextStyle(fontSize: 60, color: Colors.grey), 
            duration: _durationItems.durationLow,
            child: const Text('a')
          ),
          AnimatedIcon(
            icon: AnimatedIcons.menu_close, 
            progress: controller
          ),
          AnimatedContainer(
            duration: _durationItems.durationLow,
            height: _isVisible ? 0 : MediaQuery.of(context).size.width * 0.2,
            width: MediaQuery.of(context).size.height * 0.2,
            color: Colors.blue,
            margin: const EdgeInsets.all(5),
          ),
          Expanded(
            child: AnimatedList(
              itemBuilder: (context, index, animation){
                return const Text('data');
            }
          ))
        ],
      ),
    );
  }

  AnimatedCrossFade _placeHolderWidget() {
    return AnimatedCrossFade(
      firstChild: const Placeholder(),
      secondChild: const SizedBox.shrink(),
      duration: _durationItems.durationLow,
      crossFadeState: _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
    );
  }
}

class _durationItems{
  static const durationLow = Duration(seconds: 1);
}