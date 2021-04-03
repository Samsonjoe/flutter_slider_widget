import 'package:flutter/material.dart';

void main() {
  runApp(new Application());
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {

  double dtext = 2.0;

  void method1(value){
    setState(() {
      dtext = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Dummy Application",
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.green,
          title: new Text("Dummy Application"),
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              new Slider(
                  value: dtext,
                  min: 1.0,
                  max: 10.0,
                  onChanged: (double dval){
                    method1(dval);
                  }),
              new Text('Value : $dtext'),
              
            ],
          ),
        ),
      ),
    );
  }
}


