import 'package:app_heroe/Services/heroe_service.dart';
import 'package:app_heroe/components/card_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: use_key_in_widget_constructors
class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final respSer = Provider.of<NewHeroe>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.grey[200],
      body: Container(child: CardItem(respSer.heroes)),
    );
  }
}
