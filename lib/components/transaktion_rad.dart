import 'package:flutter/material.dart';
import 'package:swedbank_clone/constants.dart';

class TransaktionRad extends StatelessWidget {
  TransaktionRad({this.summa, this.datum, this.plats});

  final summa;
  final datum;
  final plats;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 70,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Color(0xffff9100),
                      child: Icon(
                        Icons.restaurant,
                        color: Color(0xff292826),
                        size: 23,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  margin: EdgeInsets.only(left: 10, top: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox(
                        fit: BoxFit.cover,
                        child: Text(
                          '$plats',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        '$datum',
                        style: TextStyle(
                          color: Color(0xffb1a096),
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 17, right: 15),
                      child: Text(
                        '$summa',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        myDivider,
      ],
    );
  }
}
