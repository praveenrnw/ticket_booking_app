import '../../ui.dart';

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
