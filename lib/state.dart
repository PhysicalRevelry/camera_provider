import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CameraController extends ChangeNotifier {
  //literally copied this shit from the bottom of the stateful tutorial app
  PickedFile imageFile;
  //I don't think I use the following variable anywhere. Why was it in the tutorial?
  String imagePath;

  void _openGallery(BuildContext context) async {
    // ignore: deprecated_member_use
    imageFile = await ImagePicker().getImage(source: ImageSource.gallery);
    Navigator.of(context).pop();
  }

  void _openCamera(BuildContext context) async {
    // ignore: deprecated_member_use
    imageFile = await ImagePicker().getImage(source: ImageSource.camera);
    Navigator.of(context).pop();
  }

  // I removed a "saveImage" function here

  void loadImage() async {
    SharedPreferences saveImage = await SharedPreferences.getInstance();
    imagePath = saveImage.getString("image path");
  }



}
