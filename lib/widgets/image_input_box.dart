import 'dart:io';
import 'package:flutter/material.dart';
import 'package:acs_community/utils/constants.dart';
import 'package:image_picker/image_picker.dart';

class ImageInputBox extends StatefulWidget {
  @override
  _ImageInputBoxState createState() => _ImageInputBoxState();
}

class _ImageInputBoxState extends State<ImageInputBox> {
  List<File> _images = [];

  Future<void> _pickImages() async {
    final imagePicker = ImagePicker();
    final pickedImages = await imagePicker.pickMultiImage(
      imageQuality: 80,
    );

    if (_images.length + pickedImages.length <= 3) {
      setState(() {
        _images.addAll(pickedImages.map((image) => File(image.path)));
      });
    } else {
      print('เลือกรูปภาพสูงสุดได้ไม่เกิน 3 รูปภาพ');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: _pickImages,
          child: Container(
              height: Dimensions.height80,
              width: Dimensions.width80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius15),
                color: Colors.grey[200],
              ),
              child: const Icon(
                Icons.image,
                color: Colors.grey,
                size: 35,
              )),
        ),
        SizedBox(width: Dimensions.width15),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: _images
                  .map((image) => Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Image.file(
                          image,
                          width: 20,
                          height: 20,
                          fit: BoxFit.cover,
                        ),
                      ))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
