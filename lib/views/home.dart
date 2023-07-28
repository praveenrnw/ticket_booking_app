import 'package:flutter/material.dart';
import 'package:ticket_booking_app/views/tabs/tab01.dart';
import 'package:ticket_booking_app/views/tabs/tab02.dart';
import 'package:ticket_booking_app/views/tabs/tab03.dart';

class MovieHomePage extends StatelessWidget {
  const MovieHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyHomePageTab();
  }
}

class MyHomePageTab extends StatelessWidget {
  const MyHomePageTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Movies',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.black54,
                  fontSize: 20),
            ),
            bottom: const TabBar(tabs: [
              Tab(child: Text('Popular')),
              Tab(child: Text('Top Rated')),
              Tab(child: Text('Upcoming')),
            ]),
          ),
          body: const TabBarView(children: <Widget>[
            Tab01(),
            Tab02(),
            Tab03(),
          ]),
        ));
  }
}
