import 'package:flutter/material.dart';
import 'package:frontend/models.dart/trips.dart';

import '../../utils/fonts.dart';
import '../../widgets/seat.dart';
import '../buildseat.dart';

class DisplaySeat extends StatelessWidget {
  const DisplaySeat({
    super.key,
    required this.tx,
  });
  final Trips tx;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Bus Seat",
              style:
                  MyFont.headline.copyWith(fontSize: 40, color: Colors.brown)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 50),
              const Seat(seatno: "K1"),
              const Seat(seatno: "K2"),
              const SizedBox(width: 100),
              SizedBox(
                  height: 90, width: 90, child: Image.asset("assets/steer.png"))
            ],
          ),
          Text("Door -->", style: MyFont.headline),
          const SizedBox(height: 10),
          Row(
            children: [
              const SizedBox(width: 30),
              BuildSeats(side: "A", size: tx.rows),
              BuildSeats(side: "B", size: tx.rows),
            ],
          )
        ],
      ),
    );
  }
}
