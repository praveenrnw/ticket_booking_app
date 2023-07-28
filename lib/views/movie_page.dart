import 'dart:core';
import 'package:built_collection/built_collection.dart';
import 'package:ticket_booking_app/model/cast_list_model.dart';
import 'package:ticket_booking_app/ui.dart';
import 'package:ticket_booking_app/views/cast_page.dart';

class MoviePage extends StatefulWidget {
  final int id;
  final String poster;
  final String date;
  final double vote;
  final String title;
  final String overview;
  final String lang;
  final int voteCount;
  final double popularity;

  const MoviePage(
      {super.key,
      required this.id,
      required this.poster,
      required this.date,
      required this.vote,
      required this.title,
      required this.overview,
      required this.lang,
      required this.voteCount,
      required this.popularity});

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  @override
  void initState() {
    _fetchMoviePage(widget.id);
    super.initState();
  }

  Future<void> _fetchMoviePage(int id) async {
    try {
      await context.appViewModel.getCastDetails(id);
    } catch (e, s) {
      print(e);
      print(s);
    }
  }

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
                    widget.poster,
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
                          widget.date,
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
                          '${widget.vote}',
                          style: const TextStyle(color: Colors.black),
                        ),
                      )),
                  Positioned(
                      right: 0,
                      left: 0,
                      bottom: 5,
                      child: Center(
                        child: Text(
                          widget.title,
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
                  widget.overview,
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
              ImageNameList(id: widget.id),
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
                        Text(widget.title),
                        Text(widget.lang),
                        Text(widget.date),
                        Text(widget.popularity.toString()),
                        Text(widget.vote.toString()),
                        Text(widget.voteCount.toString()),
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

void showBottomPopUp(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: Colors.white,
          height: 300,
          child: Column(
            children: [
              Container(
                color: Colors.blueGrey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          elevation: 0,
                          padding: EdgeInsets.zero,
                          shape: const CircleBorder(),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          CupertinoIcons.back,
                          color: Colors.black,
                        )),
                    const SizedBox(width: 25),
                    const Text(
                      'Select Number of seats',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    const SizedBox(width: 25),
                    const NumberDropdown(),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text('Balcony'),
                      Text('Rs. 180.0'),
                      Text('Available')
                    ],
                  ),
                  SizedBox(width: 100),
                  Column(
                    children: [
                      Text('First Class'),
                      Text('Rs. 150.0'),
                      Text('Available')
                    ],
                  )
                ],
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey,
                  ),
                  onPressed: () {
                    showBottomPopup_Seats(context);
                  },
                  child: const Text(
                    'Select Seats',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ))
            ],
          ),
        );
      });
}

void showBottomPopup_Seats(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                color: Colors.blueGrey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          elevation: 0,
                          padding: EdgeInsets.zero,
                          shape: const CircleBorder(),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          CupertinoIcons.back,
                          color: Colors.black,
                        )),
                    const Text(
                      'Movie Name',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                'Screen',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
              const SizedBox(height: 10),
              const Seats(),
              const SizedBox(height: 10),
              const Text(
                'A1-E6 First Class, F1-F6 Balcony',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                width: 400,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      padding: EdgeInsets.zero,
                      shape: const BeveledRectangleBorder(),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Book',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    )),
              ),
              const Text(
                'Total Cost 0Rs',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            ],
          ),
        );
      });
}

class Seats extends StatelessWidget {
  const Seats({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Buttons(name: 'A1'),
            Buttons(name: 'A2'),
            Buttons(name: 'A3'),
            Buttons(name: 'A4'),
            Buttons(name: 'A5'),
            Buttons(name: 'A6'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Buttons(name: 'B1'),
            Buttons(name: 'B2'),
            Buttons(name: 'B3'),
            Buttons(name: 'B4'),
            Buttons(name: 'B5'),
            Buttons(name: 'B6'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Buttons(name: 'C1'),
            Buttons(name: 'C2'),
            Buttons(name: 'C3'),
            Buttons(name: 'C4'),
            Buttons(name: 'C5'),
            Buttons(name: 'C6'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Buttons(name: 'D1'),
            Buttons(name: 'D2'),
            Buttons(name: 'D3'),
            Buttons(name: 'D4'),
            Buttons(name: 'D5'),
            Buttons(name: 'D6'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Buttons(name: 'E1'),
            Buttons(name: 'E2'),
            Buttons(name: 'E3'),
            Buttons(name: 'E4'),
            Buttons(name: 'E5'),
            Buttons(name: 'E6'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Buttons(name: 'F1'),
            Buttons(name: 'F2'),
            Buttons(name: 'F3'),
            Buttons(name: 'F4'),
            Buttons(name: 'F5'),
            Buttons(name: 'F6'),
          ],
        ),
      ],
    );
  }
}

class Buttons extends StatelessWidget {
  final String name;

  const Buttons({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.transparent,
            padding: EdgeInsets.zero,
            shape: const BeveledRectangleBorder(),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            name,
            style: TextStyle(color: Colors.black, fontSize: 18),
          )),
    );
  }
}

class ImageNameList extends StatefulWidget {
  final int id;

  ImageNameList({super.key, required this.id});

  @override
  State<ImageNameList> createState() => _ImageNameListState();
}

class _ImageNameListState extends State<ImageNameList> {
  @override
  Widget build(BuildContext context) {
    final BuiltList<CastListModel> casts =
        context.appState.castDetails?.cast ?? BuiltList();
    return SizedBox(
      height: 100,
      child: ListView.builder(
          //physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: casts.length,
          itemBuilder: (context, index) {
            final cast = casts[index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    height: 100,
                    width: 80,
                    child: Card(
                      child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => CastPage(
                                            id: cast.id,
                                          )));
                                },
                                child: Image.network(
                                  cast.imageUrl,
                                  width: 35,
                                  height: 55,
                                ),
                              ),
                              Text(
                                cast.name,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    decoration: TextDecoration.none),
                              ),
                            ],
                          )),
                    )),
              ],
            );
          }),
    );
  }
}

class NumberDropdown extends StatefulWidget {
  const NumberDropdown({super.key});

  @override
  _NumberDropdownState createState() => _NumberDropdownState();
}

class _NumberDropdownState extends State<NumberDropdown> {
  int selectedNumber = 1;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<int>(
      value: selectedNumber,
      onChanged: (int? newValue) {
        setState(() {
          selectedNumber = newValue!;
        });
      },
      items: const <DropdownMenuItem<int>>[
        DropdownMenuItem<int>(
          value: 1,
          child: Text('1'),
        ),
        DropdownMenuItem<int>(
          value: 2,
          child: Text('2'),
        ),
        DropdownMenuItem<int>(
          value: 3,
          child: Text('3'),
        ),
        DropdownMenuItem<int>(
          value: 4,
          child: Text('4'),
        ),
      ],
    );
  }
}
