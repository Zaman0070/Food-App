import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            DelayedDisplay(
              delay: Duration(milliseconds: 100),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Container(
                      height: 280,
                      decoration: BoxDecoration(
                        color: Color(0xffcfdece),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30)
                        ),
                      ),
                    ),
                    const DelayedDisplay(
                        delay: Duration(milliseconds: 300),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.arrow_back_ios_new,color: Colors.white,),
                        )),
                    Positioned(
                      top: 200,
                      child: DelayedDisplay(
                        delay: Duration(milliseconds: 700),
                        child: Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Container(
                            height: MediaQuery.of(context).size.height/1.45,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: 55,left: 20,right: 51),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Crispy\nChicken Fresh',style: TextStyle(
                                    fontSize: 28,fontWeight: FontWeight.w900
                                  ),),
                                  SizedBox(height: 10,),
                                  const Text('Fresh Food     Poke',style: TextStyle(
                                      fontSize: 16,fontWeight: FontWeight.w900
                                  ),),
                                  SizedBox(height: 30,),
                                  const Text('The healthiest dish prepare by our experts. Balanced in term of microand macro elements, contains a minimum amount of elements harmful to the figure',
                                  style: TextStyle(fontSize: 15,color: Colors.grey),
                                  ),
                                  const Padding(padding: EdgeInsets.symmetric(vertical: 25),
                                    child: Divider(thickness: 1,),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const[
                                          Text('Calories',style: TextStyle(
                                            fontSize: 13,color: Colors.grey
                                          ),),
                                          SizedBox(height: 6,),
                                          Text('250 Kcal',style: TextStyle(
                                              fontSize: 17,color: Color(0xff1c7d4f),fontWeight: FontWeight.w900
                                          ),),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const[
                                          Text('Protein',style: TextStyle(
                                              fontSize: 13,color: Colors.grey
                                          ),),
                                          SizedBox(height: 6,),
                                          Text('15 g',style: TextStyle(
                                              fontSize: 17,color: Color(0xff1c7d4f),fontWeight: FontWeight.w900
                                          ),),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const[
                                          Text('Calcium',style: TextStyle(
                                              fontSize: 13,color: Colors.grey
                                          ),),
                                          SizedBox(height: 6,),
                                          Text('7 g',style: TextStyle(
                                              fontSize: 17,color: Color(0xff1c7d4f),fontWeight: FontWeight.w900
                                          ),),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const[
                                          Text('CArbo',style: TextStyle(
                                              fontSize: 13,color: Colors.grey
                                          ),),
                                          SizedBox(height: 6,),
                                          Text('21 g',style: TextStyle(
                                              fontSize: 17,color: Color(0xff1c7d4f),fontWeight: FontWeight.w900
                                          ),),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const Padding(padding: EdgeInsets.symmetric(vertical: 30),
                                    child: Divider(thickness: 1,),
                                  ),
                                  SizedBox(height: 15,),
                                  Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xff1c7d4f),
                                    ),
                                    child: const Center(
                                      child: Text('Order for \$3,99',style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1,
                                        color: Colors.white
                                      ),),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: DelayedDisplay(
                        delay: Duration(milliseconds: 500),
                        child: Image.asset('assets/images/crispy.png',height: 320,),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
