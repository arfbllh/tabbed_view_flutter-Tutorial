import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('app bar'),
            centerTitle: true,
            bottom: const TabBar(
              tabs: [
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
          body: const TabBarView(
            children: [
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
        ),
      ),
    );
  }
}
