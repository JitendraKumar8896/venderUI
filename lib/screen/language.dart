import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/constant/font.dart';
import 'package:foodapp/screen/login.dart';

class Language_Page extends StatefulWidget {
  const Language_Page({super.key});

  @override
  State<Language_Page> createState() => _Language_PageState();
}

class _Language_PageState extends State<Language_Page> {
  String _selectedLanguage = " ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
            width: double.infinity,
            child: Column(
              children: [
                const SizedBox(
                  height: 70,
                ),
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
                  height: 60,
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
                const SizedBox(
                  height: 20,
                ),

                SizedBox(
                  width: double.infinity,
                  child: Text("Select Language ",
                      textAlign: TextAlign.start,
                      style: font(
                          textStyle: const TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w400))),
                ),
                ListTile(
                  leading: Radio<String>(
                    value: 'English',
                    groupValue: _selectedLanguage,
                    onChanged: (value) {
                      setState(() {
                        _selectedLanguage = value!;
                      });
                    },
                  ),
                  title: Text('English',
                      style: font(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20))),
                ),
                ListTile(
                  leading: Radio<String>(
                    value: 'Hindi',
                    groupValue: _selectedLanguage,
                    onChanged: (value) {
                      setState(() {
                        _selectedLanguage = value!;
                      });
                    },
                  ),
                  title: Text('Hindi',
                      style: font(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20))),
                ), //first step
                ListTile(
                  leading: Radio<String>(
                    value: 'اردو',
                    groupValue: _selectedLanguage,
                    onChanged: (value) {
                      setState(() {
                        _selectedLanguage = value!;
                      });
                    },
                  ),
                  title: Text('اردو',
                      style: font(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20))),
                ),

// second step
                ListTile(
                  leading: Radio<String>(
                    value: 'Portugal',
                    groupValue: _selectedLanguage,
                    onChanged: (value) {
                      setState(() {
                        _selectedLanguage = value!;
                      });
                    },
                  ),
                  title: Text('Portugal',
                      style: font(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20))),
                ),
                ListTile(
                  leading: Radio<String>(
                    value: 'Francais',
                    groupValue: _selectedLanguage,
                    onChanged: (value) {
                      setState(() {
                        _selectedLanguage = value!;
                      });
                    },
                  ),
                  title: Text('Francais',
                      style: font(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20))),
                ), //first step
                ListTile(
                  leading: Radio<String>(
                    value: 'Bahasa Indonesia',
                    groupValue: _selectedLanguage,
                    onChanged: (value) {
                      setState(() {
                        _selectedLanguage = value!;
                      });
                    },
                  ),
                  title: Text('Bahasa Indonesia',
                      style: font(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20))),
                ),
                ListTile(
                  leading: Radio<String>(
                    value: 'Rassian',
                    groupValue: _selectedLanguage,
                    onChanged: (value) {
                      setState(() {
                        _selectedLanguage = value!;
                      });
                    },
                  ),
                  title: Text('Rassian',
                      style: font(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20))),
                ),
                // third step completed
                const SizedBox(
                  height: 10,
                ),

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
                          MaterialPageRoute(builder: (context) => const Login_Page()),
                        );

                      },
                    ),
                  ),
                ),
              ],
            )),
      )),
    );
  }
}
