import 'package:flutter/material.dart';
import 'landing_screen.dart';

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
                //TODO open gallery
              },
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
            ),
            GestureDetector(
              child: Text("Camera"),
              onTap: () {
                //TODO open camera
              },
            )
          ],
        ),
      ),
    );
  }
}
