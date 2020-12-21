import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ThirdScreen extends StatelessWidget {
  static const routeName = '/third';

  void getData() async {
    final url =
        "https://bebkoof-app.herokuapp.com/course/course/django/python/";
    final resp = await http.get(url);
    print(resp.body);
  }

  List images = [
    "https://static.djangoproject.com/img/logos/django-logo-negative.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3oh3Fojf1ZWQHro5VfRlS2yTQlD7kQMmgjg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkT81PM-K96Xe-QBXG1CASDS9lwcqcg-d_WA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrbt1_lQSQi6GPiQTjiqtEBdqTLrYRpbhA1w&usqp=CAU",
  ];
  List courses = [
    "Django by Justin Mitchell",
    "Django by Corey Schafer",
    "Aarav Tech",
    "Code With Harry"
  ];

  @override
  Widget build(BuildContext context) {
    final topic = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          topic,
          style: TextStyle(color: Colors.blue, fontSize: 30),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            size: 30,
          ),
          onPressed: () {}),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
            itemCount: 4,
            itemBuilder: (ctx, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image.network(images[index]),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(courses[index]),
                              Icon(Icons.bookmark_border)
                            ],
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(border: Border.all()),
                  ),
                )),
      ),
    );
  }
}
