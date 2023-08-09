import 'package:bookly/core/utils/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'features/splash/presentation/view/splash_view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child){

        return MaterialApp.router(

          routerConfig: BooklyRouters.router,
          theme: ThemeData.dark().copyWith(

              scaffoldBackgroundColor: const Color(0xff100B20),
              textTheme: GoogleFonts.montserratAlternatesTextTheme(ThemeData.dark().textTheme)
          ),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
