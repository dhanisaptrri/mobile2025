import 'package:flutter/material.dart';

class FabWidget extends StatelessWidget {

  final VoidCallback? onPressedCallback; 

  const FabWidget({super.key, this.onPressedCallback});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(

      onPressed: onPressedCallback ??
          () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("FAB ditekan"))
            );
          },
      
      child: const Icon(Icons.thumb_up), 
      backgroundColor: Colors.pink,
    );
  }
}