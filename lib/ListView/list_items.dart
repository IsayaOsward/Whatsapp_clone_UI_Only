import 'package:flutter/material.dart';

class ListItems extends StatelessWidget {
  final name;
  final message;
  final time;
  final notification;
  final avatar;
  const ListItems({
    super.key,
    this.name,
    this.message,
    this.time,
    this.notification,
    this.avatar,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(2),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 15),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 29,
                        backgroundImage:
                            Image.asset("assets/$avatar.jpg").image,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "$name",
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "$message",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Column(
                    children: [
                      Text(
                        "$time",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CircleAvatar(
                        radius: 7,
                        backgroundColor: Color.fromARGB(255, 22, 206, 28),
                        child: Center(
                          child: Text(
                            "$notification",
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
