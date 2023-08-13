import 'package:bookly/core/utils/routers.dart';
import 'package:bookly/features/home/presentation/view_model/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/view_model/newest_books_cubit/newest_books_cubit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/utils/blocobserver.dart';
import 'features/splash/presentation/view/splash_view.dart';


void main() {

  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = MyBlocObserver();
  CachedNetworkImage.logLevel = CacheManagerLogLevel.debug;

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

        return MultiBlocProvider(

          providers: [

            BlocProvider(create: (context) => FeaturedBooksCubit()..fetchFeaturedBooks()),
            BlocProvider(create: (context) => NewestBooksCubit()..fetchNewestBooks()),
          ],
          child: MaterialApp.router(

            routerConfig: BooklyRouters.router,
            theme: ThemeData.dark().copyWith(

                scaffoldBackgroundColor: const Color(0xff100B20),
                textTheme: GoogleFonts.montserratAlternatesTextTheme(ThemeData.dark().textTheme)
            ),
            debugShowCheckedModeBanner: false,
          ),
        );
      },
    );
  }
}
