import 'package:flutter/material.dart';

class GradientAppBar extends StatelessWidget {
  const GradientAppBar({super.key, required this.title});

  final String title;

  final BoxDecoration appBarDeco = const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Colors.lightBlue,
        Colors.orange,
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text(title),
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: appBarDeco,
        ),
      ),
    );
  }
}

class WordArt extends StatelessWidget {
  const WordArt({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ShaderMask(
        shaderCallback: (bounds) => const LinearGradient(
          colors: [
            Color.fromRGBO(173, 5, 86, 1),
            Color.fromRGBO(247, 132, 37, 1),
            Color.fromRGBO(252, 232, 3, 1),
            Color.fromRGBO(27, 247, 2, 1),
            Color.fromRGBO(47, 4, 219, 1),
          ],
        ).createShader(bounds),
        child: const Text(
          'Hello Flutter World!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 48,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(152, 239, 250, 1),
              Color.fromRGBO(255, 148, 214, 1),
            ],
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            GradientAppBar(title: title),
            const SliverToBoxAdapter(
              child: Column(
                children: [
                  WordArt(),
                  GradientContainer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'LinearGradients Example'),
    );
  }
}