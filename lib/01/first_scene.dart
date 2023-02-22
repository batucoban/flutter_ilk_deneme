import 'package:flutter/material.dart';

class FirstScene extends StatelessWidget {
  const FirstScene({super.key});
    final title = 'Create your first note';
    final content = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean commodo nec erat non aliquet. Nunc malesuada egestas massa, tincidunt auctor massa tristique et.';
    final _button = 'Create a Note';
    final _importNote = 'Import note';
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(children: [
          PngImage(name: ImageItems().appleBookWithoutPath),
          _TitleWidget(title: title),
          _ContentWidget(content: content),
          const Spacer(),
          ElevatedButton(
            onPressed: () {}, 
            child:  SizedBox(
              height: ButtonHeights.buttonNormalHeight,
              child: Center(
                child: Text(
                  _button,
                  style: const TextStyle(
                    fontSize: 20
                  ),
                ),
              ),
            )
            ),
            TextButton(
              onPressed: () {}, 
              child: Text(
                _importNote
                )
              ),
        ],),
      ),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 25, 
          color: Colors.black, 
          fontWeight: FontWeight.bold
          ),
        ),
    );
  }
}
class _ContentWidget extends StatelessWidget {
  const _ContentWidget({
    required this.content,
  });

  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        content,
        style: const TextStyle(
          fontSize: 18, 
          color: Colors.black,
          ),
        ),
    );
  }
}

class PaddingItems{
  static const EdgeInsets horizontalPadding = EdgeInsets.symmetric(horizontal: 20);
}

class ImageItems{
  final String appleBookWithoutPath = "school";
}

class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPath, fit: BoxFit.cover);
  }
  String get _nameWithPath => 'assets/$name.png';
}

class ButtonHeights{
  static const double buttonNormalHeight = 50;
}