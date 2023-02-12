import 'package:flutter/material.dart';

class Caleder extends StatefulWidget {
  const Caleder({Key? key}) : super(key: key);

  @override
  State<Caleder> createState() => _CalederState();
}

const MaterialColor _buttonTextColor = MaterialColor(0xFFC41A3B, <int, Color>{
  50: Color(0xFFC41A3B),
  100: Color(0xFFC41A3B),
  200: Color(0xFFC41A3B),
  300: Color(0xFFC41A3B),
  400: Color(0xFFC41A3B),
  500: Color(0xFFC41A3B),
  600: Color(0xFFC41A3B),
  700: Color(0xFFC41A3B),
  800: Color(0xFFC41A3B),
  900: Color(0xFFC41A3B),
});
String title = 'Data Picker';
DateTime _date = DateTime.now();

class _CalederState extends State<Caleder> {
  // ignore: prefer_void_to_null
  Future<Null> _selectDate(BuildContext context) async {
    DateTime? _datePicker = await showDatePicker(
        context: context,
        initialDate: _date, // Current Date
        firstDate: DateTime(1947), // First Date
        lastDate: DateTime(2030), // Last Date
        textDirection:
            TextDirection.rtl, //Header Text or Button Direction lrt or rtl
        initialDatePickerMode: DatePickerMode.day, // Day or Year Mode
        selectableDayPredicate: (DateTime val) =>
            val.weekday == 6 || val.weekday == 7 ? false : true, // WeekDay Off
        builder: (BuildContext context, child) {
          return Theme(
            data: ThemeData(
              primarySwatch: _buttonTextColor, //Button Color Ok and Cancel
              primaryColor: Color(0xFFC41A3B), // Picked or select date Color
              // Picked or select date Color
            ),
            child: Center(child: child),
          );
        });
    if (_datePicker != null && _datePicker != _date) {
      setState(() {
        _date = _datePicker;
        // ignore: avoid_print
        print(
          _date.toString(),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    cursorColor: Color(0xFFC41A3B),
                    readOnly: true,
                    onTap: () {
                      setState(() {
                        _selectDate(context);
                      });
                    },
                    decoration: InputDecoration(
                      labelText: 'Select Date', // you can style labelText
                      labelStyle: TextStyle(fontSize: 16.0),
                      hintText: (_date.toString()), // you can style hintText
                      border: OutlineInputBorder(),

                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFC41A3B), width: 2.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
