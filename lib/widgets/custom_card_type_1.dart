import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(

      child: Column(
        children:[

         const ListTile(
           
            leading: Icon(Icons.account_balance_outlined,color: AppTheme.primary,size: 50,),
            title: Text('soy un titulo'),minVerticalPadding: 16,
            subtitle: Text('hola mundo mundo mundo mundo mudnonndjd nadjasdkjasd aksjdhaksjdhas aksjdakjshdaksd'),
          ),

        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: (){}, 
                child:const Text('cancel'),
                ),
                TextButton(
                onPressed: (){}, 
                child:const Text('ok'),
                
                ),
                
            ],
          ),
        )

        ],
      ),

    );
  }
}