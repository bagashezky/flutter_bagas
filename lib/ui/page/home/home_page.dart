import 'dart:html';

import 'package:flutter/material.dart';

import 'image/widgets/image_list.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex =0;

  @override

  Widget build(BuildContext context) {
    return DefaultTabController(
      animationDuration: Duration.zero,
      length: 3, 
      child: Scaffold(
        appBar: currentIndex == 2 ? null : appBar(),
        body: body(),
        bottomNavigationBar: bottomTabBar()),
      );
  }

  AppBar appBar(){
    return AppBar(
      toolbarHeight: kToolbarHeight,
      foregroundColor: Colors.black87,
      backgroundColor: Colors.white,
      elevation: 0,
      title: TextFormField(
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration (
          contentPadding: kTabLabelPadding,
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(kRadialReactionRadius,
            )),
          ),
        fillColor: Colors.grey.withOpacity(0.15),
        filled: true,
        hintText: 'Search for amazing content',
        hintStyle: const TextStyle(color: Colors.black26),
        prefixIcon: const Icon(
          Icons.search_rounded,
          color: Colors.black26,
          size: 22,
        )),
      ),
    );
  }
  
  TabBarView body() {
    return const TabBarView(
      physics: NeverScrollableScrollPhysics(),
      children: [ImageListWidget(), SizedBox(), SizedBox()],
    );
}

  Container bottomTabBar() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(bottom: 30, top: 6),
      child: TabBar(
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        tabs: [
          tabItem(Icons.home),
          tabItem(Icons.search),
          tabItem(Icons.person),
        ],
        labelColor: Colors.black,
        unselectedLabelColor: Colors.grey,
        indicatorColor: Colors.white,
      ),
    );
  }

  Tab tabItem(IconData icon) {
    return Tab(icon: Icon(icon,size: 30));
  }
}

