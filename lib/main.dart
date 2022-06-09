import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mine_firebase/Screens/loginScreen.dart';
import 'Screens/chat_screen.dart';
import 'Screens/registrationScreen.dart';
import 'Screens/welcomeScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "XXX", // Your apiKey
      appId: "XXX", // Your appId
      messagingSenderId: "XXX", // Your messagingSenderId
      projectId: "XXX", // Your projectId
    ),
  );
  runApp(const FlashChat());
}

class FlashChat extends StatelessWidget {
  const FlashChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
        bodyText1: TextStyle(color: Colors.black54),
      ),
    ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id:(context)=>const WelcomeScreen(),
        LoginScreen.id:(context)=>const LoginScreen(),
        RegistrationScreen.id:(context)=>const RegistrationScreen(),
        ChatScreen.id:(context)=>const ChatScreen(),

      }
    );
  }
}
