// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsapp/tabs/calls.dart';
import 'package:whatsapp/tabs/catalog.dart';
import 'package:whatsapp/tabs/chats.dart';
import 'package:whatsapp/tabs/updates.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WA Business"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
        ),
        body: Column(
          children: [
            TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Color.fromARGB(255, 8, 148, 125),
                indicatorColor: Color.fromARGB(255, 8, 148, 125),
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.add_business,
                    ),
                  ),
                  Tab(
                    text: "Chats",
                  ),
                  Tab(
                    text: "Updates",
                  ),
                  Tab(
                    text: "Calls",
                  ),
                ]),
            Expanded(
              child: TabBarView(children: [
                Catalog(),
                ChatsTab(),
                Updates(),
                MyCalls(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
