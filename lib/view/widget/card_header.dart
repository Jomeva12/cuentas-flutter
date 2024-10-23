import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardHeader extends StatelessWidget {
  final String titulo;
  final double monto;
  final Widget icon;

  const CardHeader({
    super.key,
    required this.titulo,
    required this.monto,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 36, vertical: 12),
        child: Column(
          children: [
            Row(
              children: [
                icon,
                SizedBox(
                  width: 5,
                ),
                Text(titulo),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text("\$$monto")
          ],
        ),
      ),
    );
  }
}
