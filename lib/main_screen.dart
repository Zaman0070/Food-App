import 'package:flutter/material.dart';
import 'package:flutter_tutorial/food_home_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;
  final PageStorageBucket _bucket = PageStorageBucket();
  Widget currentScreen = FoodHomePage();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      body: WillPopScope(
        onWillPop: (){
          return Future.value(false);
        },
        child: ScrollConfiguration(
          behavior: const ScrollBehavior(),
          child: GlowingOverscrollIndicator(
            axisDirection: AxisDirection.down,
            color: Color(0xff675492),
            child: PageStorage(
              bucket: _bucket,
              child: currentScreen,
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.grey.shade100,
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: SizedBox(
          height: 55,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.only(left: 6,right: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(onPressed: (){
                  setState(() {
                    index = 0;
                    currentScreen = const FoodHomePage();
                  });
                },
                  child: index  == 0?Image.asset('assets/images/home.png',color: Colors.grey.shade800,height: 22,):
                  Image.asset('assets/images/home-2.png',height: 22,color: Colors.grey.shade800,),
                ),
                MaterialButton(onPressed: (){
                  setState(() {
                    index = 1;
                    currentScreen = const FoodHomePage();
                  });
                },
                  child: index  == 1?Image.asset('assets/images/heart.png',color: Colors.grey.shade800,height: 22,):
                  Image.asset('assets/images/love.png',height: 22,color: Colors.grey.shade800,),
                ),
                MaterialButton(onPressed: (){
                  setState(() {
                    index = 2;
                    currentScreen = const FoodHomePage();
                  });
                },
                  child: index  == 2?Image.asset('assets/images/search.png',color: Colors.grey.shade800,height: 22,):
                  Image.asset('assets/images/search-1.png',height: 22,color: Colors.grey.shade800,),
                ),
                MaterialButton(onPressed: (){
                  setState(() {
                    index = 3;
                    currentScreen = const FoodHomePage();
                  });
                },
                  child: index  == 3?Image.asset('assets/images/settings-2.png',color: Colors.grey.shade800,height: 22,):
                  Image.asset('assets/images/settings.png',height: 22,color: Colors.grey.shade800,),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
