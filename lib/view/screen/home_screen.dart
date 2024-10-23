
import 'dart:ffi';

import 'package:flutter/material.dart';

import '../widget/widget.dart';

class HomeScreen extends StatelessWidget {
   static const String route="HomeScreen";
    const HomeScreen({super.key});

    @override
    Widget build(BuildContext context) {
        return  SafeArea(
          child: Scaffold(

            backgroundColor: Colors.teal,
              body: Column(
                children: [
                  HeaderCuentas(),
                  ListaCuentas(),
                  
                  
                ],
              ),
            floatingActionButton: FloatingActionButton(onPressed: (){
              showModalBottomSheet(context: context, builder: (context){
                return AddBottomSheet();
              });

            },child: Icon(Icons.add,color: Colors.white,),
            backgroundColor: Colors.teal,),
          ),
        );
    }
}






