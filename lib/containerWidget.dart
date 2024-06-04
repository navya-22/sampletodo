import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerWidget extends StatefulWidget {
  final String title;
  final String description;
  const ContainerWidget({ super.key, required this.title,
    required this.description});
  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 5,horizontal:10 ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
        'Title: ${widget.title}',
            style: TextStyle(color: Colors.blue,fontSize: 20,decoration: TextDecoration.none),
        ),
          SizedBox(height: 5,),
          Text('Description: ${widget.description}', style: TextStyle( color: Colors.blue,fontSize: 20,decoration: TextDecoration.none),),
        ],
      ),

    );
  }
}
