import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/variables.dart';

class TextFields extends StatelessWidget {
  final TextEditingController textController = TextEditingController();
  final String textName;
  TextFields({
    Key? key,
    required this.textName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 0.0),
            child: Text(
              textName,
              style: GoogleFonts.poppins(
                fontSize: fontSize,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        TextFormField(
          controller: textController,
        ),
      ],
    );
  }
}
