import 'package:flutter/material.dart';
import 'package:remindmebaby/pages/group_notification.dart';
import 'package:remindmebaby/pages/home.dart';
import 'package:remindmebaby/pages/set_schedule.dart';

void main() => runApp(MaterialApp(
  // this is the initial page
  initialRoute: '/',
  routes: {
    '/' : (context) => Home(),
    '/scheduler' : (context) => SetSchedule(),
    '/group' : (context) => GroupNotification()
  },
));