import 'package:flutter/material.dart';
import 'package:split_view/split_view.dart';

class SplitViewExampleApp extends StatelessWidget {
  const SplitViewExampleApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplitViewExample());
  }
}

class SplitViewExample extends StatefulWidget {
  const SplitViewExample({Key? key}) : super(key: key);

  final String title = "sss";

  @override
  _SplitViewExampleState createState() => _SplitViewExampleState();
}

class _SplitViewExampleState extends State<SplitViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SplitView(
        viewMode: SplitViewMode.Vertical,
        indicator: const SplitIndicator(viewMode: SplitViewMode.Vertical),
        activeIndicator: const SplitIndicator(
          viewMode: SplitViewMode.Vertical,
          isActive: true,
        ),
        controller: SplitViewController(limits: [null, WeightLimit(max: 0.5)]),
        onWeightChanged: (w) => print("Vertical $w"),
        children: [
          SplitView(
            viewMode: SplitViewMode.Horizontal,
            gripColor: Colors.transparent,
            indicator: const SplitIndicator(
              viewMode: SplitViewMode.Horizontal,
              color: Colors.yellow,
            ),
            activeIndicator: const SplitIndicator(
              viewMode: SplitViewMode.Horizontal,
              isActive: true,
            ),
            children: [
              Container(
                color: Colors.red,
                child: const Center(child: Text("View1")),
              ),
              Container(
                color: Colors.blue,
                child: const Center(child: Text("View2")),
              ),
              Container(
                color: Colors.green,
                child: const Center(child: Text("View3")),
              ),
            ],
            onWeightChanged: (w) => print("Horizon: $w"),
          ),
          Container(
            color: Colors.purple,
            child: const Center(child: Text("View4")),
          ),
          Container(
            color: Colors.yellow,
            child: const Center(child: Text("View5")),
          ),
        ],
      ),
    );
  }
}
