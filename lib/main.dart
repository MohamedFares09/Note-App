import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/add_bloc_observer.dart';

import 'package:note_app/model/note_model.dart';
import 'package:note_app/screen/note_screen.dart';
import 'package:note_app/cubit/cubit/note_cubit.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter()); 
  Bloc.observer = AddBlocObserver();
  await Hive.openBox<NoteModel>("notes");
  runApp(
    BlocProvider(
      create: (context) => NoteCubit() ,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: NoteScreen(),
    );
  }
}
