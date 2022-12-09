import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  // List<Container> myList = [ //widget container aja
  final List<Widget> myList = [
    // all widget
    Container(
      height: 125,
      width: 100,
      color: Colors.red,
    ),
    Container(
      height: 125,
      width: 100,
      color: Colors.green,
    ),
    Container(
      height: 125,
      width: 100,
      color: Colors.blue,
    ),
    Container(
      height: 125,
      width: 100,
      color: Colors.black,
    ),
    Container(
      height: 125,
      width: 100,
      color: Colors.white,
    ),
    Container(
      height: 125,
      width: 100,
      color: Colors.purple,
    ),
  ];

  final List<Color> myColor = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.black,
  ];

  final List<Widget> myNumber = List.generate(
    100,
    (index) => Text(
      "${index + 1}",
      style: TextStyle(
          // fontSize: 20 + double.parse(index.toString()),//tambahan
          ),
      // index.toString(),
    ),
  );
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "List View",
            ),
          ),
        ),
        body: ListView(
          children: myNumber,
        ),
        // listview separated:
        // body: ListView.separated(//----------------------------------------------------------------------------
        //   separatorBuilder: (context, index) {
        //     return Divider(
        //       color: Colors.black,
        //       // height: 40,
        //     );
        //     // return Container(
        //     //   height: 10,
        //     // );
        //   },
        //   itemCount: 10,
        //   itemBuilder: (context, index) {
        //     return Text("Hallo");
        //     // return Container(
        //     //   height: 300,
        //     //   width: 300,
        //     //   color: myColor[index],
        //     // );
        //   },

        // scrollDirection: Axis.horizontal,

        // ),

        //maually:-----------------------------------------------------------------------------
        // body: ListView(
        //   children: myList,
        // ),
      ),
    );
  }
}
