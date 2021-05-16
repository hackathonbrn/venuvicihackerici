import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/constants.dart';
import 'package:meditation_app/widgets/bottom_nav_bar.dart';
import 'package:meditation_app/widgets/search_bar.dart';

class Time extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: kBlueLightColor,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                      "Дневник сна",
                      style: Theme.of(context)
                          .textTheme
                          .display1
                          .copyWith(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Содержит информацию о времени начала и конца сна",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: size.width * .6, // it just take 60% of total width
                      child: Text(
                        "Записывайте время начала и конца сна и корректируете свой режим!",
                      ),
                    ),
                    SizedBox(
                      width: size.width * .5, // it just take the 50% width
                      child: SearchBar(),
                    ),

                    SizedBox(
                      height: 20,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Введите необходимое значение",
                          // icon: SvgPicture.asset("assets/icons/search.svg"),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    //   Text(
                    //     "Meditation",
                    //     style: Theme.of(context)
                    //         .textTheme
                    //         .title
                    //         .copyWith(fontWeight: FontWeight.bold),
                    //   ),
                    SafeArea(
                        child: Center(
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        padding: EdgeInsets.all(10),
                        height: 90,
                        width: 500,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 17),
                              blurRadius: 23,
                              spreadRadius: -13,
                              color: kShadowColor,
                            ),
                          ],
                        ),

                        child: FlatButton(
                          onPressed: () {
                            print("You clicked me!");
                          },
                          child: Text("Запишите время сна время!"),
                        ),
                        //  child: Row(
                        //    children: <Widget>[
                        //      SvgPicture.asset(
                        //        "assets/icons/Meditation_women_small.svg",
                        //      ),
                        //      SizedBox(width: 20),
                        //      Expanded(
                        //        child: Column(
                        //          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //          crossAxisAlignment: CrossAxisAlignment.start,
                        //          children: <Widget>[
                        //            Text(
                        //              "Basic 2",
                        //              style: Theme.of(context).textTheme.subtitle,
                        //            ),
                        //            Text("Start your deepen you practice")
                        //          ],
                        //        ),
                        //      ),
                        //      Padding(
                        //        padding: EdgeInsets.all(10),
                        //        child: SvgPicture.asset("assets/icons/Lock.svg"),
                        //      ),
                        //    ],
                        //  ),
                      ),
                    ))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SeassionCard extends StatelessWidget {
  final int seassionNum;
  final bool isDone;
  final Function press;
  const SeassionCard({
    Key key,
    this.seassionNum,
    this.isDone = false,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          width: constraint.maxWidth / 2 -
              10, // constraint.maxWidth provide us the available with for this widget
          // padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor,
              ),
            ],
          ),
          //  child: Material(
          //    color: Colors.transparent,
          //    child: InkWell(
          //      onTap: press,
          //      child: Padding(
          //        padding: const EdgeInsets.all(16.0),
          //        child: Row(
          //          children: <Widget>[
          //            Container(
          //              height: 42,
          //              width: 43,
          //              decoration: BoxDecoration(
          //                color: isDone ? kBlueColor : Colors.white,
          //                shape: BoxShape.circle,
          //                border: Border.all(color: kBlueColor),
          //              ),
          //              child: Icon(
          //                Icons.play_arrow,
          //                color: isDone ? Colors.white : kBlueColor,
          //              ),
          //            ),
          //            SizedBox(width: 10),
          //            Text(
          //              "Session $seassionNum",
          //              style: Theme.of(context).textTheme.subtitle,
          //            )
          //          ],
          //       ),
          //      ),
          //    ),
          //  ),
        ),
      );
    });
  }

  void onPressed() {}
}