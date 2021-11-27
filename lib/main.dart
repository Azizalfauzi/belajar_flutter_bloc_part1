import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_bloc_study/bloc/counter_bloc.dart';
import 'package:flutter_state_bloc_study/card_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: MainPage(),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Flutter Bloc'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return CounterCard(
                  number: (state is CounterValue) ? state.value : 0,
                  title: 'Bloc Builder',
                );
              },
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                context.read<CounterBloc>().add(Increment());
              },
              child: Text('Increment'),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                context.read<CounterBloc>().add(Decrement());
              },
              child: Text('Decrement'),
            ),
          ],
        ),
      ),
    );
  }
}
