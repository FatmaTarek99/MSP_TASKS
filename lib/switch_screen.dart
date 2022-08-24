import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SwitchScreenState();
  }
}

class _SwitchScreenState extends State <SwitchScreen>
{
bool val = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: val? Colors.black12 : Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title:Text(
          'Switch Screen',
        ) ,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Light',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Switch(
                  // activeColor: Colors.red,
                  // activeTrackColor:Colors.green ,
                  // inactiveTrackColor: Colors.black,
                  // inactiveThumbColor: Colors.yellow,
                  value: val,
                  onChanged: (newValue)
                  {
                    setState(() {
                      val = newValue;
                    });
                  }
              ),
            ),
            Text(
              'Dark',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}