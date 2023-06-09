import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resume_builder/apis/auth.dart';
import 'package:resume_builder/global/constants/constants.dart';
import 'package:resume_builder/global/routes/routes.dart';
import 'package:resume_builder/global/theme/theme.dart';
import 'package:resume_builder/global/widgets/loading.dart';
import 'package:resume_builder/lottie/lottie_demo.dart';
import 'package:resume_builder/pages/unknown/unknown_route.dart';
import 'package:get/get.dart';
import 'package:url_strategy/url_strategy.dart';

//Test commit
Future<void> main() async {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: firebaseConfig,
  );

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "College Recruitment App",
      debugShowCheckedModeBanner: false,
      
      theme: lightThemeDta,
      initialRoute: '/',
      unknownRoute: GetPage(name: '/error', page: () => const UnknownRoute()),
      getPages: getPages,
    );
  }
}

class AuthGate extends ConsumerWidget {
  const AuthGate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return ref.watch(authStateChangeProvider).when(data: (snapshot) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        if (snapshot != null) {
          Get.offAndToNamed('/home');
        }
      });

      // if (snapshot == null) {
      //   return const HomeAuthView();
      // }
      if (snapshot == null) {
        return LoginPage();
      }
      // Render your application if authenticated
      return progressWidget(context);
    }, loading: () {
      return Container();
    }, error: (e, s) {
      throw (e);
    });
  }
}
