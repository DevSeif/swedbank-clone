import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider_service.dart';

_inputAmount(BuildContext context) {
  final inputController = TextEditingController();

  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
            backgroundColor: Color(0xff1c1b19),
            title: const Text('Mata in summa',
                style: TextStyle(color: Colors.white)),
            content: TextField(
              onChanged: (value) => context.read<Account>().setMoney(value),
              style: TextStyle(color: Colors.white),
              controller: inputController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelStyle: TextStyle(color: Colors.white),
                fillColor: Colors.white,
                prefixIconColor: Colors.white,
                labelText: 'Summa',
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                prefixIcon: Icon(
                  Icons.payment,
                  color: Colors.white,
                ),
              ),
            ));
      });
}

class ProfileButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _inputAmount(context);
      },
      child: Container(
        color: Color(0xff292826),
        width: double.infinity,
        height: 90,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Privatkonto',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 21,
                      ),
                    ),
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        '8107-5,448 395 891-0',
                        style: TextStyle(
                          color: Color(0xffb1a096),
                          fontSize: 15,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 24, right: 20),
                    child: Text(
                      context.watch<Account>().pengar,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
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
