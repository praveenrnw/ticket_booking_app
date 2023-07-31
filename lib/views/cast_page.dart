import 'package:ticket_booking_app/model/person_details.dart';
import 'package:ticket_booking_app/ui.dart';
import 'package:ticket_booking_app/views/tabs/movies_tab.dart';
import 'package:ticket_booking_app/views/tabs/tv_shows_tab.dart';

class CastPage extends StatefulWidget {
  final int id;
  const CastPage({super.key, required this.id});

  @override
  State<CastPage> createState() => _CastPageState();
}

class _CastPageState extends State<CastPage> {
  @override
  void initState() {
    _fetchPersonDetails(widget.id);
    super.initState();
  }

  Future<void> _fetchPersonDetails(int id) async {
    try {
      await context.appViewModel.getPersonDetails(id);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    final PersonDetails? person = context.appState.personDetails;
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            title: Text(
              person!.name,
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(150),
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Image.network(
                          person.imageUrl,
                          width: 100,
                          height: 100,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text('BirthDay:'),
                                  Text('DeathDay:'),
                                  Text('Gender:'),
                                  Text('Imdb id:'),
                                  Text('Place of Birth:'),
                                ],
                              ),
                              SizedBox(width: 10),
                              Column(
                                children: [
                                  Text(person.BirthDate),
                                  Text(person.DeathDate == null
                                      ? '-'
                                      : person.DeathDate!),
                                  Text(person.gender == 1 ? 'Female' : 'Male'),
                                  Text(person.imdbId),
                                  Text(person.placeOfBirth),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const TabBar(tabs: [
                      Tab(
                          child: Text(
                        'Movies',
                        style: TextStyle(color: Colors.black),
                      )),
                      Tab(
                          child: Text(
                        'TV',
                        style: TextStyle(color: Colors.black),
                      )),
                    ]),
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              MoviesTab(id: widget.id),
              TvShowTab(id: widget.id),
            ],
          ),
        ));
  }
}
