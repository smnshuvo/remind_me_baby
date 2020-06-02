import 'package:flutter/material.dart';
import 'package:remindmebaby/services/tasklist.dart';

import 'package:remindmebaby/services/tasks.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Task> myTasks = [
  Task(taskName: 'SE 341', startingPeriod: '01:00\nPM', endingPeriod: '10.00 AM', taskDetails: "Numerical Analysis\nGoogle Classroom Code: 3fkfild\nSection A\n"),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Remind me baby",
        ),
        actions: <Widget>[
          // leads to the setter page
          IconButton(
            icon: Icon(
              Icons.update
            ),
            onPressed: () {
              Navigator.pushNamed(context, "/scheduler");
            },
          ),
          // leads to the group page
          IconButton(
            icon: Icon(
                Icons.notifications_active
            ),
            onPressed: () {
              Navigator.pushNamed(context, "/group");
            },
          ),
        ],
      ) ,
      body: SafeArea(
        child: ListView.builder(
          itemCount: myTasks.length,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 4),
              child: Card(
                color: Colors.blue[(index+1)*200],
                child: ListTile(
                  leading: Text(
                    myTasks[index].startingPeriod,
                    style: TextStyle(
                      fontSize: 24,

                  ),
                  textAlign: TextAlign.center,
                  ),

                  onTap: (){},
                  title: Column(
                    children: <Widget>[
                      // name of the task
                      Text(
                       myTasks[index].taskName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      // details about the task
                      Text(
                        myTasks[index].taskDetails,
                      ),
                    ],
                  ),
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.remove_circle),
                      Icon(Icons.alarm_add),
                    ],
                  ),
                ),
              ),
            );
          },
        )
      ),
    );
  }
}
