import 'dart:io';
import 'package:flutter/material.dart';
import 'package:acs_community/utils/constants.dart';
import 'package:image_picker/image_picker.dart';

class ImageInputBox extends StatefulWidget {
  final double height;
  final double width;
  final double iconSize;

  const ImageInputBox({
    Key? key,
    this.height = 80,
    this.width = 80,
    this.iconSize = 35,
  }) : super(key: key);

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
            height: widget.height,
            width: widget.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius15),
              color: Colors.grey[200],
            ),
            child: Icon(
              Icons.image,
              color: Colors.grey,
              size: widget.iconSize,
            ),
          ),
        ),
        SizedBox(width: Dimensions.width15),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: _images
                  .map(
                    (image) => Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Image.file(
                        image,
                        width: 20,
                        height: 20,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
