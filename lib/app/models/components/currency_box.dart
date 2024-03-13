import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  const CurrencyBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            flex: 1,
            child: SizedBox(
              height: 56,
              child: DropdownButton(
                  iconEnabledColor: Color.fromARGB(255, 255, 7, 7),
                  isExpanded: true,
                  underline: Container(
                    height: 1,
                    color: Colors.amber,
                  ),
                  items: const [
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
    );
  }
}
