import 'package:flutter/material.dart';
import 'package:flutter_ilk_deneme/02/package/loading_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class PackageLearnView extends StatefulWidget {
  const PackageLearnView({super.key});

  

  @override
  State<PackageLearnView> createState() => _PackageLearnViewState();
}

class _PackageLearnViewState extends State<PackageLearnView> with TickerProviderStateMixin {
  
  final httpsUri = Uri(
    scheme: 'https',
    host: 'pub.dev',
    path: '/packages/url_launcher'
  );
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _launchUrl(httpsUri);
        }
      ),
      body: Column(
        children:  [
          Text('a', style: Theme.of(context).textTheme.headlineLarge),
          const LoadingBar(),
        ],
      ),
    );
  }
}

void _launchUrl(url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

