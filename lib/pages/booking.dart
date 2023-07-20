import 'package:flutter/material.dart';
import '../components/crisisbutton.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../components/prompt_text.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
            margin: const EdgeInsets.only(bottom: 40, top: 80),
            child: const PromptText(
                'Please choose your booking Date and Time below:')),
        SfDateRangePicker(),
        Container(
            margin: const EdgeInsets.only(top: 40),
            child: const PromptText('Time Slots:')),
        const Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Chip(
                label: Text('09:00'),
              ),
              Chip(
                label: Text('09:30'),
              ),
              Chip(
                label: Text('10:00'),
              ),
              Chip(
                label: Text('10:30'),
              ),
              Chip(
                label: Text('11:00'),
              ),
              Chip(
                label: Text('11:30'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Chip(
                label: Text('12:00'),
              ),
              Chip(
                label: Text('12:30'),
              ),
              Chip(
                label: Text('13:00'),
              ),
              Chip(
                label: Text('13:30'),
              ),
              Chip(
                label: Text('14:00'),
              ),
              Chip(
                label: Text('14:30'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Chip(
                label: Text('15:00'),
              ),
              Chip(
                label: Text('15:30'),
              ),
              Chip(
                label: Text('16:00'),
              ),
              Chip(
                label: Text('16:30'),
              ),
              Chip(
                label: Text('17:00'),
              ),
              Chip(
                label: Text('17:30'),
              ),
            ],
          ),
        ]),
        OutlinedButton(
            onPressed: () => {null},
            child: const Text('Submit Booking Request')),
      ]),
      floatingActionButton: CrisisButton(
        onClicFunc: () {
          Navigator.pushNamed(context, '/crisis');
        },
      ),
    );
  }
}
