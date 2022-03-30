import 'package:flutter/material.dart';
import '../widgets/widget.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const Text('Card Widget'),
      ),
      body:ListView(
        padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        children:const [
          
          CustomCardType1(),
          SizedBox(height: 10,),
          CustomCardType2(imageUrl: 'assets/imagen.jpg',name: 'construccion',),
          SizedBox(height: 10,),
          CustomCardType2(imageUrl: 'assets/imagen2.jpg',),
          SizedBox(height: 10,),  
          CustomCardType2(imageUrl: 'assets/imagen3.jpg',name: 'firma',),
          SizedBox(height: 10,),
          SizedBox(height: 10,)

        ],
      )
    );
  }
}

