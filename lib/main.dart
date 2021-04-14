
import 'package:flutter/material.dart';

//import 'package:componentes/src/home_temp.dart'
//
import 'package:componentes/src/routes/routes.dart';
import 'package:componentes/src/pages/cart_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';





void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''), // English, no country code
        const Locale('es', ''), // Spanish, no country code
      ],
      //home: HomePageTemp()
      //home: HomePage(),
      initialRoute: '/',
      routes:  getApplicationRoutes(),
      onGenerateRoute: ( settings ){

        print ('Ruta llamada: ${ settings.name}');
        return MaterialPageRoute(
          builder: (BuildContext context) => CardPage()
        );

      },
    );
  }
}
