import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/variables.dart';

class CheckBox extends StatefulWidget {
  final String text;
  bool checkboxValue = false;
  CheckBox({
    Key? key,
    required this.text,
    required this.checkboxValue,
  }) : super(key: key);

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  @override
  Widget build(BuildContext context) {
    var checkbox = Checkbox(
      value: widget.checkboxValue,
      onChanged: (bool? val) {
        setState(() {
          widget.checkboxValue = val!;
        });
      },
      activeColor: Colors.blue,
    );
    return Row(
      children: [
        Text(
          widget.text,
          style: GoogleFonts.poppins(
            fontSize: fontSize,
          ),
        ),
        checkbox,
      ],
    );
  }
}
