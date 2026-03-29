import 'package:flutter/material.dart';

void main() {
  runApp(const BananaIdentifierApp());
}

class BananaIdentifierApp extends StatelessWidget {
  const BananaIdentifierApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Banana Identifier',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const BananaIdentifierScreen(),
    );
  }
}

class BananaIdentifierScreen extends StatefulWidget {
  const BananaIdentifierScreen({Key? key}) : super(key: key);

  @override
  State<BananaIdentifierScreen> createState() => _BananaIdentifierScreenState();
}

class _BananaIdentifierScreenState extends State<BananaIdentifierScreen> {
  final List<Map<String, String>> bananaTypes = [
    {
      'name': 'Cavendish',
      'description': 'Most common type, yellow when ripe',
      'color': '#FFD700'
    },
    {
      'name': 'Red Banana',
      'description': 'Reddish skin, sweeter taste',
      'color': '#DC143C'
    },
    {
      'name': 'Plantain',
      'description': 'Larger, used for cooking',
      'color': '#8B7500'
    },
    {
      'name': 'Gros Michel',
      'description': 'Creamy texture, vintage variety',
      'color': '#FFD700'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Banana Identifier')),
      body: ListView.builder(
        itemCount: bananaTypes.length,
        itemBuilder: (context, index) {
          final banana = bananaTypes[index];
          return Card(
            margin: const EdgeInsets.all(8),
            child: ListTile(
              title: Text(banana['name']!),
              subtitle: Text(banana['description']!),
              leading: CircleAvatar(
                backgroundColor: Color(int.parse(banana['color']!.replaceFirst('#', '0xff'))),
              ),
            ),
          );
        },
      ),
    );
  }
}