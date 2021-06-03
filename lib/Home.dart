// ignore: import_of_legacy_library_into_null_safe
import 'package:draggable_widget/draggable_widget.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:draggable_widget/model/anchor_docker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hadenhiles/widgets/MarkdownContent.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController _verticalPageController = PageController(initialPage: 1);
  final PageController _horizontalPageController = PageController(initialPage: 1);
  DragController _dragController = DragController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
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
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: PageView(
                      controller: _horizontalPageController,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Flex(
                          mainAxisAlignment: MainAxisAlignment.center,
                          direction: Axis.vertical,
                          children: [
                            Flexible(
                              flex: 1,
                              child: Image(
                                alignment: Alignment.bottomCenter,
                                image: AssetImage("assets/images/portrait.png"),
                              ),
                            ),
                          ],
                        ),
                        Flex(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          direction: Axis.vertical,
                          children: [
                            Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Flex(
                                  direction: Axis.horizontal,
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      child: Container(
                                        height: MediaQuery.of(context).size.height,
                                        color: Color(0xff5f4bb6),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 1,
                                      child: Container(
                                        height: MediaQuery.of(context).size.height,
                                        color: Color(0xff333333),
                                      ),
                                    ),
                                  ],
                                ),
                                Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          Transform.translate(
                                            offset: Offset(0, -(MediaQuery.of(context).size.height * .55)),
                                            child: Image(
                                              alignment: Alignment.bottomCenter,
                                              width: MediaQuery.of(context).size.width > 1024 ? 750 : MediaQuery.of(context).size.width * 0.9,
                                              image: AssetImage("assets/images/haden-split-transparent.png"),
                                            ),
                                          ),
                                          Image(
                                            alignment: Alignment.bottomCenter,
                                            height: MediaQuery.of(context).size.height * 0.65,
                                            image: AssetImage("assets/images/portrait.png"),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Flex(
                          mainAxisAlignment: MainAxisAlignment.center,
                          direction: Axis.vertical,
                          children: [
                            Flexible(
                              flex: 1,
                              child: Image(
                                alignment: Alignment.bottomCenter,
                                image: AssetImage("assets/images/portrait.png"),
                              ),
                            ),
                          ],
                        ),
                      ],
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
                      width: MediaQuery.of(context).size.width < 500 ? MediaQuery.of(context).size.width * 0.75 : 500,
                      image: AssetImage("assets/images/haden-light-transparent-large.png"),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: FutureBuilder(
                      future: rootBundle.loadString("content/about.md"),
                      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                        if (snapshot.hasData) {
                          return Padding(
                            padding: EdgeInsets.symmetric(vertical: 15, horizontal: MediaQuery.of(context).size.width * .05),
                            child: MarkdownContent(data: snapshot.data ?? ""),
                          );
                        }

                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 10,
            right: 10,
            child: Container(
              child: DraggableWidget(
                bottomMargin: 80,
                topMargin: 80,
                intialVisibility: true,
                horizontalSapce: 20,
                shadowBorderRadius: 50,
                child: Container(
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Stack(
                    children: [IconButton(icon: Icon(Icons.close), onPressed: () {})],
                  ),
                ),
                initialPosition: AnchoringPosition.bottomLeft,
                dragController: _dragController,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
