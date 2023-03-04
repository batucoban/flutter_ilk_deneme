import 'package:flutter/material.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {

  late final TabController _tabController;
  final double _notchedValue = 10;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _MyTabViews.values.length, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: _MyTabViews.values.length, child: Scaffold(
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(onPressed: (){
        _tabController.animateTo(_MyTabViews.home.index);
      }),
      bottomNavigationBar: BottomAppBar(
        notchMargin: _notchedValue,
        shape: const CircularNotchedRectangle(),
        child: _myTabView(),
      ),
      appBar: AppBar(),
      body: _tabbarView(),
    ));
  }

  TabBar _myTabView() {
    return TabBar(
        controller: _tabController,
        tabs: _MyTabViews.values.map((e) => Tab(text: e.name)).toList()
      );
  }

  TabBarView _tabbarView() {
    return TabBarView(
      controller: _tabController,
      children: [
      Container(color: Colors.red),
      Container(color: Colors.blue),
      Container(color: Colors.green),
      Container(color: Colors.grey),
    ]);
  }
}

enum _MyTabViews {home, settings, favorite, profile }

extension _MyTabViewExtension on _MyTabViews{

}