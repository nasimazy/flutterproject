import 'dart:developer';
import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_draggable_gridview/flutter_draggable_gridview.dart';

void main() {
  runApp(MaterialApp(
    home: dragablegrid(),
    debugShowCheckedModeBanner: false,
  ));
}

class dragablegrid extends StatefulWidget {
  @override
  State<dragablegrid> createState() => _dragablegridState();
}

class _dragablegridState extends State<dragablegrid> {

  void initState() {
    _imagedetails();
    super.initState();
  }
  List<DraggableGridItem> _listOfDraggableGridItem = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Draggable Grid View"),),

      body: Container(
        child: DraggableGridViewBuilder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height / 3),
          ),
          children: _listOfDraggableGridItem,
          dragCompletion: onDragAccept,
          isOnlyLongPress: false,
          dragFeedback: feedback,
          dragPlaceHolder: placeHolder,
        ),
      ),
    );
  }

  Widget feedback(List<DraggableGridItem> list, int index) {
    return Container(
      child: list[index].child,
      width: 500,
      height: 150,
    );
  }

  PlaceHolderWidget placeHolder(List<DraggableGridItem> list, int index) {
    return PlaceHolderWidget(
      child: Container(
        color: Colors.red,
      ),
    );
  }

  void onDragAccept(
      List<DraggableGridItem> list, int beforeindex, int afterindex) {

  }

  void _imagedetails() {
    _listOfDraggableGridItem.addAll(
        [
          DraggableGridItem(
            child:Container(
              padding: EdgeInsets.symmetric(
                horizontal: 4,
                vertical: 4,

              ),
              child:Image(image: AssetImage( "assets/images/bg1.jpg"),
                fit:BoxFit.cover ,),
            ),
            isDraggable: true,
          ),
          DraggableGridItem(
            child:Container(
              padding: EdgeInsets.symmetric(
                horizontal: 4,
                vertical: 4,
              ),
              child: Image(image: AssetImage("assets/images/bg2.jpeg"),
                fit: BoxFit.cover,),
            ),
            isDraggable: true,
          ),
          DraggableGridItem(
            child:Container(
              padding: EdgeInsets.symmetric(
                horizontal: 4,
                vertical: 4,

              ),
              child:Image(image: AssetImage( "assets/images/bg3.jpeg"),
                fit:BoxFit.cover ,),
            ),
            isDraggable: true,
          ),
          DraggableGridItem(
            child:Container(
              padding: EdgeInsets.symmetric(
                horizontal: 4,
                vertical: 4,

              ),
              child:Image(image: AssetImage( "assets/images/bg4.jpeg"),
                fit:BoxFit.cover ,),
            ),
            isDraggable: true,
          ),
          DraggableGridItem(
            child:Container(
              padding: EdgeInsets.symmetric(
                horizontal: 4,
                vertical: 4,

              ),
              child:Image(image: AssetImage( "assets/images/bg5.jpeg"),
                fit:BoxFit.cover ,),
            ),
            isDraggable: true,
          ),
          DraggableGridItem(
            child:Container(
              padding: EdgeInsets.symmetric(
                horizontal: 4,
                vertical: 4,

              ),
              child:Image(image: AssetImage( "assets/images/bg6.jpeg"),
                fit:BoxFit.cover ,),
            ),
            isDraggable: true,
          ),
          DraggableGridItem(
            child:Container(
              padding: EdgeInsets.symmetric(
                horizontal: 4,
                vertical: 4,

              ),
              child:Image(image: AssetImage( "assets/images/bg7.jpeg"),
                fit:BoxFit.cover ,),
            ),
            isDraggable: true,
          ),
          DraggableGridItem(
            child:Container(
              padding: EdgeInsets.symmetric(
                horizontal: 4,
                vertical: 4,

              ),
              child:Image(image: AssetImage( "assets/images/bg8.jpeg"),
                fit:BoxFit.cover ,),
            ),
            isDraggable: true,
          ),
          DraggableGridItem(
            child:Container(
              padding: EdgeInsets.symmetric(
                horizontal: 4,
                vertical: 4,

              ),
              child:Image(image: AssetImage( "assets/images/bg9.jpeg"),
                fit:BoxFit.cover ,),
            ),
            isDraggable: true,
          ),
          DraggableGridItem(
            child:Container(
              padding: EdgeInsets.symmetric(
                horizontal: 4,
                vertical: 4,

              ),
              child:Image(image: AssetImage( "assets/images/bg10.jpeg"),
                fit:BoxFit.cover ,),
            ),
            isDraggable: true,
          ),
        ]
    );
  }
}