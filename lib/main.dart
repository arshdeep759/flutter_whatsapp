import 'package:flutter/material.dart';

void main() {
  runApp(listscreen());
}

class listscreen extends StatefulWidget {
  const listscreen({super.key});

  @override
  State<listscreen> createState() => __listscreenStateState();
}

class __listscreenStateState extends State<listscreen> {
  int _quantity = 1;

  void _incrementQuantity() {
    setState(() {
      _quantity++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("WhatApp screen"),
          backgroundColor: Colors.greenAccent,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementQuantity,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        body: ListView.builder(
          shrinkWrap: true,
          itemCount: _quantity,
          itemBuilder: (context, index) {
            const column = Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("RAJU"),
                Text("21 din m paosa double"),
              ],
            );
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.035,
                    backgroundImage: const NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdYVJE9OSr6mfuDYeKxwmM0DPWbdCveuItUA&s"),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: column,
                  ),
                  const Spacer(),
                  const Text("Date"),
                ],
              ),
            );
          },
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat_sharp), label: 'chats'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'settings',
          ),
        ]),
      ),
    );
  }
}
