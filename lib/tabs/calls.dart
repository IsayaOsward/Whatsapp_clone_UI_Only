import 'package:flutter/material.dart';

class MyCalls extends StatelessWidget {
  const MyCalls({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 10, right: 5, top: 10),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 8, 148, 125),
                radius: 32,
                child: IconButton(
                    onPressed: () {},
                    color: Colors.white,
                    icon: const Icon(Icons.link)),
              ),
              const SizedBox(
                width: 10,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Create call link",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Share a link for your whatsapp call",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            "Recent",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
        const CallUpdate(
          name: "Alice",
          avatar: "alice",
          time: "Yesterday, 15:11",
        ),
        const CallUpdate(
          name: "Angel",
          avatar: "angel",
          time: "Yesterday, 14:59",
        ),
        const CallUpdate(
          name: "Glory",
          avatar: "glory",
          time: "1 November, 2023, 07:30",
        ),
        const CallUpdate(
          name: "Bob",
          avatar: "bob",
          time: "31 October, 11:59",
        ),
        const CallUpdate(
          name: "Bless",
          avatar: "bless",
          time: "19 Aug 2023, 02:22",
        ),
        const CallUpdate(
          name: "Happy",
          avatar: "happy",
          time: "12 July 2023, 12:09",
        ),
        const CallUpdate(
          name: "George",
          avatar: "George",
          time: "7 March 2023, 11:50",
        ),
      ],
    );
  }
}

class CallUpdate extends StatelessWidget {
  final name;
  final avatar;
  final time;
  const CallUpdate({
    super.key,
    this.name,
    this.avatar,
    this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 5, top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: Image.asset("assets/$avatar.jpg").image,
                radius: 32,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name),
                  Text(
                    time,
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ],
          ),
          IconButton(
              onPressed: () {},
              color: const Color.fromARGB(255, 8, 148, 125),
              icon: const Icon(Icons.call))
        ],
      ),
    );
  }
}
