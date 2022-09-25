import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'branches/bluebranch.dart';
import 'branches/greenbranch.dart';
import 'branches/redbranch.dart';


class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: DefaultTabController(
            length: 3,
            child: Scaffold(
                backgroundColor: Colors.grey[600],
                appBar: AppBar(
                  backgroundColor: Colors.grey[900],
                  bottom: const TabBar(
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.white,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          color: Colors.white),
                      tabs: [
                        Tab(
                            child: Align(
                          alignment: Alignment.center,
                          child: Text("BLUE"),
                        )),
                        Tab(
                            child: Align(
                          alignment: Alignment.center,
                          child: Text("RED"),
                        )),
                        Tab(
                            child: Align(
                          alignment: Alignment.center,
                          child: Text("GREEN"),
                        ))
                      ]),
                  title: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'MetroMap',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  actions: [
                    Align(
                      child: IconButton(
                          onPressed: null,
                          icon: SvgPicture.network(
                              'https://www.svgrepo.com/show/397501/metro.svg')),
                    )
                  ],
                ),
                body: const TabBarView(children: [
                  BlueBranchBuilder(),
                  RedBranchBuilder(),
                  GreenBranchBuilder()
                ])),
          ),
        ));
  }
}





