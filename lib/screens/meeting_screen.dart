import 'dart:math';

// import 'package:jitsi_meet/jitsi_meet.dart';
import 'package:flutter/material.dart';
import 'package:focus/screens/widgets/home_meeting_button.dart';

import '../resoures/jitsi_meet_wrapper.dart';

class MeetingScreen extends StatelessWidget {
  MeetingScreen({super.key});
  final JitsiMeetMethods _jitsiMeetMethods = JitsiMeetMethods();
  createNewMeeting() {
    var random = Random();
    print(random.toString());
    String roomName = (random.nextInt(10000000) + 10000000).toString();
     _jitsiMeetMethods.joinMeeting(roomName);
    print(roomName);
  }

  joinMeeting(BuildContext context) {
    Navigator.pushNamed(context, '/video-call');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HomeMeetingButton(
              onPressed: createNewMeeting,
              text: 'New Meeting',
              icon: Icons.videocam,
              
            ),
            HomeMeetingButton(
              onPressed: () => joinMeeting(context),
              text: 'Join Meeting',
              icon: Icons.add_box_rounded,
            ),
            HomeMeetingButton(
              onPressed: () {},
              text: 'Schedule',
              icon: Icons.calendar_today,
            ),
            HomeMeetingButton(
              onPressed: () {},
              text: 'Share Screen',
              icon: Icons.arrow_upward_rounded,
            ),
          ],
        ),
        const Expanded(
            child:
                Center(child: Text('Create/Join Meeting with just  a click')))
      ],
    );
  }
}
