import 'package:flutter/material.dart';

class Cleanpcradio extends StatefulWidget {
  const Cleanpcradio({Key? key}) : super(key: key);

  @override
  State<Cleanpcradio> createState() => _CleanpcradioState();
}

String _selectedGender = 'male';

class _CleanpcradioState extends State<Cleanpcradio> {
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
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        child: Column(
          children: [
            Container(
              child: ListTile(
                leading: Radio<String>(
                  value: '1',
                  groupValue: _selectedGender,
                  onChanged: (value) {
                    setState(() {
                      _selectedGender = value!;
                    });
                  },
                ),
                title: const Text('Free up disk space'),
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
                title: const Text('Slow computer'),
              ),
            ),
            Container(
              child: ListTile(
                leading: Radio<String>(
                  value: '2',
                  groupValue: _selectedGender,
                  onChanged: (value) {
                    setState(() {
                      _selectedGender = value!;
                    });
                  },
                ),
                title: const Text('Virus detection and eradiction'),
              ),
            ),
            Container(
              child: ListTile(
                leading: Radio<String>(
                  value: '1 tim',
                  groupValue: _selectedGender,
                  onChanged: (value) {
                    setState(() {
                      _selectedGender = value!;
                    });
                  },
                ),
                title: const Text('Complete checkup'),
              ),
            ),
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
                title: const Text('Breakdown'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
