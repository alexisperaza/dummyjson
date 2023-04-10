import 'package:flutter/material.dart';

class Flayers extends StatelessWidget {
  final String title;
  final Widget child;
  const Flayers({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 8.0,
        ),
        elevation: 10.0,
        shadowColor: Colors.blueGrey,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 16.0,
                    letterSpacing: 1.2),
              ),
            ),
            child,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Mas informacion',
                    style: TextStyle(color: Colors.blue),
                  )),
            )
          ],
        ));
  }
}
