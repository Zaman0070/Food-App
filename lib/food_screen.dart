import 'package:flutter/material.dart';
import 'package:flutter_tutorial/details_page.dart';
class FoodScreen extends StatefulWidget {
  const FoodScreen({Key? key}) : super(key: key);

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text:const TextSpan(
                  text: 'What Would you\nlike',style:
              TextStyle(fontSize: 28,color: Colors.black,fontWeight: FontWeight.w500,letterSpacing: 1),
                  children: [
                    TextSpan(
                        text: ' to order? 🥗',style: TextStyle(fontWeight: FontWeight.w900)
                    ),
                  ]
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('All',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Color(0xff1C7D4F)),),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('Poker',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.grey),),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('Salat',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.grey),),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('Bowl',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.grey),),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('Soup',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.grey),),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('Desserts',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.grey),),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>DetailsPage()));
              },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          height: 200,
                          width: 165,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0,10),
                                    blurRadius: 10,
                                    color: Colors.grey.shade300
                                ),
                              ]
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Image.asset('assets/images/crispy.png',height: 100,),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('NON-VEGETARIAN',style:
                                    TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),),
                                    SizedBox(height: 6,),
                                    const  Text('Crispy Chicken Fresh',style:
                                    TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),
                                    SizedBox(height: 20,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        RichText(
                                          text:const TextSpan(
                                              text: "\$",style: TextStyle(fontSize: 18,color: Color(0xff1C7D4F),fontWeight: FontWeight.w500,letterSpacing: 1),
                                              children: [
                                                TextSpan(
                                                    text: '3,99',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 24)
                                                ),
                                              ]
                                          ),
                                        ),
                                        const CircleAvatar(
                                          radius: 14,
                                          backgroundColor: Color(0xff1C7D4F),
                                          child: Icon(Icons.add,color: Colors.white,),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        height: 200,
                        width: 165,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0,10),
                                  blurRadius: 10,
                                  color: Colors.grey.shade300
                              ),
                            ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image.asset('assets/images/chili.png',height: 100,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('VEGETARIAN',style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),),
                                  SizedBox(height: 6,),
                                  const  Text('Chilli Tofu & Avocado',style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),
                                  SizedBox(height: 20,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      RichText(
                                        text:const TextSpan(
                                            text: "\$",style: TextStyle(fontSize: 18,color: Color(0xff1C7D4F),fontWeight: FontWeight.w500,letterSpacing: 1),
                                            children: [
                                              TextSpan(
                                                  text: '4,99',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 24)
                                              ),
                                            ]
                                        ),
                                      ),
                                      const CircleAvatar(
                                        radius: 14,
                                        backgroundColor: Color(0xff1C7D4F),
                                        child: Icon(Icons.add,color: Colors.white,),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(height: 25,),
            Text('Special for you',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Container(

                height: 140,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff1C7D4F)
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/chicken.png'),
                    SizedBox(width: 15,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('NON-VEGETERIAN',style:
                        TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.white),),
                        SizedBox(height: 6,),
                        Text('Chicken Curry Rice',style:
                        TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.white),),
                        SizedBox(height: 6,),
                        RichText(
                          text:const TextSpan(
                              text: "\$",style:
                          TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w500,letterSpacing: 1),
                              children: [
                                TextSpan(
                                    text: '4,99',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 24)
                                ),
                              ]
                          ),
                        ),
                      ],
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
