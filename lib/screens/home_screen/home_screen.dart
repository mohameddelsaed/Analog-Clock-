
import 'package:flutter/material.dart';
import 'compnents/body.dart';
import 'methods/build_appbar.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: buildAppBar(context),
      body: const Body(),
    );
  }




}
