import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Dialog'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(context: context, builder: (context) {
              return AlertDialog(
                backgroundColor: Colors.amber,
                title: const Text('Alert!'), 
                content: const Text('Something Wrong'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                     child: const Text('Cancle')
                     ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                     child: const Text('Ok')
                     ),   
                ],
              );
            });
          },
          child: const Text('Click Me'),
          ),
      ),
    );
  }
}