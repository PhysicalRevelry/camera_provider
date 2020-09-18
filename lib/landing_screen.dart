import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
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
              RaisedButton(
                onPressed: () {
                  //dialog box with camera vs gallery options
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
