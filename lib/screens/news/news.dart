import 'package:flutter/material.dart';
import 'package:melody0/screens/news/competition.dart';
class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {

  //Web scrape and replace

  List<Competition> chapters = [

    Competition(text: 'Smart India Hackathon'),
    Competition(text: 'Seminar about IOT'),
    Competition(text: 'Reboot Kerala Hackathon'),
    Competition(text: 'Python Bootcamp'),
    Competition(text: 'Ethical Hacking Bootcamp'),

  ];

  Widget chapterTemplate(competition) {
    return Card(
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              RaisedButton(
                onPressed: (){},
                child: Text(competition.text,style: TextStyle(
                  fontSize: 25.0,)
                ),
              ),
              SizedBox(height: 6.0),
            ],
          ),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Chapters'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: chapters.map((competition) => chapterTemplate(competition)).toList(),
      ),
    );
  }
}

