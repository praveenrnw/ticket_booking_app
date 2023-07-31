import 'package:ticket_booking_app/views/widgets/seats.dart';

import '../../ui.dart';

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
