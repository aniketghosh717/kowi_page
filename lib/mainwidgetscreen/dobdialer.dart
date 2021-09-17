import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Datepicker extends StatefulWidget {


  @override
  _DatepickerState createState() => _DatepickerState();
}

class _DatepickerState extends State<Datepicker> {

  DateTime _dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: CupertinoTheme(
          data: CupertinoThemeData(

            textTheme: CupertinoTextThemeData(
              dateTimePickerTextStyle: TextStyle(
                color: Color(0xFFff5a5a),
                fontSize: 20,

              )
            )
          ),

        child: CupertinoDatePicker(

        initialDateTime: _dateTime,
          mode: CupertinoDatePickerMode.date,
          minimumYear: 2000,
          maximumYear: DateTime.now().year,
          onDateTimeChanged: (dateTime){

          setState(() {
            _dateTime = dateTime;
          });
          },

        ),
      ),
    );
  }
}

