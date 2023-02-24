import 'package:flutter/material.dart';

class IndicatorDeneme extends StatelessWidget {
  const IndicatorDeneme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [CenterCircularProgress()],
      ),
      body: const Center(
        child: CenterCircularProgress(),
      ),
    );
  }
}

class CenterCircularProgress extends StatelessWidget {
  const CenterCircularProgress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator(
      
    ));
  }
}