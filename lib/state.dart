import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:new_camera_tutorial/choice_dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CameraController extends ChangeNotifier {
  //literally copied this shit from the bottom of the stateful tutorial app
  PickedFile imageFile;

  void openGallery(BuildContext context) async {
    // ignore: deprecated_member_use
    imageFile = await ImagePicker().getImage(source: ImageSource.gallery);
    Navigator.of(context).pop();
    notifyListeners();
  }

  void openCamera(BuildContext context) async {
    // ignore: deprecated_member_use
    imageFile = await ImagePicker().getImage(source: ImageSource.camera);
    Navigator.of(context).pop();
    notifyListeners();
  }

  Future<Widget> showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return ChoiceDialog();
        });
  }

  Widget decideImageView() {
    return imageFile == null
        ? Text("No image selected")
        : Image.asset(imageFile.path);
  }
}
