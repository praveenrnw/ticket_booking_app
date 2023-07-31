import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking_app/provider/provider_utils.dart';
import 'package:ticket_booking_app/views/tabs/tab.dart';

import '../../model/movie_model.dart';

class Tab02 extends StatefulWidget {
  const Tab02({super.key});

  @override
  State<Tab02> createState() => _Tab02State();
}

class _Tab02State extends State<Tab02> {
  @override
  void initState() {
    _fetchTopRatedMovies();
    super.initState();
  }

  Future<void> _fetchTopRatedMovies() async {
    try {
      await context.appViewModel.getTopRated();
    } catch (e) {
      debugPrint('Error fetching top rated movies: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final BuiltList<MovieModel> movies =
        context.appState.topRated ?? BuiltList();
    return MyTab(builtList: movies);
  }
}
