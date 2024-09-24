import 'package:flutter/material.dart';

class AllProductWidget extends StatelessWidget {
  const AllProductWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Products"),
      ),
      body: ListView.builder(
        itemCount: 20,
        // shrinkWrap: true,
        // physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 5.0),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                      image: NetworkImage(
                        "https://skyryedesign.com/wp-content/uploads/2024/04/4676b72b1f83289aeffc834a606b552a-574x1024.jpg",
                      ),
                      fit: BoxFit.cover)),
            ),
          );
        },
      ),
    );
  }
}
