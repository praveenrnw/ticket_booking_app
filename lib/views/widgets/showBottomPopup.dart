import 'package:ticket_booking_app/views/widgets/showBottomPopup_Seats.dart';
import '../../ui.dart';
import 'number_drop_down.dart';

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
