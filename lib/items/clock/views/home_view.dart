import 'package:flutter/material.dart';

import '../widgets/clock.dart';
import '../widgets/digital_clock.dart';


class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [AnalogClock(), DigitalClock(), Divider()]));
  }
}
