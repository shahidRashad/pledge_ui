import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pledge/pledge/ui/pledge_page.dart';

class Myhome extends StatelessWidget {
  const Myhome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: ElevatedButton(
        child: Text("Click me"),
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => PledgePage()));
        },
      )),
    );
  }
}