import '../../ui.dart';
import 'buttons.dart';

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
