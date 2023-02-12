import 'package:flutter/material.dart';

class Additionl extends StatefulWidget {
  const Additionl({Key? key}) : super(key: key);

  @override
  State<Additionl> createState() => _AdditionlState();
}

String _selectedGender = 'male';

class _AdditionlState extends State<Additionl> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        child: Column(
          children: [
            Container(
              child: ListTile(
                leading: Radio<String>(
                  value: 'Just this time',
                  groupValue: _selectedGender,
                  onChanged: (value) {
                    setState(() {
                      _selectedGender = value!;
                    });
                  },
                ),
                title: const Text('Installing update'),
              ),
            ),
            Container(
              child: ListTile(
                leading: Radio<String>(
                  value: '1 time per week',
                  groupValue: _selectedGender,
                  onChanged: (value) {
                    setState(() {
                      _selectedGender = value!;
                    });
                  },
                ),
                title: const Text('Data backup'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
