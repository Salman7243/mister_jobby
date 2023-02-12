import 'package:flutter/material.dart';

class AddSub extends StatefulWidget {
  const AddSub({Key? key}) : super(key: key);

  @override
  State<AddSub> createState() => _CountState();
}

class _CountState extends State<AddSub> {
  int count = 0;
  void incrementcount() {
    setState(() {
      count++;
    });
  }

  void decrementcount() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        FloatingActionButton(
            child: const Icon(
              Icons.remove,
            ),
            backgroundColor: Color.fromARGB(255, 227, 227, 219),
            elevation: 0,
            onPressed: decrementcount),
        SizedBox(
          width: 10,
        ),
        Text("${count}"),
        SizedBox(
          width: 20,
        ),
        FloatingActionButton(
            child: const Icon(Icons.add),
            backgroundColor: Colors.black,
            elevation: 0,
            onPressed: incrementcount),
      ],
    );
  }
}
