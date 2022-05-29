import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DropDown extends StatefulWidget {
  const DropDown({Key? key}) : super(key: key);

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  List<String> category = ['Noval', 'Sci-Fi', 'History', 'Geography'];
  List<String> condition = ['Excelent', 'Good', 'Ok'];

  String? selectedCategoty = 'Noval';
  String? selectedCondition = 'Good';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              'Category',
              style: GoogleFonts.poppins(
                fontSize: 24,
              ),
            ),
            SizedBox(
              width: 150,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                child: DropdownButton<String>(
                  value: selectedCategoty,
                  items: category
                      .map((category) => DropdownMenuItem<String>(
                            value: category,
                            child: Text(
                              category,
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                              ),
                            ),
                          ))
                      .toList(),
                  onChanged: (category) => setState(() {
                    selectedCategoty = category;
                  }),
                ),
              ),
            ),
          ],
        ), //Category
        Text(
          'Condition',
          style: GoogleFonts.poppins(
            fontSize: 24,
          ),
        ),
        SizedBox(
          width: 150,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
            child: DropdownButton<String>(
              value: selectedCondition,
              items: condition
                  .map((condition) => DropdownMenuItem<String>(
                        value: condition,
                        child: Text(
                          condition,
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                          ),
                        ),
                      ))
                  .toList(),
              onChanged: (condition) => setState(() {
                selectedCondition = condition;
              }),
            ),
          ),
        ),
      ],
    );
  }
}
