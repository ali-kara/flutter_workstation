import 'package:flutter/material.dart';
import 'package:flutter_101/bottom_sheet/BottomSheetBasedOnContentHeight.dart';
import 'package:flutter_101/bottom_sheet/StandardBottomSheetExample.dart';

class BottomSheetApp extends StatelessWidget {
  const BottomSheetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Material(
        child: SafeArea(
          bottom: false,
          child: MyBottomSheet(title: 'Flutter Demo Home Page'),
        ),
      ),
    );
  }
}

class MyBottomSheet extends StatefulWidget {
  final String title;

  const MyBottomSheet({
    required this.title,
    super.key,
  });

  @override
  State<MyBottomSheet> createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            TabBar(
              labelColor: Colors.lightBlueAccent,
              tabs: [
                Text(
                  'Standard',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Based on content height',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  StandardBottomSheetExample(),
                  BottomSheetBasedOnContentHeight(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
