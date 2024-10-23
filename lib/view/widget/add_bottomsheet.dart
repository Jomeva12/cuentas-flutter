import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddBottomSheet extends StatefulWidget {
  const AddBottomSheet({
    super.key,
  });

  @override
  State<AddBottomSheet> createState() => _AddBottomSheetState();
}

class _AddBottomSheetState extends State<AddBottomSheet> {
  int? typeValue=0;
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
          SizedBox(height: 12),
          Text("Transacciones"),
          CupertinoSlidingSegmentedControl(

              groupValue: typeValue,
              children: {0: Text("Deuda"), 1: Text("Entrada")},
              onValueChanged: (value) {
                setState(() {
                  typeValue=value;
                });

              })
        ],
      ),
    );
  }
}
