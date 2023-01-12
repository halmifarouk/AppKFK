import 'package:app_kfk/Calendar.dart';
import 'package:app_kfk/archives_page.dart';
import 'package:app_kfk/chat_page.dart';
import 'package:app_kfk/main_page.dart';
import 'package:app_kfk/profile_page.dart';
import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  
  final pages = [
    const MainPage(),
    const DemoApp(),
    const ArchivesPage(),
    const ProfilePage(),
    const ChatPage(),
  ];
  
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) => setState(() => this.index = index),
        selectedIndex: index,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          NavigationDestination(
            icon: Icon(Icons.event),
            label: 'Evènements',
          ),
          NavigationDestination(
            icon: Icon(Icons.thumb_up_alt),
            label: 'Favoris',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            label: 'Profil',
          ),
          NavigationDestination(
            icon: Icon(Icons.message),
            label: 'Chat',
          ),
        ],
        backgroundColor: Color.fromARGB(255, 255, 255, 255)
      ),
    );
  }
}
