import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 15.0,
        ),
        const Text("Category"),
        const SizedBox(
          height: 10.0,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 4,
          child: ListView.builder(
            itemCount: 10,
            // shrinkWrap: true,
            // physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width / 3,
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          image:const DecorationImage(
                              image: NetworkImage(
                                  "https://i.pinimg.com/474x/62/b0/80/62b080c89379d443b563cb1ed1cc2520.jpg",
                              ),fit:BoxFit.cover)),
                    ),
                  ));
            },
          ),
        ),
      ],
    );
  }
}
