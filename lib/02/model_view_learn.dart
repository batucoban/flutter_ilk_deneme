import 'package:flutter/material.dart';
import 'package:flutter_ilk_deneme/02/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  var user9 = PostModel8(body: 'a');
  @override
  void initState() {
    super.initState();

    final user1 = PostModel();
    user1.body = 'hello';

    final user2 = PostModel2(1, 2, 'a', 'b');
    user2.body = 'a';

    final user3 = PostModel3(1, 2, 'a', 'b');
    // user3.body = 'a';

    final user4 = PostModel4(userID: 1, id: 2, title: 'a', body: 'b');
    // user4.body = 'a';

    final user5 = PostModel5(userID: 1, id: 2, title: 'a', body: 'b');

    final user6 = PostModel6(userID: 1, id: 2, title: 'a', body: 'b');
    
    final user7 = PostModel7();

    //servisten data çekiliyorsa en iyisi
    final user8 = PostModel8(body: 'a');
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          user9 = PostModel8(title: 'on pressed');
        });
      }),
      appBar: AppBar(
        title: Text(user9.body ?? 'not'),
      ),
    );
  }
}