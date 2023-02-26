import 'package:flutter/material.dart';

class ListViewBuilderDeneme extends StatefulWidget {
  const ListViewBuilderDeneme({super.key});

  @override
  State<ListViewBuilderDeneme> createState() => _ListViewBuilderDenemeState();
}

class _ListViewBuilderDenemeState extends State<ListViewBuilderDeneme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.white,
          );
        },
        itemBuilder: (context, index){
        //print(index);
        return SizedBox(
          height: 200,
          child: Column(
            children:  [
              Expanded(child: Image.network('https://picsum.photos/200')),
              Text('$index')
            ],
          ),
        );
      }, itemCount: 15,),
    );
  }
}

