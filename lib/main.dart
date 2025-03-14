import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  State<StatefulWidget>createState(){
    return MyHomeState();
  }
}
class MyHomeState extends State<MyHomePage>{
  int count = 0;
  int increaseIt()
  {
    return count++;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.blue,
        backgroundColor: const Color.fromARGB(255, 242, 238, 7),
        title:Text("CountIt-X"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$count"),
            
            ElevatedButton(onPressed: (){setState(() {
              increaseIt();
            });}, child: Text("+"))
          ],
        ),
      ),
    );
  }
}