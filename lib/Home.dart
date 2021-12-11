import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hadenhiles/widgets/MarkdownContent.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController _verticalPageController = PageController(initialPage: 1);
  final PageController _horizontalPageController = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _verticalPageController,
            scrollDirection: Axis.vertical,
            children: [
              Container(
                color: Color(0xff333333),
                child: Flex(
                  direction: Axis.vertical,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 1,
                      child: SingleChildScrollView(
                        child: FutureBuilder(
                          future: rootBundle.loadString("content/top.md"),
                          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                            if (!snapshot.hasData) {
                              return Center(
                                child: CircularProgressIndicator(),
                              );
                            }

                            return Container(
                              padding: EdgeInsets.symmetric(vertical: 25),
                              width: (MediaQuery.of(context).size.width > 968) ? MediaQuery.of(context).size.width * .60 : MediaQuery.of(context).size.width * .90,
                              child: MarkdownContent(data: snapshot.data ?? ""),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
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
                        Container(
                          color: Color(0xff333333),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Flexible(
                                flex: 1,
                                child: Stack(
                                  children: [
                                    Icon(FontAwesomeIcons.youtube),
                                    Text(
                                      "YouTube Channel",
                                      style: GoogleFonts.openSans(),
                                    ),
                                  ],
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Stack(
                                  children: [
                                    Icon(FontAwesomeIcons.instagram),
                                    Text(
                                      "Instagram",
                                      style: GoogleFonts.openSans(),
                                    ),
                                  ],
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Stack(
                                  children: [
                                    Icon(FontAwesomeIcons.tiktok),
                                    Text(
                                      "TikTok",
                                      style: GoogleFonts.openSans(),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                color: Color(0xff333333),
                child: Flex(
                  direction: Axis.vertical,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 1,
                      child: SingleChildScrollView(
                        child: FutureBuilder(
                          future: rootBundle.loadString("content/bottom.md"),
                          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                            if (!snapshot.hasData) {
                              return Center(
                                child: CircularProgressIndicator(),
                              );
                            }

                            return Container(
                              padding: EdgeInsets.symmetric(vertical: 50),
                              width: (MediaQuery.of(context).size.width > 968) ? MediaQuery.of(context).size.width * .60 : MediaQuery.of(context).size.width * .90,
                              child: MarkdownContent(data: snapshot.data ?? ""),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
