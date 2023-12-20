import 'package:flutter/material.dart';
import 'package:whatsapp/ListView/list_items.dart';

// ignore: must_be_immutable
class ChatsTab extends StatelessWidget {
  ChatsTab({super.key});
  List Message = [
    'Hi there, how are doing',
    'This is a simple message that will require you...',
    'Hi, Isaya, will you be able to attend the meeting today?',
    'Lorem ipiusd dflih dfiuhs filush dflsj fsuy eiouerf flshhiud',
    'iuayh doiuf sihduoi foisjilf siohfius siouff ',
    'lhjksk fslhfjk aiouf fuhlsi gljiuh suiyulo ',
    'Hi there, how are doing',
    'This is a simple message that will require you',
    'Hi, Isaya, will you be able to attend the meeting today?',
    'Lorem ipiusd dflih dfiuhs filush dflsj fsuy eiouerf flshhiud',
    'iuayh doiuf sihduoi foisjilf siohfius siouff ',
    'lhjksk fslhfjk aiouf fuhlsi gljiuh suiyulo aofjlks',
    'This is a simple message that will require you',
    'Hi, Isaya, will you be able to attend the meeting today?',
    'Lorem ipiusd dflih dfiuhs filush dflsj fsuy ',
    'iuayh doiuf sihduoi foisjilf siohfius siouff',
    'lhjksk fslhfjk aiouf fuhlsi gljiuh suiyulo',
  ];
  List users = [
    'alice',
    'angel',
    'anna',
    'bless',
    'bob',
    'cathy',
    'George',
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
    return ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return ListItems(
            name: users[index],
            avatar: users[index],
            notification: index + 1,
            message: Message[index],
            time: "15:40",
          );
        });
  }
}
