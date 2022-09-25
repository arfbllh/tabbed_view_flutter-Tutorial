import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Bar'),
          centerTitle: true,
          bottom: TabBar(
            controller: controller,
            tabs: const [
              Tab(
                text: 'Tab 1',
                icon: Icon(Icons.people),
              ),
              Tab(
                text: 'Tab 2',
                icon: Icon(Icons.contacts),
              ),
              Tab(
                text: 'Tab 3',
                icon: Icon(Icons.dialer_sip),
              )
            ],
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: const [
            Center(
              child: Text('Page 1'),
            ),
            Center(
              child: Text('Page 2'),
            ),
            Center(
              child: Text('Page 3'),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FloatingActionButton(
                onPressed: () {
                  controller.animateTo(controller.index - 1);
                },
                child: const Icon(Icons.navigate_before),
              ),
              FloatingActionButton(
                onPressed: () {
                  controller.animateTo(controller.index + 1);
                },
                child: const Icon(Icons.navigate_next),
              )
            ],
          ),
        ),
      ),
    );
  }
}
