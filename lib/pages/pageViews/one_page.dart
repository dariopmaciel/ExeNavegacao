import 'package:flutter/material.dart';

class OnePage extends StatelessWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.blue,
          ),
          child: const Center(
            child: Text(
              "Olá Dario",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
        ),
        const Text(
          "---Slice to left---",
          textAlign: TextAlign.left,
        ),
        Row(
          children: [
            Container(
              color: Colors.red,
              height: 100,
              width: 180,
              child: const Center(
                child: Text("Container 1"),
              ),
            ),
            Container(
              color: Colors.purple,
              height: 100,
              width: 180,
              child: const Center(
                child: Text("Container 2"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
