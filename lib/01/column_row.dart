import 'package:flutter/material.dart';

class ColumnRow extends StatelessWidget {
  const ColumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(flex: 4, child: Row(
            children: [
              Expanded(child: Container(color: Colors.red)),
              Expanded(child: Container(color: Colors.black)),
              Expanded(child: Container(color: Colors.white)),
              Expanded(child: Container(color: Colors.pink)),
            ],
          )),
          const Spacer(flex: 2),
          Expanded(flex: 2, child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text('a1'),
              Text('a2'),
              Text('a3'),
            ],
          )),
          SizedBox(
            height: 200,
            child: Row(
              children: const [],
            ),
          ),
        ],
      ),
    );
  }
}