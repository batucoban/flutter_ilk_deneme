import 'package:flutter/material.dart';

class CostomWidget extends StatelessWidget {
   const CostomWidget({super.key});
  final String title = 'Food';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(width: MediaQuery.of(context).size.width, child: CostomFoodButton(title: title)),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CostomFoodButton(title: title),
          ),
        ],
        
      ),
    );
  }
}

class CostomFoodButton extends StatelessWidget with _ColorsUtility, _PaddingUtility {
   CostomFoodButton({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: blueColor, 
        shape: const StadiumBorder(),
        ),
      onPressed: () {},
      child: Padding(
        padding: normal2xPadding,
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(color: whiteColor, fontWeight: FontWeight.bold),
          ),
      ),
    );
  }
}

class _PaddingUtility{
  final EdgeInsets normalPadding = const EdgeInsets.all(8.0);
  final EdgeInsets normal2xPadding = const EdgeInsets.all(16.0);
}

class _ColorsUtility{
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
  final Color? blueColor = Colors.blue[700];
}