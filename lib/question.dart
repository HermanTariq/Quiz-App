import 'package:flutter/material.dart';

class Quesstion extends StatefulWidget {
  const Quesstion({super.key});

  @override
  State<Quesstion> createState() => _QuesstionState();
}

class _QuesstionState extends State<Quesstion> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 1,
      child: const Text(" Quetsion screen"),
    ));
  }
}
