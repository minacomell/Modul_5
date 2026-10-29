import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const MusicPage(),
    );
  }
}

class MusicPage extends StatelessWidget{
  const MusicPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Playing..'),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                const Icon(Icons.album, size: 80,),
                const SizedBox(width: 12,),
                Expanded(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                      children: const[
                        Text('Sesi Potret', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 6),
                        Text('Ari Lesmana', style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                ),
                const Spacer(),
                IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
