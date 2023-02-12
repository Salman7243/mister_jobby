import 'package:flutter/material.dart';

class Dogradio extends StatefulWidget {
  Dogradio({Key? key}) : super(key: key);

  @override
  State<Dogradio> createState() => _DogradioState();
}

String _selectedGender = 'male';

class _DogradioState extends State<Dogradio> {
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
                title: const Text('At the jobber'),
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
                title: const Text('At the master'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
