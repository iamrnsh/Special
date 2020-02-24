import 'package:flutter/material.dart';
import 'package:melody0/services/auth.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.redAccent,
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(onPressed: () async{
            await _auth.signOut();
          }, icon: Icon(Icons.person), label: Text("Logout")),

        ] ,
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: ButtonTheme(
              minWidth: 400.0,
              height: 190.0,
              child: RaisedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/learn');
                },
                child: Text('Learn',style: TextStyle(fontSize: 50.0),),
                color: Colors.blueAccent,
              ),
            ),
          ),
          SizedBox(height: 10.0,)
          ,Center(
            child: ButtonTheme(
              minWidth: 400.0,
              height: 193.0,
              child: RaisedButton(
                child: Text("News",style: TextStyle(fontSize: 50.0),),
                onPressed: (){
                  Navigator.pushNamed(context, '/news');

                },

                color: Colors.grey,
              ),
            ),
          ),
          SizedBox(height: 10.0,)
          ,Center(
            child: ButtonTheme(
              minWidth: 400.0,
              height: 190.0,
              child: RaisedButton(
                child: Text("Settings",style: TextStyle(fontSize: 50.0),),
                onPressed: (){
                  Navigator.pushNamed(context, '/settings');

                },

                color: Colors.amber,
              ),
            ),
          ),
        ],
      ),

    );
  }
}