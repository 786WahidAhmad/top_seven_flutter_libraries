import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class Lib7 extends StatefulWidget {
  const Lib7({super.key});

  @override
  State<Lib7> createState() => _Lib7State();
}

class _Lib7State extends State<Lib7> {
  final List<String> items = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
    'Option 5',
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Dropdown_Button2"),
        ),
      ),
      body: Center(
        child: DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            isExpanded: true,
            hint: Text(
              'Select Option',
              style: TextStyle(
                fontSize: 20,
                color: Theme.of(context).hintColor,
              ),
            ),
            items: items
                .map((String item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ))
                .toList(),
            value: selectedValue,
            onChanged: (String? value) {
              setState(() {
                selectedValue = value;
              });
            },
            buttonStyleData: const ButtonStyleData(
              padding: EdgeInsets.symmetric(horizontal: 16),
              height: 50,
              width: 180,
            ),
            menuItemStyleData: const MenuItemStyleData(
              height: 50,
            ),
          ),
        ),
      ),
    );
  }
}
