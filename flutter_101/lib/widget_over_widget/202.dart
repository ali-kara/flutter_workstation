import 'package:flutter/material.dart';

class Deneme_202 extends StatefulWidget {
  const Deneme_202({super.key});

  @override
  State<Deneme_202> createState() => _Deneme_202State();
}

class _Deneme_202State extends State<Deneme_202> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            width: 500.0,
            height: 500.0,
            child: Stack(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  color: Colors.redAccent,
                  child: const Text('Hello'),
                ),
                Align(
                  heightFactor: 0.5,
                  widthFactor: 0.5,
                  alignment: Alignment.center,
                  child: FloatingActionButton(
                    child: const Icon(Icons.add),
                    onPressed: () {},
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 100,
                  child: FloatingActionButton(
                    child: const Icon(Icons.delete),
                    onPressed: () {},
                  ),
                )
                // Align(
                //   heightFactor: 0.5,
                //   widthFactor: 0.5,
                //   alignment: Alignment.center,
                //   child: FloatingActionButton(
                //       child: new Icon(Icons.call_missed_outgoing_sharp),
                //       onPressed: () {}),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
