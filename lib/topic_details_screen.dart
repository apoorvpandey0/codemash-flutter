import 'package:flutter/material.dart';
import 'package:inout7/third_screen.dart';

class TopicDetailScreen extends StatelessWidget {
  static const routeName = '/detail';
  List topics = [
    "AI",
    "Django",
    "Flask",
    "Web Scraping",
    "PyQt",
    "Networking",
    "Pentesting",
    "ML",
    "Deep learning"
  ];
  @override
  Widget build(BuildContext context) {
    final course = ModalRoute.of(context).settings.arguments as Map;

    print(course);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          course['course'],
          style: TextStyle(color: Colors.blue),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            itemCount: 8,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              childAspectRatio: 3 / 2,
              crossAxisCount: 2,
            ),
            itemBuilder: (ctx, index) => GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(ThirdScreen.routeName,
                        arguments: topics[index]);
                  },
                  child: Container(
                      child: Center(
                          child: Text(
                        topics[index],
                        style: TextStyle(fontSize: 20, color: Colors.blue),
                      )),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent),
                        // color: Colors.amber,
                      )),
                )),
      ),
    );
  }
}
