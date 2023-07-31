import 'package:built_collection/built_collection.dart';
import 'package:ticket_booking_app/ui.dart';
import 'package:ticket_booking_app/views/movie_page.dart';

class MyTab extends StatefulWidget {
  final BuiltList<dynamic> builtList;
  const MyTab({super.key, required this.builtList});

  @override
  State<MyTab> createState() => _TabState();
}

class _TabState extends State<MyTab> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 4.0,
      mainAxisSpacing: 8.0,
      children: List.generate(widget.builtList.length, (index) {
        final movie = widget.builtList[index];
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => MoviePage(
                      movie: movie,
                    )));
          },
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(1),
              child: Column(
                children: [
                  displayImage(movie.image != null ? movie.imageUrl : ''),
                  const SizedBox(height: 5),
                  Text(
                    movie.title!,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}

Widget displayImage(String imageUrl) {
  if (imageUrl != '') {
    return Image.network(
      imageUrl,
      width: 95,
      height: 95,
    );
  } else {
    return Image.asset(
      'assets/images/empty.jpg',
      width: 95,
      height: 95,
    );
  }
}
