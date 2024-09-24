import 'package:ecommerce/pages/home/widgets/all_product_widget.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 15.0,
        ),
        InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AllProductWidget()),
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Product"),
              Text("View All"),
            ],
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        ListView.builder(
          itemCount: 10,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(3.0),
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
      ],
    );
  }
}
