import 'package:flutter/material.dart';
import 'package:prueba_evalucion/shared/buttonTrans.dart';
import 'package:prueba_evalucion/shared/myCard.dart';

import '../shared/ButtonTransf.dart';
import '../shared/badget.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              
              Text('Between Accounts', style: TextStyle(fontSize: 20)),
              Text(
                'No comission',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              SizedBox(height: 12),
              MyBadget(),
              SizedBox(height: 12),

              Mycard('USD', Image.asset('images/flag_usa.png')),

              SizedBox(height: 13),

              Mycard('CNY', Image.asset('images/flag_china.png')),
              SizedBox(height: 13),
             
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 19),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ButtonTransf('1'),
                        ButtonTransf('2'),
                        ButtonTransf('3'),
                      ],
                    ),

                    Row(
                      children: [
                        ButtonTransf('4'),
                        ButtonTransf('5'),
                        ButtonTransf('6'),
                      ],
                    ),

                    Row(
                      children: [
                        ButtonTransf('7'),
                        ButtonTransf('8'),
                        ButtonTransf('9'),
                      ],
                    ),

                    

                    Row(children: [ButtonTransf('.'), ButtonTransf('0')]),
                    SizedBox(height: 12,),
                    ElevatedButton(onPressed: (){},
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(const Color.fromARGB(255, 41, 41, 41)),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                      fixedSize: WidgetStatePropertyAll(Size(400, 60))


                    )
                    , child: Text('Continue', style: TextStyle(
                      fontSize: 18, color: Colors.white
                      
                    ),))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
