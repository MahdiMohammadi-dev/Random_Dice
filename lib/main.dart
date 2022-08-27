import 'dart:math';

import 'package:flutter/material.dart';
void main() => runApp(const MyStateFulWidget());

class MyStateFulWidget extends StatefulWidget {
  const MyStateFulWidget({Key? key}) : super(key: key);

  @override
  State<MyStateFulWidget> createState() => _MyStateFulWidgetState();
}

class _MyStateFulWidgetState extends State<MyStateFulWidget> {
  int leftdicenumber = 1;
  int rightdicenumber = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
            child: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 25, 8, 181),
            title: const Center(
              child: Text(
                "Dice-Mahdi Mohammadi-Dev",
                style: TextStyle(fontWeight: FontWeight.w700,fontSize:15),
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 200, left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: (() {
                      setState(() {
                        RandomDice();
                      });
                    }),
                    child: Image.asset("assets/images/dice$leftdicenumber.png"),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: InkWell(
                    onTap: (() {
                      setState(() {
                        RandomDice();
                      });
                    }),
                    child:
                        Image.asset("assets/images/dice$rightdicenumber.png"),
                  ),
                ),
              ],
            ),
          ),
        )));
  }

  void RandomDice() {
    rightdicenumber = Random().nextInt(6) + 1;
    leftdicenumber = Random().nextInt(6) + 1;
  }
}

