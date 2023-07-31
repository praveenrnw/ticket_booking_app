import 'dart:core';
import 'package:ticket_booking_app/ui.dart';
import 'package:ticket_booking_app/views/widgets/ImageNameList.dart';
import 'package:ticket_booking_app/views/widgets/showBottomPopup.dart';

class MoviePage extends StatefulWidget {
  final movie;

  const MoviePage({super.key, required this.movie});

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                children: [
                  Image.network(
                    widget.movie.imageUrl,
                    height: 300,
                    width: 450,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                      top: 50,
                      right: 10,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white60,
                        ),
                        onPressed: () {
                          showBottomPopUp(context);
                        },
                        child: const Text(
                          'Book Ticket',
                          style: TextStyle(color: Colors.black),
                        ),
                      )),
                  Positioned(
                      bottom: 40,
                      left: 10,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white60,
                        ),
                        onPressed: () {},
                        child: Text(
                          widget.movie.releaseDate,
                          style: const TextStyle(color: Colors.black),
                        ),
                      )),
                  Positioned(
                      bottom: 40,
                      left: 150,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white60,
                        ),
                        onPressed: () {},
                        child: Text(
                          '${widget.movie.vote}',
                          style: const TextStyle(color: Colors.black),
                        ),
                      )),
                  Positioned(
                      right: 0,
                      left: 0,
                      bottom: 5,
                      child: Center(
                        child: Text(
                          widget.movie.title,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              decoration: TextDecoration.none),
                        ),
                      )),
                ],
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Synopsis',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  widget.movie.overview,
                  style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Cast',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
              ),
              const SizedBox(height: 10),
              ImageNameList(id: widget.movie.id),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'About',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text('Original Title:'),
                        Text('Language:'),
                        Text('Release Date:'),
                        Text('Popularity:'),
                        Text('Vote Average:'),
                        Text('Vote Count:'),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Text(widget.movie.title),
                        Text(widget.movie.lang),
                        Text(widget.movie.releaseDate),
                        Text(widget.movie.popularity.toString()),
                        Text(widget.movie.vote.toString()),
                        Text(widget.movie.voteCount.toString()),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
