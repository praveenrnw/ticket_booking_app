import 'package:built_collection/built_collection.dart';

import '../../model/cast_list_model.dart';
import '../../ui.dart';
import '../cast_page.dart';

class ImageNameList extends StatefulWidget {
  final int id;
  ImageNameList({super.key, required this.id});

  @override
  State<ImageNameList> createState() => _ImageNameListState();
}

class _ImageNameListState extends State<ImageNameList> {
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
                                overflow: TextOverflow.ellipsis,
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
