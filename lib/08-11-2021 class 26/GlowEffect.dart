import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:registration_morning/08-11-2021%20class%2026/Snackbar%20&%20Toast.dart';

class GlowEffect extends StatefulWidget {
  const GlowEffect({Key? key}) : super(key: key);

  @override
  _GlowEffectState createState() => _GlowEffectState();
}

class _GlowEffectState extends State<GlowEffect> {


  bool checkboxSelected = false;
  bool switchSelected = false;
  bool radioSelected = false;
  bool iconSelected = false;

  double sliderValue = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GlowButton(
              onPressed: () {

                Navigator.push(context, MaterialPageRoute(builder: (context)=>snackbarAndToast()));

              },
              color: Colors.cyan,
              child: Text('Glow'),
            ),
            SizedBox(height: 32),
            GlowCheckbox(
              value: checkboxSelected,
              enable: true,
              color: Colors.cyan,
              onChange: (bool value) {
                setState(() {
                  checkboxSelected = !checkboxSelected;
                });
              },
            ),
            SizedBox(height: 32),
            GestureDetector(
              onTap: () {
                setState(() {
                  iconSelected = !iconSelected;
                });
              },
              child: GlowIcon(
                iconSelected ? Icons.wb_cloudy : Icons.cloud_queue,
                color: Colors.cyan,
                glowColor: iconSelected ? Colors.cyan : Colors.transparent,
                size: 64,
                blurRadius: 9,
              ),
            ),
            SizedBox(height: 32),
            GlowText(
              'Glow Text',
              style: TextStyle(fontSize: 40, color: Colors.cyan),
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GlowRadio<bool>(
                  value: true,
                  groupValue: radioSelected,
                  color: Colors.cyan,
                  onChange: (value) {
                    setState(() {
                      radioSelected = value;
                      log(value.toString());
                    });
                  },
                ),
                SizedBox(width: 32),
                GlowRadio<bool>(
                  value: false,
                  color: Colors.cyan,
                  groupValue: radioSelected,
                  onChange: (value) {
                    setState(() {
                      radioSelected = value;
                      log(value.toString());
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 32),
            GlowSwitch(
              onChanged: (value) {
                setState(() {
                  switchSelected = value;
                });
              },
              value: switchSelected,
              activeColor: Colors.cyan.withOpacity(0.6),
              blurRadius: 4,
            ),
            SizedBox(height: 32),
            GlowLineProgress(
              blurRadius: 12,
              glowColor: Colors.cyan,
            )
          ],
        ),
      ),
    );





  }
}
