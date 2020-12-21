import 'package:flutter/material.dart';
import 'package:inout7/topic_details_screen.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  List images = [
    "https://cdn.discordapp.com/attachments/781842187578638367/790613529202917406/Other-python-icon.png",
    "https://cdn.discordapp.com/attachments/781842187578638367/790614962489393192/Untitled_design2.png",
    "https://cdn.discordapp.com/attachments/781842187578638367/790615194564821032/Untitled_design3.png",
    "https://cdn.discordapp.com/attachments/781842187578638367/790614771988430858/Untitled_design1.png",
    "https://cdn.discordapp.com/attachments/781842187578638367/790625421804568668/2.png",
    "https://cdn.discordapp.com/attachments/781842187578638367/790625408944570398/1.png",
    "https://cdn.discordapp.com/attachments/781842187578638367/790625427114033172/4.png",
    "https://cdn.discordapp.com/attachments/781842187578638367/790625423998189588/3.png",
    "https://cdn.discordapp.com/attachments/781842187578638367/790614216276705360/Untitled_design.png",
    "https://cdn.discordapp.com/attachments/781842187578638367/790615365356748830/Untitled_design4.png",
  ];
  List topics = [
    "PYTHON",
    "JAVA",
    "JAVASCRIPT",
    "C++",
    "FLUTTER",
    "REACT JS",
    "ANGULAR",
    "AZURE",
    "RUST",
    "GO",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CourseMash",
          style: TextStyle(color: Colors.blue),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              childAspectRatio: 3 / 2,
              crossAxisCount: 2,
            ),
            itemBuilder: (ctx, index) => GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(TopicDetailScreen.routeName,
                        arguments: {'course': topics[index]});
                  },
                  child: Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 80,
                            child: Image.network(
                              images[index],
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Center(
                              child: Text(
                            topics[index],
                            style: TextStyle(fontSize: 20, color: Colors.blue),
                          )),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.blueAccent),
                        // color: Colors.amber,
                      )),
                )),
      ),
    );
  }
}
