// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: double.infinity,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 100, left: 20, right: 20, bottom: 20),
          child: Column(
            children: [
              Image.network(
                'https://thumbs.dreamstime.com/z/%C3%ADcone-de-troca-moeda-isom%C3%A9trica-c%C3%A2mbio-em-dinheiro-do-d%C3%B3lar-para-shekel-moedas-ouro-com-setas-circundantes-s%C3%ADmbolo-d-sinal-273169736.jpg?w=768',
                width: 200,
                height: 200,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 1,
                        child: SizedBox(
                          height: 56,
                          child: DropdownButton(
                              isExpanded: true,
                              underline: Container(
                                height: 1,
                                color: Colors.amber,
                              ),
                              items: [
                                DropdownMenuItem(
                                  child: Text('Real'),
                                ),
                                DropdownMenuItem(
                                  value: 'Dolar',
                                  child: Text('Dolar'),
                                ),
                                DropdownMenuItem(
                                  value: 'Euro',
                                  child: Text('Euro'),
                                ),
                                DropdownMenuItem(
                                  value: 'Bitcoin',
                                  child: Text('Bitcoin'),
                                ),
                              ],
                              onChanged: (value) {}),
                        )),
                    const SizedBox(width: 10),
                    const Expanded(
                      flex: 2,
                      child: TextField(
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 243, 0, 41)),
                onPressed: () {},
                child: const Text('CONVERTER'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
