import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Telegram());
}

class Telegram extends StatelessWidget {
  const Telegram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TelegramHome(),
    );
  }
}

class TelegramHome extends StatefulWidget {
  const TelegramHome({Key? key}) : super(key: key);

  @override
  State<TelegramHome> createState() => _TelegramHomeState();
}

class _TelegramHomeState extends State<TelegramHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          drawer: Drawer(
            child: Text('jsdgjdhbfjdshvub'),
          ),
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            actions: [
              Row(
                children: [
                  PopupMenuButton(itemBuilder: (context) {
                    return [PopupMenuItem(child: Text('Group'))];
                  })
                ],
              ),
            ],
            title: Text(
              'Telegram',
              style: TextStyle(
                  fontFamily: 'myfonts',
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}
