import 'package:example/base_buttons_page.dart';
import 'package:flutter/material.dart';

import 'stadium_buttons_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      );
}

class MyHomePage extends StatefulWidget {
  final String? title;

  const MyHomePage({Key? key, this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final PageController _controller;
  int _page = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: _page);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => ScaffoldMessenger(
        child: Scaffold(
          appBar: AppBar(title: Text(widget.title ?? "")),
          body: PageView(
            onPageChanged: (value) => setState(() => _page = value),
            controller: _controller,
            children: const [
              BaseButtonsPage(),
              StadiumButtonsPage(),
            ],
          ),
          bottomNavigationBar: Builder(
              builder: (context) => BottomNavigationBar(
                    onTap: (value) => _controller.animateToPage(
                      value,
                      duration: const Duration(milliseconds: 350),
                      curve: Curves.easeOut,
                    ),
                    currentIndex: _page,
                    items: const [
                      BottomNavigationBarItem(
                        icon: Icon(Icons.android, key: ValueKey("bottom_navigation_item_0")),
                        label: "Base buttons",
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.stadium, key: ValueKey("bottom_navigation_item_1")),
                        label: "Stadium buttons",
                      )
                    ],
                  )),
        ),
      );
}
