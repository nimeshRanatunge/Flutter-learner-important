import 'package:flutter/material.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: ButtonEounded(),
    );
  }
}

class ButtonEounded extends StatefulWidget {
  const ButtonEounded({Key? key}) : super(key: key);

  @override
  _ButtonEoundedState createState() => _ButtonEoundedState();
}

class _ButtonEoundedState extends State<ButtonEounded> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Rounded', style: TextStyle(fontSize: 22),),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: (){},
              child: Text("Add to cart".toUpperCase(), style: TextStyle(fontSize: 14),),
              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.red)
                      )
                  )
              ),
            ),
            SizedBox(width: 20,),
            ElevatedButton(
              onPressed: (){},
              child: Text("Buy Now".toUpperCase(), style: TextStyle(fontSize: 14),),
              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  //backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                          side: BorderSide(color: Colors.red)
                      )
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}

