import 'package:flutter/material.dart';
import 'package:krushi_sarathi_ui/product_tile/product_panel.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment:  CrossAxisAlignment.start,
          children: [
            ProductPanel(
              des: "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel.",
              productprice: 101,
              imagepath: "assets/pic.jpg",
              productname: "Popular dry(1 kg)",
            ),
          ],
        ),
      ),
    );
  }
}
