import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const xylophone());
}

class xylophone extends StatefulWidget {
  const xylophone({Key? key}) : super(key: key);

  @override
  State<xylophone> createState() => _xylophoneState();
}

void play(int num) {
  final player = AudioPlayer();
  player.play(AssetSource('note$num.wav'));
}

Expanded _buildKey({required Color color, required int i}) {
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
      ),
      child: Container(
        color: color,
      ),
      onPressed: () {
        play(i);
      },
    ),
  );
}

class _xylophoneState extends State<xylophone> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            _buildKey(color: Colors.red, i: 1),
            _buildKey(color: Colors.orange, i: 2),
            _buildKey(color: Colors.yellow, i: 3),
            _buildKey(color: Colors.green, i: 4),
            _buildKey(color: Colors.blueAccent, i: 5),
            _buildKey(color: Colors.blue, i: 6),
            _buildKey(color: Colors.purple, i: 7),
          ],
        ),
      ),
    );
  }
}
