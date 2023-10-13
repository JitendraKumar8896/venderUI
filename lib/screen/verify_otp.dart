
import 'dart:async';

import 'package:flutter/material.dart';

import 'package:foodapp/constant/font.dart';
import 'package:foodapp/screen/kyc_verification.dart';

class VerifyPage extends StatefulWidget {
  const VerifyPage({super.key});

  @override
  State<VerifyPage> createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
  Timer ? timer;
  @override
  int countDown=30;
  // resend otp
  resendOTP()
  {
    if(countDown==0)
      {
        startTimer();
        setState(() {
          countDown=30;
        });
      }

  }



  startTimer() {
     timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (countDown > 0) {
          countDown--;
        } else {
          timer.cancel();
        }
      });
    });
  }




@override
  void initState() {
    // TODO: implement initState
   startTimer();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer!.cancel();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('verification',style: font(textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black)),),
      ), //
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child:  Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
              const SizedBox(
                height: 30,

              ),
              Text("Enter verification code we've send on given number.",style:  font(textStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: Colors.black)),),
             const SizedBox(height: 20,),
             const TextField(
               keyboardType: TextInputType.number,
                maxLength: 6,
               // maxLengthEnforcement: MaxLengthEnforcement.none,
                decoration: InputDecoration(
                 labelText: 'ENTER VERIFICATION CODE'


                ),


               // When user presses enter it will adapt to it
              ),
            const SizedBox(height: 100,),
            const  Divider(thickness: 1,),
            const SizedBox(height: 20,),
            Text("Steps to Register ", style: font(textStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 25)), ),
            const SizedBox(height: 40,),
            Row(children: [
              const Icon(Icons.looks_one,size: 35,color: Colors.purple,),
              const SizedBox(width: 20,),
               Text("Mobile Number Validation", style: font(textStyle: const TextStyle(fontWeight: FontWeight.w400, fontSize: 18)),)
            ],),
                  const SizedBox(height: 20,),
                  Row(children: [
                    const Icon(Icons.looks_two,size: 35,color: Colors.purple,),
                    const SizedBox(width: 20,),
                    Text("KYC Verification", style: font(textStyle: const TextStyle(fontWeight: FontWeight.w400, fontSize: 18)),)
                  ],),
                  const SizedBox(height: 20,),
                  Row(children: [
                  const  Icon(Icons.looks_3,size: 35,color: Colors.purple,),
                  const  SizedBox(width: 20,), Text("Details under Verification", style: font(textStyle: const TextStyle(fontWeight: FontWeight.w400, fontSize: 18)),),

                  ],),

               // timer section
               const   SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('00:${countDown.toString()}',style: font(textStyle: TextStyle(
          fontSize: 16,
              fontWeight: FontWeight.w900,
              color: countDown == 0
                  ? Colors.black
                  : Colors.black))),

                          InkWell(
                              onTap: () {
                                resendOTP();
                              },
                              child: Text("Resend",
                                  style: font(textStyle: TextStyle(
                                    fontSize: 16,
                                      fontWeight: FontWeight.w900,
                                      color: countDown == 0
                                          ? Colors.green
                                          : Colors.green))))

                    ],
                  ),


                const SizedBox(height: 20,),
                  Card(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: 60,
                      color: Colors.green[400],
                      width: double.infinity,
                      child: TextButton(
                        child: Text("Continue",
                            style: font(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            )),
                        // TextStyle(fontSize: 20, color: Colors.white, ),

                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const KYC_Verification_Page()),
                          );

                        },
                      ),
                    ),
                  ),
            ]),
          ),


        ),
      ),
    );
  }
}


