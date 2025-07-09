import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Interactive Widgets',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: WidgetInteractionDemo(),

    );  }}
class WidgetInteractionDemo extends StatefulWidget {
  @override
  _WidgetInteractionDemoState createState() => _WidgetInteractionDemoState();
}
class _WidgetInteractionDemoState extends State<WidgetInteractionDemo> {
  double boxSize = 100;
  bool showIcon = false;
  bool showText = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Interactive Widgets')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [

            GestureDetector(
              onTap: () {
                setState(() {
                  boxSize = boxSize == 100 ? 200 : 100;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                height: boxSize,
                width: boxSize,
                color: Colors.orange,
                alignment: Alignment.center,
                child: Text('Tap to Expand', style: TextStyle(color: Colors.white)),
              ), ),
            SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  showIcon = !showIcon;
                });
              },
              child: Text('Show Icon'),
            ),            if (showIcon) Icon(Icons.favorite, color: Colors.red, size: 40),

            SizedBox(height: 30),


            TextButton(
              onPressed: () {
                setState(() {
                  showText = !showText;
                });
              },
              child: Text('Show Message'),
            ),
            if (showText)
              Text(
                'Hello from Flutter!',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
    );}
}
