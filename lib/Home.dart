import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController _verticalPageController = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Color(0xff333333),
      ),
      child: PageView(
        clipBehavior: Clip.antiAlias,
        controller: _verticalPageController,
        scrollDirection: Axis.vertical,
        children: [
          Flex(
            direction: Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 1,
                child: Text("hi"),
              ),
            ],
          ),
          Flex(
            direction: Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 2,
                child: Image(
                  alignment: Alignment.bottomCenter,
                  image: AssetImage("assets/images/portrait.png"),
                ),
              ),
            ],
          ),
          Flex(
            direction: Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 1,
                child: Image(
                  alignment: Alignment.topCenter,
                  width: MediaQuery.of(context).size.width < 750 ? MediaQuery.of(context).size.width * 0.75 : 750,
                  image: AssetImage("assets/images/haden-light-transparent-large.png"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
