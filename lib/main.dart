import 'package:flutter/material.dart';
import 'package:meo_test_app/app/presentation/pages/channels_list.dart';
import 'package:meo_test_app/app/presentation/providers/channels_provider.dart';
import 'package:meo_test_app/app/presentation/providers/program_provider.dart';
import 'package:meo_test_app/core/dependency_injection/injection.dart';
import 'package:provider/provider.dart';

void main() async {
  configureDependencies();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => sl<ChannelsProvider>()),
        ChangeNotifierProvider(create: (_) => sl<ProgramProvider>()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meo App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ChannelsListView(),
    );
  }
}
