import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:themescreen/theme_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dark Mode Example"),
        actions: [
          Switch(
            value: themeProvider.themeMode == ThemeMode.dark,
            onChanged: (value) {
              themeProvider.toggleTheme();
            },
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: Padding(padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text("This is a card!",style: TextStyle(fontSize: 10),),
                    Text("The theme toggles between light and dark.")
                  ],
                ),
                ),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(onPressed: (){}, child: Text("Code-Prinz")
              )
            ],
          ),
        ),
      ),
    );
  }
}
