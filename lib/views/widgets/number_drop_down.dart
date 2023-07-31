import '../../ui.dart';

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
