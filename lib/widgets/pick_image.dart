import 'dart:io';
import 'package:book_store/utils/variables.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class PickImage extends StatefulWidget {
  const PickImage({Key? key}) : super(key: key);

  @override
  _PickImageState createState() => _PickImageState();
}

class _PickImageState extends State<PickImage> {
  File? imageTemp;
  Future pickImages() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() {
        imageTemp = imageTemporary;
      });
    } catch (error) {
      print("error: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DottedBorder(
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: SizedBox(
            height: 200,
            width: 200,
            child: imageTemp != null
                ? Image.file(imageTemp!)
                : Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 80.0),
                        child: Icon(Icons.add),
                      ),
                      const SizedBox(height: 5.0),
                      TextButton(
                        onPressed: pickImages,
                        child: Text(
                          'Upload Image',
                          style: GoogleFonts.poppins(
                            fontSize: fontSize,
                            color: textColor,
                          ),
                        ),
                      )
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
