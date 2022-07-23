import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juzawo/constants/constants.dart';
import 'package:juzawo/push_notifications/push_notification_service.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'authentication/fire_base_auth_service.dart';

void main() async {
  //initialilizing the firebase for authentication
  WidgetsFlutterBinding.ensureInitialized();
  await firebaseInitialization.then((value) {
    Get.put(AuthController());
  });
  //Initializing the PushNotification service from firebase
  await PushNotificationService().setupInteractedMessage();
  runApp(const MyUgandaOnline());
  //sending the initial message
  RemoteMessage? initialMessage =
      await FirebaseMessaging.instance.getInitialMessage();
  if (initialMessage != null) {
    // App received a notification when it was killed
  }
}

class MyUgandaOnline extends StatelessWidget {
  const MyUgandaOnline({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Uganda Online',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: TestHomePage(),
      home: const CircularProgressIndicator(),
    );
  }
}
