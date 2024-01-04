import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          expandedHeight: 150.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("Flutter App!",style: TextStyle(color: Colors.black),),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(8.0),
          sliver:  SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              switch (index) {
                case 0:
                  return Container(
                      height: 100,
                      child: PageView.builder(
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            decoration: BoxDecoration(
                              color: Colors.amber
                            ),
                            child: Text("Hello Weorld"),
                          );
                        }, 
                      ),
                  );
                  break;
                default:
                // return 
                // Container(
                //   height: 100,
                //   child: PageView.builder(
                //     itemCount: 5,
                //     itemBuilder: (BuildContext context, int index) {
                //       return Container(
                //         decoration: BoxDecoration(
                //         color: Colors.amber
                //       ),
                //       child: Text("Hello Weorld"),
                //       );
                //     }, 
                //   ),
                // );
              }
            },
            childCount: 10
          )
        ),
        )
      ],
    );
  }
}