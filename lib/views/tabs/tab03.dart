import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking_app/provider/provider_utils.dart';
import 'package:ticket_booking_app/views/tabs/tab.dart';

import '../../model/movie_model.dart';

class Tab03 extends StatefulWidget {
  const Tab03({super.key});

  @override
  State<Tab03> createState() => _Tab03State();
}

class _Tab03State extends State<Tab03> {
  @override
  void initState() {
    _fetchUpcomingMovies();
    super.initState();
  }

  Future<void> _fetchUpcomingMovies() async {
    try {
      await context.appViewModel.getUpcoming();
    } catch (e) {
      debugPrint('Error fetching upcoming movies: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final BuiltList<MovieModel> movies =
        context.appState.upcoming ?? BuiltList();
    return MyTab(builtList: movies);
  }
}
