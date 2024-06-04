

import 'package:flutter/material.dart';
import 'package:sampletodo/containerWidget.dart';




class New  extends StatefulWidget {
  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {


List<Map<String,dynamic>> stdlist = [
{
'title' : 'ttile1',
'des' : 'abc1'
},
{
'title' : 'ttile2',
'des' : 'abc2'
},
{
'title' : 'ttile3',
'des' : 'abc3'
},
{
'title' : 'ttile4',
'des' : 'abc4'
},
{
'title' : 'ttile4',
'des' : 'abc4'
},
{
'title' : 'title5',
'des' : 'abc5'
},
{
'title' : 'title6',
'des' : 'abc6'
},
{
'title' : 'title7',
'des' : 'abc7'
},
];

  @override



Widget build(BuildContext context) => ListView.builder(
itemCount: 1,//stdlist.length,
itemBuilder: (BuildContext context, int index) {
  final item = stdlist[index];
  return Text('${stdlist}');
/*ContainerWidget(
title:item['title'],
description:item['des'],
);
},
);
}
}

*/
},);
}

