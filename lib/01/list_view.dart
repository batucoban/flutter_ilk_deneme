import 'package:flutter/material.dart';

class ListViewDeneme extends StatefulWidget {
  const ListViewDeneme({super.key});

  @override
  State<ListViewDeneme> createState() => _ListViewDenemeState();
}

class _ListViewDenemeState extends State<ListViewDeneme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          FittedBox(
            child: Text(
              'Merhaba',
              style: Theme.of(context).textTheme.headlineLarge,
          
            ),
          ),

          Container(
            color: Colors.red,
            height: 300,
          ),

          const Divider(),

          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  color: Colors.green,
                  width: 300,
                ),
                Container(
                  color: Colors.blue,
                  width: 300,
                ),
                Container(
                  color: Colors.white,
                  width: 300,
                ),
              ],
            ),
          ),

          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.close)
            )

        ],
      ),
    );
  }
}