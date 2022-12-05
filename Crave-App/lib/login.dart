import 'package:flutter/material.dart';
import 'loginScreen.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter FlatButton Example'),
          ),
          body: Center(child: Column(children: <Widget>[
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'username',
              ),
            ),
            //Password
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'password',
              ),
            )
            ,
            Container(
              margin: EdgeInsets.all(25),
              child: ElevatedButton(
                  child: Text('Login'),
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const LoginScreen() ));//MyAPP() = new page
                  }
              ),
            ),
          ]
          ))
      ),
    );


  }
}






