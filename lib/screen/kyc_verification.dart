import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/constant/bottomSheetsupport.dart';
import 'package:foodapp/constant/bullet.dart';

import 'package:foodapp/constant/font.dart';

class KYC_Verification_Page extends StatefulWidget {
  const KYC_Verification_Page({super.key});

  @override
  State<KYC_Verification_Page> createState() => _KYC_Verification_PageState();
}

class _KYC_Verification_PageState extends State<KYC_Verification_Page> {
  int _currentStep = 0;
  StepperType stepperType = StepperType.horizontal;
  String _dropDownValue = '';

  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: () {

                supportBottom(context);
              },
              child: Container(
                height: 40,
                width: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.message,
                      size: 25,
                      color: Colors.blue,
                    ),
                    Text(
                      "Support",
                      textAlign: TextAlign.center,
                      style: font(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 18,
                        color: Colors.blue,

                        fontWeight: FontWeight.w900,
                        // fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Eng",
                    textAlign: TextAlign.center,
                    style: font(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 18,
                      color: Colors.blue,

                      fontWeight: FontWeight.w900,
                      // fontStyle: FontStyle.italic,
                    ),
                  ),
                  const Icon(
                    Icons.keyboard_arrow_down,
                    size: 35,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: Theme(
          data: ThemeData(
              //hintColor: Colors.blue,
              primarySwatch: Colors.blue,
              colorScheme: const ColorScheme.light(
                primary: Colors.purple,
              )),
          child: Stepper(
            margin: const EdgeInsets.all(0),
            type: stepperType,
            physics: const ClampingScrollPhysics(),
            currentStep: _currentStep,
            onStepTapped: (step) => tapped(step),
            onStepContinue: continued,
            onStepCancel: cancel,
            steps: <Step>[
              Step(
                  title: const Text(""),
                  label: Text(
                    "Phone Validation",
                    textAlign: TextAlign.center,
                    style: font(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 12)),
                  ),
                  content: const Column(
                    children: <Widget>[
                      // VerifyPage(),
                    ],
                  ),
                  isActive: true,
                  state: StepState.complete),
              Step(
                title: const Text(''),
                label: Text(
                  "KYC Verification",
                  textAlign: TextAlign.center,
                  style: font(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w900, fontSize: 12)),
                ),
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height: 10,),
                    Text(
                      "Enter shop details",
                      textAlign: TextAlign.start,
                      style: font(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter full name of your shop'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText:
                              'Enter your name as per a legal valid documents '),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent,
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          //  focusColor: Colors.grey,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          hint: _dropDownValue == ''
                              ? const Text("Selects your shop's category")
                              : Text(
                                  _dropDownValue,
                                  style: const TextStyle(color: Colors.black),
                                ),
                          isExpanded: true,
                          iconSize: 30.0,
                          style: const TextStyle(color: Colors.black),
                          items: ['B2B', 'B2C', 'All'].map(
                            (val) {
                              return DropdownMenuItem<String>(
                                value: val,
                                child: Text(val),
                              );
                            },
                          ).toList(),
                          onChanged: (val) {
                            setState(
                              () {
                                _dropDownValue = val!;
                              },
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText:
                              'Enter your pin code as per a legal valid documents '),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "WhatsApp Number",
                      style: font(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: '+91 9500000000'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Switch(
                          // materialTapTargetSize: MaterialTapTargetSize(2),
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                              //  print(isSwitched);
                            });
                          },
                          activeTrackColor: Colors.lightGreenAccent,
                          activeColor: Colors.green,
                        ),
                        Text(
                          "Yes would like to receive updates on WhatsApp",
                          textAlign: TextAlign.start,
                          style: font(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 12)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Business KYC ",
                      textAlign: TextAlign.start,
                      style: font(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        businessKYC(context);
                      },
                      child: Container(
                        // padding: EdgeInsets.all(10),
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent,
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child:  Center(
                          child: StatefulBuilder(
                            builder : (context, setInnerState){return  ListTile(
                              title: Text(
                                _selectedFields??'GST Certificate',
                                style:
                                const  TextStyle(color: Colors.black, fontSize: 15),
                              ),
                              trailing:const Icon(
                                Icons.arrow_drop_down,
                                size: 30,
                              ),
                            );},
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 60,
                      child: TextField(
                        decoration: InputDecoration(

                            suffix: Container(

                              height: 50,
                              width: 100,
                              child: ElevatedButton(

                                  style: ElevatedButton.styleFrom(fixedSize: Size(100,30),
                           //       padding: EdgeInsets.all(0),
                                  ),
                                  onPressed: () {},
                                  child: const Text("Validate")),
                            ),
                            border: const OutlineInputBorder(),
                            labelText: 'Enter GST Certificate number'),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Text(
                      "Additional Mobile Number",
                      style: font(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16)),
                    ),
                    const SizedBox(height: 10,),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(

                          border: OutlineInputBorder(),

                          labelText: '+91 9500000000'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Bank KYC ",
                      textAlign: TextAlign.start,
                      style: font(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20)),
                    ),
                    const SizedBox(height: 10,),
                    Text(
                      "Bank Account Number",
                      style: font(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16)),
                    ),
                    const SizedBox(height: 10,),
                    TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Please Enter Account Number'),
                    ),
                    const SizedBox(height: 10,),
                    SizedBox(
                      height: 60,
                      child: TextField(
                        decoration: InputDecoration(

                            suffix: Container(

                              height: 50,
                              width: 100,
                              child: ElevatedButton(

                                  style: ElevatedButton.styleFrom(fixedSize: Size(100,30),
                                    //       padding: EdgeInsets.all(0),
                                  ),
                                  onPressed: () {},
                                  child: const Text("Validate")),
                            ),
                            border: const OutlineInputBorder(),
                            labelText: 'Enter IFSC Code'),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Text(
                      "Delivery Details ",
                      textAlign: TextAlign.start,
                      style: font(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20)),
                    ),
                    const SizedBox(height: 10,),
                    Text(
                      "Free Delivery Radius(KM)",
                      style: font(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16)),
                    ),
                    const SizedBox(height: 10,),
                    TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Radius'),
                    ),

                    const SizedBox(height: 10,),
                    Text(
                      "Minimum Order Value(MOV)(Rs.)",
                      style: font(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16)),
                    ),
                    const SizedBox(height: 10,),
                    TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Please Enter MOV'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    const Divider(thickness: 1,color: Colors.grey,),
                    const SizedBox(
                      height: 20,
                    ),

                    Text(
                      "Upload Your Photo ",
                      textAlign: TextAlign.start,
                      style: font(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20)),
                    ),
                     const SizedBox(height: 10,),
                     Container(
                       height: 100,
                       width: 100,
                       decoration: BoxDecoration(
                         border: Border.all(width: 1, color: Colors.grey),
                         borderRadius: BorderRadius.circular(5),
                        // image: DecorationImage()
                         image: const DecorationImage(
                           image: AssetImage(
                               'assets/images/user.png'),
                           fit: BoxFit.fill,
                         ),
                       ),
                     ),
                    const SizedBox(
                      height: 20,
                    ),

                    Text(
                      "Upload Your shop Photos ",
                      textAlign: TextAlign.start,
                      style: font(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20)),
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                            // image: DecorationImage()
                            image: const DecorationImage(
                              image: AssetImage(
                                  'assets/images/user.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          //height: 150,
                        //  width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            const  SizedBox(height: 5,),
                              Text("Inside  the Shop",style: font(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 17)),),
                              Text("The Image Must:",style: font(
                              textStyle: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15,color: Colors.grey)),),
                             // MyList(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                 const CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    radius: 3,
                                    //Text
                                  ),
                                  const SizedBox(width: 5,),
                                  Text('be clear',style: font(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.bold, fontSize: 15,color: Colors.grey))),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    radius: 3,
                                    //Text
                                  ),
                                  const SizedBox(width: 5,),
                                  SizedBox(width: 180,
                                    child: Text('contains the owner of shop',style: font(
                                        textStyle: const TextStyle(
                                            fontWeight: FontWeight.bold, fontSize: 15,color: Colors.grey))),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    radius: 3,
                                    //Text
                                  ),
                                  const SizedBox(width: 5,),
                                  SizedBox(width: 180,
                                    child: Text('Show products from shop in the background',style: font(
                                        textStyle: const TextStyle(
                                            fontWeight: FontWeight.bold, fontSize: 15,color: Colors.grey))),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

// new container start
                  const SizedBox(height: 20,),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                            // image: DecorationImage()
                            image: const DecorationImage(
                              image: AssetImage(
                                  'assets/images/user.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          //height: 150,
                          //  width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const  SizedBox(height: 5,),
                              Text("Inside  the Shop",style: font(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 17)),),
                              Text("The Image Must:",style: font(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 15,color: Colors.grey)),),
                              // MyList(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    radius: 3,
                                    //Text
                                  ),
                                  const SizedBox(width: 5,),
                                  Text('be clear',style: font(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.bold, fontSize: 15,color: Colors.grey))),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    radius: 3,
                                    //Text
                                  ),
                                  const SizedBox(width: 5,),
                                  SizedBox(width: 180,
                                    child: Text('contains the outside of shop',style: font(
                                        textStyle: const TextStyle(
                                            fontWeight: FontWeight.bold, fontSize: 15,color: Colors.grey))),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    radius: 3,
                                    //Text
                                  ),
                                  const SizedBox(width: 5,),
                                  SizedBox(width: 180,
                                    child: Text('clearly Show the shop name board with shop name',style: font(
                                        textStyle: const TextStyle(
                                            fontWeight: FontWeight.bold, fontSize: 15,color: Colors.grey))),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    // end




                    const SizedBox(
                      height: 20,
                    ),

                    Text(
                      "Validate Your KYC",
                      textAlign: TextAlign.start,
                      style: font(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.green[400],
                      ),
                      child: TextButton(
                          onPressed: () {
                            //Navigator.push(
                              //context,
                              //MaterialPageRoute(builder: (context) =>  VerifyPage()),
                            //);
                          },
                          child: Text(
                            "Use Adhaar Card Number",
                            textAlign: TextAlign.center,
                            style: font(
                              textStyle: Theme.of(context).textTheme.displayLarge,
                              fontSize: 18,
                              color: Colors.white,

                              fontWeight: FontWeight.w900,
                              // fontStyle: FontStyle.italic,
                            ),
                          )),
                    ),
                  const SizedBox(height: 20,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                     Text("You can also use:",style: font(
                         textStyle: const TextStyle(
                             fontWeight: FontWeight.w900, fontSize: 16)),),
                   const  SizedBox(height: 10,),

                   ],),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text("Drivers Licence",style: font(
                        textStyle: const TextStyle(

                          decorationThickness: 3,
                          decoration: TextDecoration.underline,
                          color: Colors.green,
                        fontWeight: FontWeight.w900, fontSize: 18))),
                     const SizedBox(width: 20,),
                      Text("Voter Id Card",style: font(
                          textStyle: const TextStyle(
                              decorationThickness: 3,
                              decoration: TextDecoration.underline,
                              color: Colors.green,
                              fontWeight: FontWeight.w900, fontSize: 18)),),
                    ],),
                   const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("PAN Card Details",style: font(
                            textStyle: const TextStyle(

                                decorationThickness: 3,
                                decoration: TextDecoration.underline,
                                color: Colors.green,
                                fontWeight: FontWeight.w900, fontSize: 18))),

                      ],),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("OR",style: font(
                            textStyle: const TextStyle(

                                color: Colors.black,
                                fontWeight: FontWeight.w900, fontSize: 18))),

                      ],),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Upload Valid Document Image",style: font(
                            textStyle: const TextStyle(

                                decorationThickness: 3,
                                decoration: TextDecoration.underline,
                                color: Colors.green,
                                fontWeight: FontWeight.w900, fontSize: 18))),

                      ],),
                    const SizedBox(
                      height: 20,
                    ),

                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.green[400],
                      ),
                      child: TextButton(
                          onPressed: () {
                            //Navigator.push(
                            //context,
                            //MaterialPageRoute(builder: (context) =>  VerifyPage()),
                            //);
                          },
                          child: Text(
                            "Submit All Details",
                            textAlign: TextAlign.center,
                            style: font(
                              textStyle: Theme.of(context).textTheme.displayLarge,
                              fontSize: 18,
                              color: Colors.white,

                              fontWeight: FontWeight.w900,
                              // fontStyle: FontStyle.italic,
                            ),
                          )),
                    ),


                  ],
                ),
                isActive: _currentStep >= 0,
                state:
                    _currentStep >= 1 ? StepState.complete : StepState.disabled,
              ),

              //   second step end on way
              Step(
                title: const Text(""),
                label: Text(
                  "Details Verification",
                  textAlign: TextAlign.center,
                  style: font(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w900, fontSize: 12)),
                ),
                content: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Mobile Number'),
                    ),
                  ],
                ),
                isActive: _currentStep >= 0,
                state:
                    _currentStep >= 2 ? StepState.complete : StepState.disabled,
              ),
            ],
          ),
        ),
      ),
    );
  }

  tapped(int step) {
    setState(() => _currentStep = step);
  }

  continued() {
    _currentStep < 2 ? setState(() => _currentStep += 1) : null;
  }

  cancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }
}

dynamic businessKYC(context) {
  return showModalBottomSheet(
      // elevation: 5,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15),
        topRight: Radius.circular(15),
      )),
      isScrollControlled: true,
      constraints: BoxConstraints.tight(Size(MediaQuery.sizeOf(context).width,
          MediaQuery.sizeOf(context).height * 0.51)),
      context: context,
      builder: ((context) {
        return const KYCbusiness_Sheet();
      }));
}
String? _selectedFields ;
class KYCbusiness_Sheet extends StatefulWidget {
  const KYCbusiness_Sheet({super.key});

  @override
  State<KYCbusiness_Sheet> createState() => _KYCbusiness_SheetState();
}

class _KYCbusiness_SheetState extends State<KYCbusiness_Sheet> {

  List name = [
    "Udyog Adhar Certificate",
    "Shop Establishment/Gumasta Licence ",
    "GST Certificate",
    "FSSAI Certificate ",
    "Udyam Adhar Certificate",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          ListTile(
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.close),
            ),
            title: Text(
              "Business KYC Documents",
              style: font(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Divider(
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: name.length,
              separatorBuilder: (context, index){
                return const Divider(
                  height: 0,
                  thickness: 2,
                );
              },
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  trailing: Radio<String>(
                    //activeColor: Colors.yellow,
                    // hoverColor: Colors.yellow,
                    value: name[index],
                    groupValue: _selectedFields,
                    onChanged: (value) {
                      setState(() {
                        _selectedFields = value!;

                      });
                      print(_selectedFields);
                    },
                  ),
                  title: Text(
                    name[index],

                    style: font(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );

              },
            ),
          ),

        ],
      ),
    );
  }
}
