import 'package:exercise/views/another/view.dart';
import 'package:flutter/material.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  State<NewScreen> createState() => NewController();
}

class NewController extends State<NewScreen> {
  @override
  Widget build(BuildContext context) {
    return NewView(this);
  }
}
