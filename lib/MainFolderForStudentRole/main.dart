import 'package:flutter/material.dart';
//import 'package:share_plus/share_plus.dart';
import 'package:app10/MainFolderForStudentRole/SchemesPages/Scheme1Folder/Scheme1.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String _content =
      'My Instagram account link: https://www.instagram.com/accounts/login/';

  void _shareContent(BuildContext context) {
    //Share.share(_content);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("MSBTE Hub"),
          // leading: IconButton(
          //   onPressed: () {},
          //   icon: Icon(Icons.home),
          // ),
          actions: [
            //Share button
            IconButton(
              onPressed: () {
                _shareContent(context);
              },
              icon: const Icon(Icons.share_sharp),
            ),

            PopupMenuButton(
              // add icon, by default "3 dot" icon
              // icon: Icon(Icons.book)
                itemBuilder: (context) {
                  return [
                    const PopupMenuItem<int>(
                      value: 0,
                      child: Text(
                        "My Account",
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                      ),
                    ),
                    const PopupMenuItem<int>(
                      value: 1,
                      child: Text("Settings",
                          style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w400)),
                    ),
                    const PopupMenuItem<int>(
                      value: 2,
                      child: Text("Logout",
                          style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w400)),
                    ),
                  ];
                }, onSelected: (value) {
              if (value == 0) {
                print("My account menu is selected.");
              } else if (value == 1) {
                print("Settings menu is selected.");
              } else if (value == 2) {
                print("Logout menu is selected.");
              }
            })
          ],
        ),
        body: DefaultTabController(
          length: 5,
          child: Scaffold(
              body: NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    const SliverAppBar(
                      centerTitle: true,
                      title: Text(
                        'Select below mentioned scheme',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.blueGrey,
                            fontSize: 16),
                      ),
                      pinned: true,
                      floating: true,
                      bottom: TabBar(
                        isScrollable: true,
                        tabs: [
                          Tab(child: Text("'A' Scheme")),
                          Tab(child: Text("'B' Scheme")),
                          Tab(child: Text("'C' Scheme")),
                          Tab(child: Text("'D' Scheme")),
                          Tab(child: Text("'E' Scheme")),
                        ],
                      ),
                    ),
                  ];
                },
                body: const TabBarView(
                  children: <Widget>[
                    Scheme1(title: "Scheme1"),
                    Icon(Icons.directions_transit, size: 350),
                    Icon(Icons.directions_car, size: 350),
                    Icon(Icons.directions_bike, size: 350),
                    Icon(Icons.directions_boat, size: 350),
                  ],
                ),
              )),
        ));
  }
}
