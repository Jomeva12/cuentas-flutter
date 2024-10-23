import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddBottomSheet extends StatefulWidget {
  const AddBottomSheet({
    super.key,
  });

  @override
  State<AddBottomSheet> createState() => _AddBottomSheetState();
}

class _AddBottomSheetState extends State<AddBottomSheet> {
  int? typeValue = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 6,
            margin: EdgeInsets.only(top: 10),
            width: 80,
            decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(3)),
          ),
          SizedBox(height: 32),
          Text("Transacciones"),
          SizedBox(height: 12),
          CupertinoSlidingSegmentedControl(
              groupValue: typeValue,
              children: {0: Text("Deuda"), 1: Text("Entrada")},
              onValueChanged: (value) {
                setState(() {
                  typeValue = value;
                });
              }),
          SizedBox(
            height: 15,
          ),
          Text(
            "Cantidad",
            style: TextStyle(color: Colors.teal, fontSize: 18),
          ),
          TextField(
            style: TextStyle(fontSize: 20),
            autofocus: true,
            inputFormatters: [
              //FilteringTextInputFormatter.digitsOnly, // Permite solo números enteros,
              CurrencyTextInputFormatter.currency(
                  symbol: "\$", decimalDigits: 0)
            ],
            textAlign: TextAlign.center,
            decoration: InputDecoration.collapsed(
                hintText: "\$0", hintStyle: TextStyle(color: Colors.grey)),
            keyboardType: TextInputType.number,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Descripción",
            style: TextStyle(color: Colors.teal, fontSize: 18),
          ),
          TextField(
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
            decoration: InputDecoration.collapsed(
                hintText: "Ingrese descripción",
                hintStyle: TextStyle(color: Colors.grey)),
          ),
          SizedBox(height: 12,),
          SizedBox(
            width: 150,
            child: ElevatedButton(onPressed: (){}, child:  Text(
              "ADD",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal,

            ),),
          ),
        ],
      ),
    );
  }
}
