// ignore_for_file: must_be_immutable

import 'package:conversor_moedas/app/controllers/home_controller.dart';
import 'package:conversor_moedas/app/models/components/currency_box.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();

  late HomeController homeController;

  HomeView({super.key}) {
    homeController = HomeController(toText: toText, fromText: fromText);
  }

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
              const SizedBox(height: 30),
              const CurrencyBox(),
              const SizedBox(height: 30),
              const CurrencyBox(),
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
