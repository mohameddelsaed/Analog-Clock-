import 'package:clock_analog/screens/home_screen/compnents/time_in_hour_minute.dart';

import 'package:flutter/material.dart';

import 'clock.dart';
import 'country_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
                'El Dakahlia Mansoura , Egypt  ',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const TimeHourAndMinute(),
            const Spacer(),
            const Clock(),
            const Spacer(),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: [
                  CountryCard(
                    country: 'New York , USA',
                    timeZone: "+3 HRS | EST ",
                    iconSrc: 'assets/icons/Liberty.svg',
                    time: '10:20',
                    period: 'PM',
                  ),
                  CountryCard(
                    country: 'sudney , AU',
                    timeZone: "+19 HRS | AEST ",
                    iconSrc: 'assets/icons/Sydney.svg',
                    time: '1:20',
                    period: 'PM',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}







