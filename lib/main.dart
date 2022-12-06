import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:igclone/features/presentation/page/credential/sign_in_page.dart';
import 'package:igclone/features/presentation/page/main_screen/main_screen.dart';
import 'package:igclone/on_generate_route.dart';
import 'package:igclone/injection_container.dart' as di;

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Instagram Clone",
      darkTheme: ThemeData.dark(),
      onGenerateRoute: OnGenerateRoute.route,
      initialRoute: "/",
      routes: {
        "/" : (context){
          return SignInPage();
        }
      },
    );
  }
}
