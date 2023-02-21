import 'package:flutter/material.dart';

class ContainerSizedBoxDeneme extends StatelessWidget{
  const ContainerSizedBoxDeneme({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 300,
            height: 200,
            child: Text('a' * 200),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text('b' * 300),
          ),

          Container(
            width: 50,
            height: 50,
            color: Colors.red,
            constraints: const BoxConstraints(
              maxWidth: 500,
            ),
            child: Text('c' * 200),
          )

        ],
      ),
    );
  }
}