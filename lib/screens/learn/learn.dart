import 'package:flutter/material.dart';
import 'package:melody0/screens/learn/chapter.dart';
class Learn extends StatefulWidget {
  @override
  _LearnState createState() => _LearnState();
}

class _LearnState extends State<Learn> {

  List<Chapter> chapters = [

    Chapter(text: 'Chapter 1:Algorithm',id:1),
    Chapter(text: 'Chapter 2:Variable',id: 2),
    Chapter(text: 'Chapter 3:Data types',id: 3),
    Chapter(text: 'Chapter 4:Syntax',id: 4),
    Chapter(text: 'Chapter 5:Program',id: 5),

  ];

  Widget chapterTemplate(chapter) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(),
        child: Card(
            margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 350.0,
                    height: 50.0,
                    child: RaisedButton(
                      onPressed: (){

                        if (chapter.id==1)
                          {
                            Navigator.pushNamed(context, '/video1');

                          }
                        else if (chapter.id==2)
                        {
                          Navigator.pushNamed(context, '/video2');

                        }
                        else if (chapter.id==3)
                        {
                          Navigator.pushNamed(context, '/video3');

                        }
                        else if (chapter.id==4)
                        {
                          Navigator.pushNamed(context, '/video4');

                        }
                       else if (chapter.id==5)
                        {
                          Navigator.pushNamed(context, '/video5');

                        }



                      },
                      child: Text(chapter.text,style: TextStyle(
                fontSize: 14.0,)
                      ),
                    ),
                  ),
                  SizedBox(height: 6.0),
                ],
              ),
            )
        ),
      ),
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
        children: chapters.map((chapter) => chapterTemplate(chapter)).toList(),
      ),
    );
  }
}

