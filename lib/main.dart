import 'package:flutter/material.dart';
import 'package:pokemon/presentation/screen/homepage.dart';
import 'package:pokemon/services/pokemon_service.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => HeroesServices()) ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'M',
        initialRoute: '/home',
        routes: {
          '/home' : (context) => HomePage()
        } ,
        theme: ThemeData(
          useMaterial3: true
        ),
      ),
    );
  }
}
