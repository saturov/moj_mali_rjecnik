import 'package:flutter/material.dart';
import 'package:moj_mali_rjecnik/themes/coffee_theme.dart';
import 'package:moj_mali_rjecnik/views/widgets/add_fab.dart';
import 'package:moj_mali_rjecnik/views/widgets/custom_bottom_sheet.dart';
import 'package:moj_mali_rjecnik/views/widgets/scrollable_list_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.from(
          colorScheme: CoffeeColorScheme.lightColorScheme, useMaterial3: true),
      darkTheme: ThemeData.from(
          colorScheme: CoffeeColorScheme.darkColorScheme, useMaterial3: true),
      home: const MyHomePage(title: 'Moj Mali Rečnik'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ScrollableListView(),
      ),
      floatingActionButton: Builder(builder: (context) {
        return AddButton(
          onPressed: () {
            showCustomBottomSheet(
              context: context,
              child: const CustomBottomSheet(),
            );
          },
        );
      }),
    );
  }
}
