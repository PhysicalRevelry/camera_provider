import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:new_camera_tutorial/state.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("No Image Selected"),
              //TODO The above should be if/then w image vs text
              RaisedButton(
                onPressed: () {
                  //TODO dialog box with camera vs gallery options
                  Provider.of<CameraController>(context, listen: false)
                      .createDialogBox(context);
                },
                child: Text("Select Image!"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
