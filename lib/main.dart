import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'text_cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => TextCubit(),
        child: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State Bloc"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder<TextCubit, TextState>(
              builder: (context, state) {
                return Text(
                  state.displayText,
                  style: TextStyle(fontSize: 24, color: state.textColor),
                );
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => context.read<TextCubit>().changeText(),
              child: Text("Trocar Texto"),
            ),
          ],
        ),
      ),
    );
  }
}
