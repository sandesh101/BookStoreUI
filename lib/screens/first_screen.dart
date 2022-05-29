import 'package:book_store/utils/variables.dart';
import 'package:book_store/widgets/check_box.dart';
import 'package:book_store/widgets/drop_down.dart';
import 'package:book_store/widgets/pick_image.dart';
import 'package:book_store/widgets/text_field.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: iconColor,
        ),
        title: const Text(
          'Book Details',
          style: TextStyle(color: textColor),
        ),
        centerTitle: true,
        backgroundColor: appBarColor,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const PickImage(),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CheckBox(text: 'Borrow', checkboxValue: false),
                  const SizedBox(width: 70),
                  CheckBox(text: 'Sell', checkboxValue: false),
                  const SizedBox(width: 70),
                  CheckBox(text: 'Exchange', checkboxValue: false),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              TextFields(textName: "Book Name*"),
              const SizedBox(
                height: 20,
              ),
              TextFields(textName: "Aurthor Name*"),
              const SizedBox(
                height: 20,
              ),
              const DropDown(),
              TextFields(textName: "Description"),
            ],
          ),
        ),
      ),
    );
  }
}
