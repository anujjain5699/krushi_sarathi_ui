import 'package:flutter/material.dart';

class ProductPanel extends StatelessWidget {

  final String productname;
  final double productprice;
  final String des;
  final String imagepath;

  const ProductPanel({this.productname,this.productprice,this.des,this.imagepath});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.width*1.1,
                decoration: BoxDecoration(
                  color: Color(0xff00887a),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60),
                    topLeft: Radius.zero,
                    topRight: Radius.zero,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back,size: 30,color: Colors.white,),
                      onPressed: (){},
                      color: Colors.black,
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.shopping_cart,size: 30,color: Colors.white,),
                          onPressed: (){},
                          color: Colors.black,
                        ),
                        IconButton(
                          icon: Icon(Icons.share_sharp,size: 30,color: Colors.white,),
                          onPressed: (){},
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
                  Positioned(
                    top: MediaQuery.of(context).size.width*.3,
                    left: MediaQuery.of(context).size.width*.12,
                    right: MediaQuery.of(context).size.width*.12,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(55),
                        topLeft: Radius.circular(55),
                        bottomRight: Radius.circular(45),
                        bottomLeft: Radius.circular(45),
                      ),
                      child: Image.asset(imagepath,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 25,),
                Text(productname,style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700),),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\u{20B9}$productprice",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w800),),
                    QuantitySelect(),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                        Container(
                          height: 45,
                          child: OutlineButton(
                           color: Color(0xffcacfcf),
                            padding: EdgeInsets.symmetric(horizontal: 22),
                            textColor: Color(0xff065e54),
                            borderSide: BorderSide(
                              color:Color(0xff065e54),
                                width:2,
                            ),
                            shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            onPressed: (){},
                            child: Row(
                              children: [
                                Icon(Icons.account_balance_wallet),
                                SizedBox(width: 5,),
                                Text("Buy Now",style: TextStyle(fontSize: 18),),
                              ],
                            ),
                          ),
                        ),
                    Container(
                      height: 45,
                      child: RaisedButton(
                        padding: EdgeInsets.symmetric(horizontal: 22),
                        color:  Color(0xff065e54),
                        textColor: Colors.white,
                        shape: new RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        onPressed: (){},
                        child: Row(
                          children: [
                            Icon(Icons.shopping_cart),
                            SizedBox(width: 5,),
                            Text("Add to Cart"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Text("Description:",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w700),),
                Text(des,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                SizedBox(height: 20,),
                Divider(
                  height: 1,
                  color: Colors.black87,
                  thickness: 1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class QuantitySelect extends StatefulWidget {

  @override
  _QuantitySelectState createState() => _QuantitySelectState();
}

class _QuantitySelectState extends State<QuantitySelect> {
  var quantity=['1kg','2kg','5kg','10kg'];
  var quantitySelect='10kg';
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Quantity : ",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400),),
        DropdownButton<String>(
          underline: Container(color: Color(0xff4d7f75),height: 2,),
          style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: Color(0xff4d7f75)),
          items: quantity.map((String dropDownStringItem){
           return DropdownMenuItem<String>(
             value: dropDownStringItem,
             child: Text(dropDownStringItem),
           );
          }).toList(),
          onChanged: (String newValueSelected){
            setState(() {
              this.quantitySelect=newValueSelected;
            });
          },
          value: quantitySelect,
        ),
      ],
    );
  }
}
