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
          child: Consumer<CameraController>(
            builder: (context, controller, _) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                controller.decideImageView(),
                  RaisedButton(
                    onPressed: () {
                    controller.createDialogBox(context);
                    },
                    child: Text("Select Image!"),
                  ),
                ],
              );
            }
          ),
        ),
      ),
    );
  }
}
