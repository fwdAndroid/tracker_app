import 'package:flutter/material.dart';
import 'package:tracker_app/components/custom_raised_btn.dart';
import 'package:tracker_app/functions.dart';

class Tracker extends StatefulWidget {
  const Tracker({Key? key}) : super(key: key);

  @override
  _TrackerState createState() => _TrackerState();
}

class _TrackerState extends State<Tracker> {
  FirebaseFunctions firebaseFunctions = FirebaseFunctions();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Tracker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomRaisedBtn(
            color: Colors.white,
            onpressed: () {},
            borderRadius: 12,
            child: Text(
              'Google Sign In',
            ),
          ),
          CustomRaisedBtn(
            color: Colors.blue,
            onpressed: () {},
            borderRadius: 12,
            child: Text(
              'Facebook',
            ),
          ),
          CustomRaisedBtn(
            color: Colors.green,
            onpressed: () {},
            borderRadius: 12,
            child: Text(
              'Sign In with Email',
            ),
          ),
          CustomRaisedBtn(
            color: Colors.yellowAccent,
            onpressed: () {
              //Pubic Go Functions
              firebaseFunctions.signInPublicly();
            },
            borderRadius: 12,
            child: Text(
              'Go Publicily',
            ),
          )
        ],
      ),
    );
  }
}
