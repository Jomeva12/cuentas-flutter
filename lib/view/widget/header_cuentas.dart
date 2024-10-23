import 'package:cuentas/view/widget/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderCuentas extends StatelessWidget {
  const HeaderCuentas({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.teal,
      ),
      child:const  Column(
        children: [
          Text("MONEY TRACKER",
          style: TextStyle(color: Colors.white38, fontWeight: FontWeight.bold,fontSize: 26 ),
          ),
          SizedBox(height: 12,),
          Text("Balance",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 16 ),
          ),
          Text("\$1.000.00",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 26 ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CardHeader(
                icon: Icon(Icons.money_off,color: Colors.red,),
                monto: 500.00,
                titulo: "Deudas",
              ),
              SizedBox(width: 12,),
              CardHeader(
                icon: Icon(Icons.monetization_on_outlined,color: Colors.teal,),
                monto: 1500.00,
                titulo: "saldo",
              ),
            ],
          ),


        ],
      ),
    );
  }
}

