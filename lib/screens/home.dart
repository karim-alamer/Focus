import 'package:flutter/material.dart';
import 'package:focus/screens/meeting_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page = 0;
  onPageChanged(int page) {
    setState(() {
      print('////////////////////////////////////$page');
      _page = page;
    });
  }

  // HistoryMeetingScreen()
  List<Widget> pages = [
    MeetingScreen(),
    const Text("history meeying"),
    const Text("contacts"),
    const Text("settings")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meet & Chat"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color.fromRGBO(36, 36, 36, 1),
      ),
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromRGBO(26, 26, 26, 1),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          onTap: onPageChanged,
          currentIndex: _page,
          type: BottomNavigationBarType.fixed,
          unselectedFontSize: 14,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.comment_bank,
                  size: 17,
                ),
                label: 'Meet & chat'),
            BottomNavigationBarItem(
                icon: Icon(Icons.lock_clock), label: ' Meetings'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: 'Contacts'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined), label: 'Settings'),
          ]),
    );
  }
}
