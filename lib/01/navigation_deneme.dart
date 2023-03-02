import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_ilk_deneme/01/image_deneme.dart';

import 'navigate_detail.dart';

class NavigationDeneme extends StatefulWidget {
  const NavigationDeneme({super.key});

  @override
  State<NavigationDeneme> createState() => _NavigationDenemeState();
}

class _NavigationDenemeState extends State<NavigationDeneme> with NavigatorManager {

  List<int> selectedItems = [];

  void addSelected(int index){
    setState(() {
      selectedItems.add(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index){
          return TextButton(
            onPressed: () async{
              final response = await navigateToWidgetNormal<bool>(context, const NavigateDetail());

              if (response == true) {
                addSelected(index);
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Placeholder(
                color: selectedItems.contains(index) ? Colors.green : Colors.red,
              ),
            ),
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigation_rounded),
        onPressed: () async {
          
        }
      ),
    );
  }
}

mixin NavigatorManager {
  void navigateToWidget(BuildContext context, Widget widget){
    Navigator.of(context).push(MaterialPageRoute(builder: (context){
        return widget;
      },
      fullscreenDialog: true,
      settings: const RouteSettings()
    ));
  }

  Future<T?> navigateToWidgetNormal<T>(BuildContext context, Widget widget){
    return Navigator.of(context).push<T>(MaterialPageRoute(builder: (context){
        return widget;
      },
      fullscreenDialog: true,
      settings: const RouteSettings()
    ));
  }

}