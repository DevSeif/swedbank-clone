import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'components/profil_knapp.dart';
import 'components/transaktion_rad.dart';
import 'provider_service.dart';

void main() {
  runApp(MultiProvider(
    child: MyApp(),
    providers: [
      ChangeNotifierProvider(
        create: (_) => Account(),
      ),
    ],
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xff292826),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.menu,
                size: 26,
              ),
              Image(
                image: NetworkImage(
                    'https://swedbank.com/content/dam/swedbank/brand-manager/sketches/Our%20logotype_626px.png'),
                height: 43,
              ),
              Icon(
                Icons.notifications,
                size: 26,
              ),
            ],
          ),
        ),
        backgroundColor: Color(0xff1c1b19),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Konton',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffec762e),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Visa mer',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff47cdd9),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ProfileButton(),
                    SizedBox(
                      height: 60,
                    ),
                    Row(
                      children: [
                        Text(
                          'Att betala',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffec762e),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      color: Color(0xff292826),
                      width: double.infinity,
                      height: 70,
                      child: Container(
                        margin: EdgeInsets.only(left: 27),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 22,
                              backgroundColor: Color(0xff70635b),
                              child: Text(
                                '0',
                                style: TextStyle(
                                  color: Color(0xff292826),
                                  fontSize: 22,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 28,
                            ),
                            Text(
                              'E-fakturor',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Text(
                          'Senaste transaktioner',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffec762e),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      color: Color(0xff292826),
                      child: Column(
                        children: [
                          TransaktionRad(
                            datum: '2022-05-17',
                            plats: 'HEMKÖP GÖTEBORG',
                            summa: '-50',
                          ),
                          TransaktionRad(
                            datum: '2022-05-16',
                            plats: 'AMOS LIVSMEDEL',
                            summa: '-700,45',
                          ),
                          TransaktionRad(
                            datum: '2022-05-114',
                            plats: 'MORFARS GRILL',
                            summa: '-125',
                          ),
                          TransaktionRad(
                            datum: '2022-05-17',
                            plats: 'HEMKÖP GÖTEBORG',
                            summa: '-29,95',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
