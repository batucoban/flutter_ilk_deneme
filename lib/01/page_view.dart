import 'package:flutter/material.dart';

class PageViewDeneme extends StatefulWidget {
  const PageViewDeneme({super.key});
  @override
  State<PageViewDeneme> createState() => _PageViewDenemeState();
}

class _PageViewDenemeState extends State<PageViewDeneme> {
  final _pageController = PageController(viewportFraction: 0.7);
  int _currentPageIndex = 0;

  void _updatePageIndex(int index){
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(_currentPageIndex.toString()),
          ),
          const Spacer(),
          FloatingActionButton(
            onPressed:() {
              _pageController.previousPage(
                duration: _DurationUtility._durationLow, 
                curve: Curves.slowMiddle,
                );
            },
            child: const Icon(Icons.chevron_left),
          ),
          FloatingActionButton(
            onPressed:() {
              _pageController.nextPage(
                duration: _DurationUtility._durationLow, 
                curve: Curves.slowMiddle,
                );
            },
            child: const Icon(Icons.chevron_right),
          ),
        ],
      ),
      appBar: AppBar(),
      body: PageView(
        padEnds: false,
        controller: _pageController,
        onPageChanged: _updatePageIndex,
        children: [
          Container(color: Colors.red),
          Container(color: Colors.blue),
          Container(color: Colors.green),
        ],
      ),
    );
  }
}

class _DurationUtility{
  static const _durationLow = Duration(seconds: 1);
}