import 'package:flutter/material.dart';
import 'package:kenya_app/screens/dashboard.dart';
import 'package:kenya_app/utils/my_colors.dart';
import 'package:kenya_app/utils/my_dimensions.dart';

class ReenterSetUpScreen extends StatefulWidget {
  @override
  _ReenterSetUpScreenState createState() => _ReenterSetUpScreenState();
}

class _ReenterSetUpScreenState extends State<ReenterSetUpScreen> {
  int _firstPin, _secondPin, _thirdPin, _forthPin;

  @override
  void initState() {
   
    super.initState();
  }

  

  _handleOnNumTap(int num) {
    print(num);
     if (_firstPin == null) {
        setState(() {
          _firstPin = num;
        });
        
      } else if (_secondPin == null) {
        setState(() {
          _secondPin = num;
        });
        
      } else if (_thirdPin == null) {
        setState(() {
          _thirdPin = num;
        });
        
      } else if (_forthPin == null) {
        setState(() {
          _forthPin = num;
        });
        Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardScreen()));
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: setUpBgColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Confirm Pin',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 70),
            Text("Please re-enter your Security pin"),
            SizedBox(height: 5),
            Container(
              height: 100,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(),
                  ),
                  _firstPin == null
                      ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: primaryColor.withOpacity(0.5),
                            ),
                          ),
                        )
                      : Text(
                          _firstPin.toString(),
                          style: TextStyle(fontSize: 45, color: primaryColor),
                        ),
                  _secondPin == null
                      ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: primaryColor.withOpacity(0.5),
                            ),
                          ),
                        )
                      : Text(
                          _secondPin.toString(),
                          style: TextStyle(fontSize: 45, color: primaryColor),
                        ),
                  _thirdPin == null
                      ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: primaryColor.withOpacity(0.5),
                            ),
                          ),
                        )
                      : Text(
                          _thirdPin.toString(),
                          style: TextStyle(fontSize: 45, color: primaryColor),
                        ),
                  _forthPin == null
                      ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: primaryColor.withOpacity(0.5),
                            ),
                          ),
                        )
                      : Text(
                          _forthPin.toString(),
                          style: TextStyle(fontSize: 45, color: primaryColor),
                        ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(),
                ),
                RawMaterialButton(
                  fillColor: Colors.white,
                  elevation: pinElevation,
                  highlightElevation: pinElevation,
                  shape: CircleBorder(),
                  child: Container(
                    alignment: Alignment.center,
                    width: 62,
                    height: 62,
                    child: Text(
                      '1',
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  onPressed: () {

                      _handleOnNumTap(1);


                  },
                ),
                SizedBox(
                  width: 10,
                ),
                RawMaterialButton(
                  fillColor: Colors.white,
                  elevation: pinElevation,
                  highlightElevation: pinElevation,
                  shape: CircleBorder(),
                  child: Container(
                    alignment: Alignment.center,
                    width: 62,
                    height: 62,
                    child: Text(
                      '2',
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  onPressed: () {

                    _handleOnNumTap(2);
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                RawMaterialButton(
                  fillColor: Colors.white,
                  elevation: pinElevation,
                  highlightElevation: pinElevation,
                  shape: CircleBorder(),
                  child: Container(
                    alignment: Alignment.center,
                    width: 62,
                    height: 62,
                    child: Text(
                      '3',
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  onPressed: () {
                    _handleOnNumTap(3);
                  },
                ),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(),
                ),
                RawMaterialButton(
                  fillColor: Colors.white,
                  elevation: pinElevation,
                  highlightElevation: pinElevation,
                  shape: CircleBorder(),
                  child: Container(
                    alignment: Alignment.center,
                    width: 62,
                    height: 62,
                    child: Text(
                      '4',
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  onPressed: () {
                    _handleOnNumTap(4);
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                RawMaterialButton(
                  fillColor: Colors.white,
                  elevation: pinElevation,
                  highlightElevation: pinElevation,
                  shape: CircleBorder(),
                  child: Container(
                    alignment: Alignment.center,
                    width: 62,
                    height: 62,
                    child: Text(
                      '5',
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  onPressed: () {
                    _handleOnNumTap(5);
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                RawMaterialButton(
                  fillColor: Colors.white,
                  elevation: pinElevation,
                  highlightElevation: pinElevation,
                  shape: CircleBorder(),
                  child: Container(
                    alignment: Alignment.center,
                    width: 62,
                    height: 62,
                    child: Text(
                      '6',
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  onPressed: () {
                    _handleOnNumTap(6);
                  },
                ),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(),
                ),
                RawMaterialButton(
                  fillColor: Colors.white,
                  elevation: pinElevation,
                  highlightElevation: pinElevation,
                  shape: CircleBorder(),
                  child: Container(
                    alignment: Alignment.center,
                    width: 62,
                    height: 62,
                    child: Text(
                      '7',
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  onPressed: () {
                    _handleOnNumTap(7);
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                RawMaterialButton(
                  fillColor: Colors.white,
                  elevation: pinElevation,
                  highlightElevation: pinElevation,
                  shape: CircleBorder(),
                  child: Container(
                    alignment: Alignment.center,
                    width: 62,
                    height: 62,
                    child: Text(
                      '8',
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  onPressed: () {
                    _handleOnNumTap(8);
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                RawMaterialButton(
                  fillColor: Colors.white,
                  elevation: pinElevation,
                  highlightElevation: pinElevation,
                  shape: CircleBorder(),
                  child: Container(
                    alignment: Alignment.center,
                    width: 62,
                    height: 62,
                    child: Text(
                      '9',
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  onPressed: () {
                    _handleOnNumTap(9);
                  },
                ),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(),
                ),

                SizedBox(
                  width: 92,
                ),
                RawMaterialButton(
                  fillColor: Colors.white,
                  elevation: pinElevation,
                  highlightElevation: pinElevation,
                  shape: CircleBorder(),
                  child: Container(
                    alignment: Alignment.center,
                    width: 62,
                    height: 62,
                    child: Text(
                      '0',
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  onPressed: () {
                    _handleOnNumTap(0);
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                RawMaterialButton(

                  child: Container(
                    alignment: Alignment.center,
                    width: 62,
                    height: 62,
                    child: Text(
                      'clear',
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      _firstPin =null;
                      _secondPin = null;
                      _thirdPin = null;
                      _forthPin = null;
                    });
                  },
                ),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
