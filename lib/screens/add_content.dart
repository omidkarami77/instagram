import 'package:flutter/material.dart';

class AddContentScreen extends StatelessWidget {
  const AddContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
          child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          getCustomScrollView(),
          Container(
            height: 83,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xff272B40),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Draft",
                      style: TextStyle(
                          color: Colors.white, fontSize: 16, fontFamily: "GB"),
                    ),
                    Text(
                      "Gallery",
                      style: TextStyle(
                          color: Colors.white, fontSize: 16, fontFamily: "GB"),
                    ),
                    Text(
                      "Take",
                      style: TextStyle(
                          color: Colors.white, fontSize: 16, fontFamily: "GB"),
                    ),
                  ]),
            ),
          ),
        ],
      )),
    );
  }

  Widget getCustomScrollView() {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: getHeader(),
        ),
        SliverToBoxAdapter(
          child: getSelectImageContainer(),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.asset('images/item$index.png'),
                    ),
                  ),
                );
              },
              childCount: 10,
            ),
          ),
        ),
        SliverPadding(padding: EdgeInsets.only(bottom: 83))
      ],
    );
  }

  Widget getSelectImageContainer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 5),
      height: 394,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15))),
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        child: FittedBox(
          fit: BoxFit.cover,
          child: Image.asset(
            'images/item8.png',
          ),
        ),
      ),
    );
  }

  Widget getHeader() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 27, horizontal: 18),
      child: Row(children: [
        Text(
          'Post',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'GB',
            fontSize: 24,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Image.asset('images/arrow_down.png'),
        Spacer(),
        Text(
          'Next',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'GB',
            fontSize: 16,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Image.asset('images/arrow_right.png'),
      ]),
    );
  }
}
