import 'package:flutter/material.dart';
import 'state.dart';
import 'package:provider/provider.dart';
//import 'landing_screen.dart';

class ChoiceDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Make a Choice'),
      content: SingleChildScrollView(
        child: ListBody(
          children: [
            GestureDetector(
              child: Text('Gallery'),
              onTap: () {
                Provider.of<CameraController>(context, listen: false)
                    .openCamera(context);
              },
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
            ),
            GestureDetector(
              child: Text("Camera"),
              onTap: () {
                Provider.of<CameraController>(context, listen: false)
                    .openGallery(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
