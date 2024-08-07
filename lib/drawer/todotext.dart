import 'package:flutter/material.dart';

class Todotext extends StatefulWidget {
  const Todotext({super.key});

  @override
  State<Todotext> createState() => TodotextState();
}

class TodotextState extends State<Todotext> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Todotext",
            ),
          ],
        ),
      ),
    );
  }
}
