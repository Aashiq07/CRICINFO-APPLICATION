import 'package:flutter/material.dart';

String val =
    'Fast bowling (also referred to as pace bowling) is one of two main approaches to bowling in the sport of cricket, the other being spin bowling. Practitioners of pace bowling are usually known as fast bowlers, quicks, or pacers. They can also be referred to as a seam bowler, a swing bowler or a fast bowler who can swing it to reflect the predominant characteristic of their deliveries. Strictly speaking, a pure swing bowler does not need to have a high degree of pace, though dedicated medium-pace swing bowlers are rarely seen at Test level in modern times. The aim of pace bowling is to deliver the ball in such a fashion as to cause the batter to make a mistake. The bowler achieves this by making the hard cricket ball deviate from a predictable, linear trajectory at a sufficiently high speed that limits the time the batter has to compensate for it. For deviation caused by the balls stitching (the seam), the ball bounces off the pitch and deflects either away from the batters body, or inwards towards them. Swing bowlers on the other hand also use the seam of the ball but in a different way. To bowl swing is to induce a curved trajectory of the cricket ball through the air. Swing bowlers use a combination of seam orientation, body position at the point of release, asymmetric ball polishing, and variations in delivery speed to effect an aerodynamic influence on the ball. The ability of a bowler to induce lateral deviation or sideways movement can make it difficult for the batter to address the flight of the ball accurately. Beyond this ability to create an unpredictable path of ball trajectory, the fastest bowlers can be equally potent by delivering a ball at such a rate that a batter simply fails to react either correctly, or at all. While spin bowlers also seek to deceive batters, they do so in a rather different manner. Effective spin bowlers compensate for a much lower speed of delivery with ability to make the ball deviate in a considerably more extreme fashion than typical fast bowling.';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({
    super.key,
    required this.title,
    required this.imagePath,
  });
  final String title;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(64, 196, 255, 1),
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.network(imagePath),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                val,
                style: const TextStyle(
                  fontSize: 18,
                  //fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
