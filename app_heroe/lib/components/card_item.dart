import 'package:animate_do/animate_do.dart';
import 'package:app_heroe/Models/heroe_model.dart';
import 'package:expansion_card/expansion_card.dart';
import 'package:flutter/material.dart';

class CardItem extends StatefulWidget {
  final numHeroe = 1;
  final List<Heroe> heroes;
  // ignore: use_key_in_widget_constructors
  const CardItem(this.heroes);

  @override
  _CardItemState createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.heroes.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SlideInRight(
                  child: ExpansionCard(
                      trailing: const Icon(
                        Icons.arrow_downward,
                        color: Colors.black,
                      ),
                      backgroundColor: Colors.white,
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Text(
                            "Heroe",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Del día",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ],
                      ),
                      background: Image.asset('assets/marvel2.png'),
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 21.0,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              CircleAvatar(
                                radius: 30.0,
                                backgroundImage: NetworkImage(
                                    widget.heroes[index].images.md),
                                backgroundColor: Colors.transparent,
                              ),
                              const SizedBox(width: 24.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    widget.heroes[index].name,
                                    style: const TextStyle(
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  const SizedBox(height: 4.0),
                                  Column(
                                    children: [
                                      // ignore: sized_box_for_whitespace
                                      Container(
                                        width: 200,
                                        child: Text(
                                          'Ojos de Color: ' +
                                              widget.heroes[index].appearance
                                                  .eyeColor,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: Colors.grey[700],
                                            fontSize: 12.0,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      // ignore: sized_box_for_whitespace
                                      Container(
                                        width: 200,
                                        child: Text(
                                          widget.heroes[index].appearance
                                                      .hairColor ==
                                                  null
                                              ? 'Sin Datos'
                                              : 'Color de Cabello : ' +
                                                  widget.heroes[index]
                                                      .appearance.hairColor,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: Colors.grey[700],
                                            fontSize: 12.0,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      // ignore: sized_box_for_whitespace
                                      Container(
                                        width: 200,
                                        child: Text(
                                          widget.heroes[index].appearance
                                                      .race ==
                                                  null
                                              ? 'Raza: Sin datos'
                                              : 'Raza : ' +
                                                  widget.heroes[index]
                                                      .appearance.race,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: Colors.grey[700],
                                            fontSize: 12.0,
                                          ),
                                        ),
                                      ),

                                      const SizedBox(
                                        height: 10,
                                      ),
                                      // ignore: sized_box_for_whitespace
                                      Container(
                                        width: 200,
                                        child: Text(
                                          widget.heroes[index].biography
                                                      .alterEgos ==
                                                  null
                                              ? 'Alter Egos: Sin datos'
                                              : 'Alter Egos: ' +
                                                  widget.heroes[index].biography
                                                      .alterEgos
                                                      .toString(),
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: Colors.grey[700],
                                            fontSize: 12.0,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      // ignore: sized_box_for_whitespace
                                      Container(
                                        width: 200,
                                        child: Text(
                                          widget.heroes[index].biography
                                                      .firstAppearance ==
                                                  null
                                              ? 'Sin datos'
                                              : 'Aparición: ' +
                                                  widget.heroes[index].biography
                                                      .firstAppearance
                                                      .toString(),
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: Colors.grey[700],
                                            fontSize: 12.0,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      // ignore: sized_box_for_whitespace
                                      Container(
                                        width: 200,
                                        child: Text(
                                          widget.heroes[index].biography
                                                      .publisher ==
                                                  null
                                              ? 'Sin datos'
                                              : 'Publisher: ' +
                                                  widget.heroes[index].biography
                                                      .publisher
                                                      .toString(),
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: Colors.grey[700],
                                            fontSize: 12.0,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      // ignore: sized_box_for_whitespace
                                      Container(
                                        width: 200,
                                        child: Text(
                                          widget.heroes[index].work
                                                      .occupation ==
                                                  null
                                              ? 'Sin datos'
                                              : 'Ocupación: ' +
                                                  widget.heroes[index].biography
                                                      .publisher
                                                      .toString(),
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: Colors.grey[700],
                                            fontSize: 12.0,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        width: 200,
                                        child: Text(
                                          widget.heroes[index].connections
                                                      .groupAffiliation ==
                                                  null
                                              ? 'Sin datos'
                                              : 'Connections: ' +
                                                  widget
                                                      .heroes[index]
                                                      .connections
                                                      .groupAffiliation
                                                      .toString(),
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: Colors.grey[700],
                                            fontSize: 12.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
              ],
            ),
          );
        });
  }
}
