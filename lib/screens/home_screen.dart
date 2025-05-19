import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_awesome_notification_firebase/services/notification_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          OutlinedButton(
            onPressed: () async {
              await NotificationService.create(
                id: 1,
                title: 'Default Notification',
                body: 'This is the body of the notification',
                summary: 'Small summary',
              );
            },
            child: const Text('Default Notification'),
          ),
          OutlinedButton(
            onPressed: () async {
              await NotificationService.create(
                id: 2,
                title: 'Notification with Summary',
                body: 'This is the body of the notification',
                summary: 'Small summary',
                notificationLayout: NotificationLayout.Inbox,
              );
            },
            child: const Text('Notification with Summary'),
          ),
          OutlinedButton(
            onPressed: () async {
              await NotificationService.create(
                id: 3,
                title: 'Progress Bar Notification',
                body: 'This is the body of the notification',
                summary: 'Small summary',
                notificationLayout: NotificationLayout.ProgressBar,
              );
            },
            child: const Text('Progress Bar Notification'),
          ),
          OutlinedButton(
            onPressed: () async {
              await NotificationService.create(
                id: 4,
                title: 'Message Notification',
                body: 'This is the body of the notification',
                summary: 'Small summary',
                notificationLayout: NotificationLayout.Messaging,
              );
            },
            child: const Text('Message Notification'),
          ),
          OutlinedButton(
            onPressed: () async {
              await NotificationService.create(
                id: 5,
                title: 'Big Image Notification',
                body: 'This is the body of the notification',
                summary: 'Small summary',
                notificationLayout: NotificationLayout.BigPicture,
                bigPicture: 'https://picsum.photos/300/200',
              );
            },
            child: const Text('Big Image Notification'),
          ),
          OutlinedButton(
            onPressed: () async {
              await NotificationService.create(
                id: 6,
                title: 'Action Button Notification',
                body: 'This is the body of the notification',
                payload: {'navigate': 'true'},
                actionButtons: [
                  NotificationActionButton(
                    key: 'action_button',
                    label: 'Click me',
                    actionType: ActionType.Default,
                  ),
                ],
              );
            },
            child: const Text('Action Button Notification'),
          ),
          OutlinedButton(
            onPressed: () async {
              await NotificationService.create(
                id: 7,
                title: 'Scheduled Notification',
                body: 'This is the body of the notification',
                scheduled: true,
                interval: Duration(seconds: 5),
              );
            },
            child: const Text('Scheduled Notification'),
          ),
        ],
      ),
    );
  }
}
