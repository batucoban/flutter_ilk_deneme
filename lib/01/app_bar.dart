import 'package:flutter/material.dart';

class AppBarDeneme extends StatelessWidget {
  const AppBarDeneme({super.key});
  final String _title = 'Welcome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: const Icon(Icons.chevron_left),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mark_email_unread_sharp)
            ),
            const Center(child: CircularProgressIndicator())
        ],
      ),
    );
  }
}