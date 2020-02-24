import 'package:flutter/material.dart';
class Languages extends StatefulWidget {
  @override
  _LanguagesState createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {


  int selectedRadio1;

  @override
  void initState() {
    super.initState();
    selectedRadio1=0;
  }

  setSelectedRadio1(int val){
    setState(() {
      selectedRadio1 = val;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Languages"),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: <Widget>[

          RadioListTile(
            value: 1,
            groupValue: selectedRadio1,
            title: Text("English"),
            activeColor: Colors.green,
            onChanged: (val){
              print("radio $val");
              setSelectedRadio1(val);
            },
          ),
          RadioListTile(
            value: 2,
            groupValue: selectedRadio1,
            activeColor: Colors.blue,
            title: Text("Malayalam"),
            onChanged: (val){
              print("radio $val");
              setSelectedRadio1(val);
            },
          ),

          RadioListTile(
            value: null,
            groupValue: selectedRadio1,
            activeColor: Colors.yellow,
            title: Text("Tamil"),
            onChanged: (val){
              print("radio$val");
              setSelectedRadio1(val);
            },
          ),
          RadioListTile(
            value: 3,
            groupValue: selectedRadio1,
            activeColor: Colors.red,
            title: Text("Hindi  "),
            onChanged: (val){
              print("radio $val");
              setSelectedRadio1(val);
            },
          ),
        ],

      ),
    );
  }
}
