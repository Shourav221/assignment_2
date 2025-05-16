import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Customcart extends StatelessWidget {
  final String image;
  final int BatchNo;
  final String TotalSeat;
  final int? DayLeft;
  final String Description;
  Customcart({
    super.key,
    required this.image,
    required this.BatchNo,
    required this.TotalSeat,
    required this.Description,
    this.DayLeft,
  });

  @override
  Widget build(BuildContext context) {
    Size ScreenSize = MediaQuery.of(context).size;
    double cartSize = 0;
    if (ScreenSize.width < 768) {
      cartSize = ScreenSize.width / 2;
    } else if (1024 >= ScreenSize.width && 768 < ScreenSize.width) {
      cartSize = ScreenSize.width / 3;
    } else if (ScreenSize.width > 1024) {
      cartSize = ScreenSize.width / 4;
    }

    final bool showBatchText = ScreenSize.width > 768;
    return SizedBox(
      width: cartSize,
      height: ScreenSize.height / 3,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Column(
          children: [
            Image.asset(
              image,
              height: 130,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 8,
                // runSpacing: 4,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (showBatchText) Text('Batch no: $BatchNo'),
                      SizedBox(width: 5),
                      FaIcon(FontAwesomeIcons.peopleGroup, size: 12),
                      SizedBox(width: 4),
                      Text('$TotalSeat Seat', style: TextStyle(fontSize: 12)),
                    ],
                  ),
                  if (DayLeft != null)
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        FaIcon(FontAwesomeIcons.clock, size: 12),
                        SizedBox(width: 4),
                        Text('$DayLeft Days', style: TextStyle(fontSize: 12)),
                      ],
                    ),
                ],
              ),
            ),
            // Spacer(),
            Text(
              '$Description',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            SizedBox(
              height: 26,
              width: cartSize,
              child: Padding(
                padding: EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('See More', style: TextStyle(fontSize: 14)),
                      SizedBox(width: 10,),
                      FaIcon(FontAwesomeIcons.arrowRight,color: Colors.white,)
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white54,
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
