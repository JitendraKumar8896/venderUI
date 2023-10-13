import 'package:country_picker/country_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/constant/font.dart';
import 'package:foodapp/screen/verify_otp.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  @override

  Country selectedCountry = Country(
      phoneCode: "91",
      countryCode: "In",
      e164Sc: 0,
      geographic: true,
      level: 1, name: "India",
      example: "India",
      displayName: "India",
      displayNameNoCountryCode: "In",
      e164Key: "");


  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Container(
            width: double.infinity,

            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Column(children: [

                    const SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                      Container(height: 50,
                        width: 150,
                        decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.green,width: 3)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("English", style: font(textStyle: const TextStyle(fontSize: 20, color: Colors.green, fontWeight: FontWeight.bold)),),
                              const  Icon(Icons.keyboard_arrow_down_sharp, color: Colors.green,size: 35,),
                            ],
                          ),
                        ),
                      )
                    ],),
           const  SizedBox(height: 20),

                    CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 40,
                      child: Image.asset(
                        'assets/images/logo.png',
                        height: 50,
                        width: 50,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "FirstFind",
                      style: font(
                          textStyle: const TextStyle(
                              fontSize: 30,
                              color: Colors.green,
                              letterSpacing: 2,
                              fontWeight: FontWeight.w900)),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text("STORE",
                        style: font(
                            textStyle: const TextStyle(
                                color: Colors.grey,
                                letterSpacing: 2,
                                fontWeight: FontWeight.w900))),
                    const SizedBox(
                      height: 50,
                    ),
                    Text("Delivering almost",
                        style: font(
                            textStyle: const TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                // letterSpacing: 1,
                                fontWeight: FontWeight.w700))),
                    const SizedBox(
                      height: 10,
                    ),
                    Text("Everything .",
                        style: font(
                            textStyle: const TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w400))),

                  //  SizedBox(height: 100,),

                   // const SizedBox(height: 250,),
                    Image.asset('assets/images/R.png',height: 300,width: double.infinity,),


                  ]),
              const  SizedBox(height: 20,),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: TextField(
                          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                          //controller: phoneController,
                          keyboardType: TextInputType.phone,
                          decoration:  InputDecoration(
                            //focusColor: Colors.green[50],
                            border: InputBorder.none,
                            hintText: 'Enter Mobile Number',
                            //border: OutlineInputBorder(),
                            prefixIcon: Container(
                              padding: EdgeInsets.only(top: 10,left: 8),
                              child: InkWell(
                                onTap: (){
                                  showCountryPicker(context: context,
                                      countryListTheme: const CountryListThemeData(
                                        bottomSheetHeight: 550,
                                      ),
                                      onSelect: (value){
                                        setState(() {
                                          selectedCountry = value;
                                        });
                                      });

                                },
                                child: Text(" +${selectedCountry.phoneCode}",
                                  style: const TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),

                          ),

                        ),
                      ),
                       Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green[400],
                        ),
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  VerifyPage()),
                              );
                                  },
                            child: Text(
                              "continue",
                              textAlign: TextAlign.center,
                              style: font(
                                textStyle: Theme.of(context).textTheme.displayLarge,
                                fontSize: 15,
                                color: Colors.white,

                                fontWeight: FontWeight.w900,
                                // fontStyle: FontStyle.italic,
                              ),
                            )),
                      ),
                    ],
                  ),
                ],
              ),


            ),

        ),
      ),
    );
  }
}
