
import 'package:flutter/material.dart';
import 'package:foodapp/constant/font.dart';

dynamic supportBottom(context) {
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
          MediaQuery.sizeOf(context).height * 0.47)),
      context: context,
      builder: ((context) {
        return const Support_Sheet();
      }));
}
//String? _selectedFields ;
class Support_Sheet extends StatefulWidget {
  const Support_Sheet({super.key});

  @override
  State<Support_Sheet> createState() => _Support_SheetState();
}

class _Support_SheetState extends State<Support_Sheet> {


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
              "Get Support",
              style: font(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Divider(
            thickness: 2,
          ),
      const SizedBox(height: 20,),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
        //  padding: EdgeInsets.all(10),
          height: 60,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
            color: Colors.green,
          ),
          width: double.infinity,

          child: Row(children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(borderRadius:const BorderRadius.only( topLeft: Radius.circular(5),
                  bottomLeft: Radius.circular(5)),
                color: Colors.green[50],
              ),

              child:const  Icon(Icons.call,size: 35,color: Colors.green,),),
               
              const SizedBox(width: 10,),
              Text("Get Verification Call",style: font(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 18,
                color: Colors.white,

                fontWeight: FontWeight.w900,

              ),
              ),
          ],),
        ),


      ),
        //  const SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              //  padding: EdgeInsets.all(10),
              height: 60,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                color: Colors.green,
              ),
              width: double.infinity,

              child: Row(children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(borderRadius:const BorderRadius.only( topLeft: Radius.circular(5),
                      bottomLeft: Radius.circular(5)),
                    color: Colors.green[50],
                  ),

                  child:const  Icon(Icons.call,size: 35,color: Colors.green,),),

                const SizedBox(width: 10,),
                Text("Call Us",style: font(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 18,
                  color: Colors.white,

                  fontWeight: FontWeight.w900,

                ),
                ),
              ],),
            ),


          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              //  padding: EdgeInsets.all(10),
              height: 60,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                color: Colors.green,
              ),
              width: double.infinity,

              child: Row(children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(borderRadius:const BorderRadius.only( topLeft: Radius.circular(5),
                      bottomLeft: Radius.circular(5)),
                    color: Colors.green[50],
                  ),

                  child:const  Icon(Icons.message,size: 35,color: Colors.green,),),

                const SizedBox(width: 10,),
                Text("Chat With Us",style: font(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 18,
                  color: Colors.white,

                  fontWeight: FontWeight.w900,

                ),
                ),
              ],),
            ),


          ),


        ],
      ),
    );
  }
}
