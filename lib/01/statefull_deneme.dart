import 'package:flutter/material.dart';
import 'package:flutter_ilk_deneme/product/counter_hello_button.dart';

class StatefulDeneme extends StatefulWidget {
  const StatefulDeneme({super.key});

  @override
  State<StatefulDeneme> createState() => _StatefulDenemeState();
}

class _StatefulDenemeState extends State<StatefulDeneme> {

  int _countValue = 0;

  void _updateCounter(bool isIncrement){
    if(isIncrement){
      _countValue = _countValue + 1;
    }
    else{
      _countValue = _countValue - 1;
    }
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          incrementButton(),
          _deincrementButton(),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              _countValue.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            )
          ),
          const Placeholder(),
          const CounterHelloButton()
        ],
      ),
    );
  }

  FloatingActionButton incrementButton() {
    return FloatingActionButton(onPressed: (){
          _updateCounter(true);
        },
        child: const Icon(Icons.add),
        );
  }

  Padding _deincrementButton() {
    return Padding(
          padding: const EdgeInsets.only(left: 10),
          child: FloatingActionButton(onPressed: (){
            _updateCounter(false);
          },
          child: const Icon(Icons.remove),
          ),
        );
  }
}