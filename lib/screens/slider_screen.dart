
import 'package:flutter/material.dart';
import 'package:flutter_componentes/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 200;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('slider'),
      ),
      body: SingleChildScrollView(
        child: Column(
          
          children: [
      
            Slider(
              
              min: 100,
              max: 400,
              activeColor: AppTheme.primary,
              value: _sliderValue, 
              onChanged: (value){
                _sliderValue = value;
                setState(() {
                  
                });
              }),
      
                Image(
                 
                 
                image:const AssetImage('assets/imagen.jpg'),
                fit: BoxFit.contain,
                width: _sliderValue,
                ),

                const SizedBox(height: 50,)
      
      
          ],
        ),
      )
      );
    
  }
}