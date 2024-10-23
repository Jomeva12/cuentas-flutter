

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListaCuentas extends StatelessWidget {
  const ListaCuentas({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white
                
        ),
        child: ListView(
          children:const [
            ListTile(
              trailing: Text("\$1.000", style: TextStyle(fontSize: 16),),
              leading: Icon(Icons.attach_money,color: Colors.teal,),
              title: Text("Entrada"),
              subtitle: Text("Salario",style: TextStyle(fontSize: 10),),
            ),
            ListTile(
              trailing: Text("\$1.000", style: TextStyle(fontSize: 16),),
              leading: Icon(Icons.attach_money,color: Colors.teal,),
              title: Text("Entrada"),
              subtitle: Text("Salario",style: TextStyle(fontSize: 10),),
            ),
            ListTile(
              trailing: Text("\$1.000", style: TextStyle(fontSize: 16),),
              leading: Icon(Icons.attach_money,color: Colors.teal,),
              title: Text("Entrada"),
              subtitle: Text("Salario",style: TextStyle(fontSize: 10),),
            ),
          ],
        ),
      ),
    );
  }
}