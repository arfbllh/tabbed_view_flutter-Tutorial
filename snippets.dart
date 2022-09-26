__________________________________
//Initial Page


/*
  write stuff
  step 1 : 
    create a flutter project and 
  
*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tabbed View Tutorial',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
	      //Code will be inserted here
      ),
    );
  }
}
_____________________________________________

//adding the appbar with tabs

/*
  write stuff
*/

Scaffold(
    appBar: AppBar(
      title: const Text('app bar'),
      centerTitle: true,
      bottom: const TabBar(
        tabs: [
          Tab(text: 'Tab 1'),
          Tab(text: 'Tab 2'),
          Tab(text: 'Tab 3'),
        ],
      ),
    ),

//it will show error
__________________________________________________

//wrap in DefaultTabController + add icons

/*
  write stuff
*/

home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('app bar'),
            centerTitle: true,
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Tab 1',icon: Icon(Icons.people),),
                Tab(text: 'Tab 2',icon: Icon(Icons.contacts),),
                Tab(text: 'Tab 3',icon: Icon(Icons.dialer_sip),)
              ],
            ),
          ),
        ),
      ),


__________________________________________________________________________

//add pages using tabBarView

/*
  write stuff
*/

 appBar: AppBar(
    title: const Text('app bar'),
    centerTitle: true,
    bottom: const TabBar(
      tabs: [
        Tab(text: 'Tab 1',icon: Icon(Icons.people),),
        Tab(text: 'Tab 2',icon: Icon(Icons.contacts),),
        Tab(text: 'Tab 3',icon: Icon(Icons.dialer_sip),)
      ],
    ),
  ),
body: const TabBarView(
    children: [
      Center(child: Text('Page 1'),),
      Center(child: Text('Page 2'),),
      Center(child: Text('Page 3'),),
    ],
  ),


________________________________________________________________________

//possible error , adding more pages than the given length : 3

/*
  write stuff
*/

children: [
      Center(child: Text('Page 1'),),
      Center(child: Text('Page 2'),),
      Center(child: Text('Page 3'),),
      Center(child: Text('Page 4'),),
    ],


___________________________________________________________________________


//adding own controller
//1. Convert to stateful widget

___________________________________________________________________________
//add controllers

/*
  write stuff
*/

TabBar(
    controller: controller,
    
    /*

    code

    */
  ),


TabBarView(
    controller: controller,
         
    /*

    code

    */
  ),


class _MyAppState extends State<MyApp> with 
SingleTickerProviderStateMixin {
  
  late TabController controller;


  //override initSate() to initialize controller
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }



  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  /*

  code

  */
}



_________________________________________________________

//adding functionality using controller
//add a listener. listen to tap changes
 @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);

    controller.addListener(() {
      setState(() {});
    });

  }


//onPressed
FloatingActionButton(
    onPressed: () {
      controller.animateTo(controller.index - 1);
    },
    child: const Icon(Icons.navigate_before),
  ),

//add floating action button to navigate between pages
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

