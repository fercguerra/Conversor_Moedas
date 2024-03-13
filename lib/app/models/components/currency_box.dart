import 'package:conversor_moedas/app/models/moedas_model.dart';
import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  const CurrencyBox(
      {super.key,
      required this.items,
      required this.controller,
      required this.onChanged});

  final List<CurrencyModel> items;
  final TextEditingController controller;
  final void Function(CurrencyModel model) onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            flex: 1,
            child: SizedBox(
              height: 56,
              child: DropdownButton<CurrencyModel>(
                  iconEnabledColor: const Color.fromARGB(255, 255, 7, 7),
                  isExpanded: true,
                  underline: Container(
                    height: 1,
                    color: Colors.amber,
                  ),
                  items: items
                      .map((e) =>
                          DropdownMenuItem(value: e, child: Text(e.name)))
                      .toList(),
                  onChanged: (value) {}),
            )),
        const SizedBox(width: 10),
        const Expanded(
          flex: 2,
          child: TextField(
            controller: controller,
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
    );
  }
}
