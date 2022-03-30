import 'package:flutter/material.dart';
import 'package:flutter_componentes/theme/app_theme.dart';

class CustomCardType2  extends StatelessWidget {

  final String imageUrl;
  final String? name;


  const CustomCardType2 ({
     Key? key, 
     required this.imageUrl, this.name }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin:const EdgeInsets.symmetric(vertical: 20),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [

           FadeInImage(
              placeholder:const AssetImage('assets/gif.gif'), 
              image:AssetImage(imageUrl),
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
              fadeInDuration:const Duration(milliseconds: 300,),
              ),
              
              if(name != null)
              Container(
                alignment: AlignmentDirectional.center,
                padding:const EdgeInsets.only(right: 25,top: 10,bottom: 10),
                child: Text(name!),
              )
          

        ],
      ),
    );
  }
}