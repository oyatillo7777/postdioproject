import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:postdioproject/all_trival/presitation/pages/home_page.dart';
import 'package:postdioproject/di/dependency_injection.dart';

import 'all_trival/presitation/bloc/all_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initS();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => diAllCountryModel<AllBloc>(),
        child: MaterialApp(
          home: HomePage(),
          debugShowCheckedModeBanner: false,
        ));
  }
}
