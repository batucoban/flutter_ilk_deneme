import 'package:flutter/material.dart';

class SheetLearn extends StatefulWidget {
  const SheetLearn({super.key});

  @override
  State<SheetLearn> createState() => _SheetLearnState();
}

class _SheetLearnState extends State<SheetLearn> {

  Color _backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: _backgroundColor,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.share),
        onPressed: () async {
          final result = await showModalBottomSheet(
            context: context,
            backgroundColor: Colors.red,
            barrierColor: Colors.transparent,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20)
              )
            ),
            isScrollControlled: true,
            builder: (context){
              return _CustomSheet(backgroundColor: _backgroundColor);
          });
          if (result is bool) {
            setState(() {
              _backgroundColor = Colors.cyan;
            });
          }
        }
      ),
    );
  }
}

class _CustomSheet extends StatefulWidget {
  const _CustomSheet({
    // ignore: unused_element
    super.key,
    required Color backgroundColor,
  });

  @override
  State<_CustomSheet> createState() => _CustomSheetState();
}

class _CustomSheetState extends State<_CustomSheet> {

  Color _backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _backgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('data'),
            Image.network('https://picsum.photos/200', height: 200,),
    
            ElevatedButton(
              onPressed: (){
                setState(() {
                  _backgroundColor = Colors.amber;
                });
                Navigator.of(context).pop<bool>(true);
              
              }, 
              child: const Text('OK')
            )
          ],
        ),
      ),
    );
  }
}