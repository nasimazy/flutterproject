import 'package:flutter/material.dart';

class popularhotels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, right: 20),
      height: MediaQuery.of(context).size.height * 0.28,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
            children:[
              Padding(padding: EdgeInsets.only(left: 10),
                child: hotelcard(hotelimage: "assets/hotelrooms/room1.jpg",
                    title:"Crown Plaza" ,
                    subtitle: "A three star hotel in Kakkand",
                    price:"\$249 / night" ,
                    rating:"3.5" ),
              ),

              Padding(padding: EdgeInsets.only(left: 20),
                child: hotelcard(hotelimage:"assets/hotelrooms/room2.jpg" , title:"Presidency", subtitle:"A four star hotel in\nEdappalli",
                    price: "\$350 / night", rating:"4.5"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: hotelcard(hotelimage: "assets/hotelrooms/room3.jpg", title:"Hotel Taj", subtitle:"A five star hotel in \nKochi",
                    price: "\$1200 / night", rating: "5.0"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: hotelcard(hotelimage: 'assets/hotelrooms/room4.jpg' , title: "Hotel Raw", subtitle:'A four star hotel in Kakkanad',
                    price: '\$800 / night', rating: "4.0"),
              )
            ]),
      ),

    );
  }
}

class hotelcard extends StatelessWidget {
  final String hotelimage;
  final String title;
  final String subtitle;
  final String price;
  final String rating;
  hotelcard(
      {required this.hotelimage,
        required this.title,
        required this.subtitle,
        required this.price,
        required this.rating});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            blurRadius: 8,
            offset: Offset(2, 4),
          ),
        ],
      ),

      child: Container(
        height: 210,
        width: 160,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(hotelimage), fit: BoxFit.cover)),
            ),

            Padding(padding: EdgeInsets.only(top: 10,left: 10),
              child: Text(
                title,
                style: TextStyle(fontSize: 17),
              ),
            ),

            Padding(padding: EdgeInsets.only(top: 5,left: 10,right: 3),
              child: Text(
                subtitle,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.grey.shade400,fontSize: 14),
              ),
            ),

            Padding(padding: EdgeInsets.only(left: 10,top: 5,right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Text(
                    price,
                    style: TextStyle(color: Colors.cyan),
                  ),

                  Container(
                      child: Row(
                        children: [
                          Text(
                            rating,
                            style: TextStyle(color: Colors.cyan),
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.cyan,
                            size: 17,
                          )
                        ],
                      ))
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}