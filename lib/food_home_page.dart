import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tutorial/food_screen.dart';
import 'package:side_menu_animation/side_menu_animation.dart';
class FoodHomePage extends StatefulWidget {
  const FoodHomePage({Key? key}) : super(key: key);

  @override
  State<FoodHomePage> createState() => _FoodHomePageState();
}

class _FoodHomePageState extends State<FoodHomePage> {
  final _index = ValueNotifier<int>(1);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SideMenuAnimation(
        curveAnimation: Curves.linear,
        appBarBuilder: (showMenu) => AppBar(
         leading: Padding(
           padding: EdgeInsets.all(8),
           child: Container(
             height: 20,
             width: 15,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.only(
                 topRight: Radius.circular(25),
                 topLeft: Radius.circular(25),
               )
             ),
             child: Image.asset('assets/images/user.png',height: 13,),
           ),
         ),
          actions: [
            InkWell(
              onTap: showMenu,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
                child: Padding(
                  padding: EdgeInsets.all(6),
                  child: Image.asset('assets/images/menu.png',color: Color(0xff1c7d4f),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
                child: Padding(
                  padding: EdgeInsets.all(6),
                  child: Image.asset('assets/images/cart.png',color: Color(0xff1c7d4f),),
                ),
              ),
            ),
          ],
          backgroundColor: Colors.grey.shade100,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          centerTitle: true,
        ),
        views: [
          const FoodScreen(),
        ],
        items: [
          Image.asset('assets/images/crispy1.png'),
          Image.asset('assets/images/chili1.png'),
          Image.asset('assets/images/chicken1.png'),
          Column(
            children: [
              Text('Total'),
              SizedBox(height: 6,),
              Text('3 items',),
              SizedBox(height: 10,),
              Text('\$22.00',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900
              ),),
              SizedBox(height: 30,),
              Container(
                height: 60,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xff1c7d4f)
                ),
                child: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,),
              ),
            ],
          ),

        ],
        position: SideMenuPosition.right,
        selectedColor: Colors.white,
        unselectedColor: Colors.white,
        tapOutsideToDismiss: true,
        scrimColor: Colors.black45,
        onItemSelected: (value) {
          if (value > 0 && value != _index.value) _index.value = value;
        },
      ),
    );
  }
}
