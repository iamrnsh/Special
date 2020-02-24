import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio=0;
  }

  setSelectedRadio(int val){
    setState(() {
      selectedRadio = val;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Settings"),
      ),
      body: Column(
        children: <Widget>[
          ButtonTheme(
            minWidth: 400.0,
            height: 200.0,
            child: RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/languages');
              },
              color: Colors.yellow,
              child: Text("Language",style: TextStyle(fontSize: 40.0)),
            ),
          ),
        SizedBox(height: 70.0,),





          RadioListTile(
            value: 1,
            groupValue: selectedRadio,
            title: Text("Vision Impairment."),
            activeColor: Colors.green,
            onChanged: (val){
              print("radio $val");
              setSelectedRadio(val);
            },
          ),
          RadioListTile(
            value: 2,
            groupValue: selectedRadio,
            activeColor: Colors.blue,
            title: Text("Hard of Hearing"),
            onChanged: (val){
              print("radio $val");
              setSelectedRadio(val);
            },
          ),

          RadioListTile(
            value: null,
            groupValue: selectedRadio,
            activeColor: Colors.yellow,
            title: Text("Physical Disability"),
            onChanged: (val){
              print("radio$val");
              setSelectedRadio(val);
            },
          ),
          RadioListTile(
            value: 3,
            groupValue: selectedRadio,
            activeColor: Colors.red,
            title: Text("None of the above"),
            onChanged: (val){
              print("radio $val");
              setSelectedRadio(val);
            },
          ),
        ],
      ),
    );
  }
}
