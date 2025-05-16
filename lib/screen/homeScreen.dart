import 'package:flutter/material.dart';
import 'package:ostad_assignment_2/CustomWidget/CustomCart.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size ScreenSize = MediaQuery.of(context).size;
    int crossAsisCount = 0;
    if (ScreenSize.width < 768) {
      crossAsisCount = 2;
    } else if (1024 >= ScreenSize.width && 768 < ScreenSize.width) {
      crossAsisCount = 3;
    } else if (ScreenSize.width > 1024) {
      crossAsisCount = 4;
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: Text(
          'Country\'s Flag ',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
        ),
      ),
      body: GridView.count(
        mainAxisSpacing: 5,
        crossAxisSpacing: 2,
        crossAxisCount: crossAsisCount,
        children: [

          Customcart(
            image: 'assets/bangladesh.png',
            BatchNo: 11,
            TotalSeat: '50',
            Description: 'Bangladesh',
            DayLeft: 4,
          ),
          Customcart(
            image: 'assets/Aus.png',
            BatchNo: 12,
            TotalSeat: '100',
            Description: 'Australia',
            DayLeft: 8,
          ),
          Customcart(
            image: 'assets/Germany.png',
            BatchNo: 12,
            TotalSeat: '69',
            Description: 'Germany',
          ),
          Customcart(
            image: 'assets/India.png',
            BatchNo: 12,
            TotalSeat: '500',
            Description: 'India',
            DayLeft: 5,
          ),
          Customcart(
            image: 'assets/nepal.png',
            BatchNo: 12,
            TotalSeat: '79',
            Description: 'Nepal',
            DayLeft: 50,
          ),
          Customcart(
            image: 'assets/Uk.png',
            BatchNo: 12,
            TotalSeat: '300',
            Description: 'UK',
            DayLeft: 50,
          ),
          Customcart(
            image: 'assets/usa.png',
            BatchNo: 12,
            TotalSeat: '80',
            Description: 'USA',
            DayLeft: 40,
          ),
          Customcart(
            image: 'assets/Lithuinia.png',
            BatchNo: 12,
            TotalSeat: '444',
            Description: 'Lithuinia',
            DayLeft: null,
          ),
          Customcart(
            image: 'assets/bhutan.png',
            BatchNo: 12,
            TotalSeat: '88',
            Description: 'Bhutan',
            DayLeft: 3,
          ),
          Customcart(
            image: 'assets/norway.png',
            BatchNo: 12,
            TotalSeat: '44',
            Description: 'Norway',
            DayLeft: 5,
          ),
        ],
      ),
    );
  }
}
