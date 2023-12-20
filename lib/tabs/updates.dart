// ignore_for_file: unnecessary_const, prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Updates extends StatelessWidget {
  Updates({super.key});
  List users = [
    'George',
    'alice',
    'angel',
    'anna',
    'bless',
    'bob',
    'cathy',
    'glory',
    'happy',
    'james',
    'Jesca',
    'kayla',
    'oliver',
    'princess',
    'senshi'
  ];
  List names = [
    'My Status',
    'alice',
    'angel',
    'anna',
    'bless',
    'bob',
    'cathy',
    'glory',
    'happy',
    'james',
    'Jesca',
    'kayla',
    'oliver',
    'princess',
    'senshi'
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Status",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 22,
                ),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          height: 105,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: users.length,
            itemBuilder: ((context, index) {
              return StatusUpdates(
                avatar: users[index],
                user: names[index],
              );
            }),
          ),
        ),
        const Divider(
          height: 5,
          thickness: 0.5,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 10, right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Channels",
                style: const TextStyle(
                    fontSize: 23,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.add))
            ],
          ),
        ),
        Channels(),
        Channels(),
        Channels(),
        Channels(),
        Channels(),
        Channels(),
        Channels(),
      ],
    );
  }
}

class Channels extends StatelessWidget {
  const Channels({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 5),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: Image.asset("assets/princess.jpg").image,
              ),
              SizedBox(
                width: 5,
              ),
              Text("TECH TALS"),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(
              "Niliwaambia kwamba, huwezi pata Iphone x brand new 2023 hii...probably hata iphone 12/12 pro max brand new unaweza usipate 😂 sana sana unaweza uziwa simu used kwa bei mpya... kuna full boxed in brand..."),
          Row(
            children: [
              Text(
                ". 2 unread",
                style: TextStyle(
                  color: const Color.fromARGB(255, 17, 215, 23),
                ),
              ),
              Text(
                ". Yesterday",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Divider(
            height: 25,
            thickness: .5,
          ),
        ],
      ),
    );
  }
}

class StatusUpdates extends StatelessWidget {
  final avatar;
  final user;
  const StatusUpdates({
    super.key,
    this.avatar,
    this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: [
          CircleAvatar(
            radius: 34,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              radius: 31,
              backgroundImage: Image.asset("assets/$avatar.jpg").image,
            ),
          ),
          Text(
            "$user",
            style: TextStyle(
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}