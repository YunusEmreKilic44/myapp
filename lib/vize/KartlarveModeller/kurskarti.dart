import 'package:flutter/material.dart';
import 'kursmodeli.dart';

class KursKarti extends StatelessWidget {
  final KursModeli kursVerisi;

  const KursKarti({super.key, required this.kursVerisi});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Top Item: Icon
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color(0xFF2E3B4E).withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                kursVerisi.KursIkonu,
                color: const Color(0xFF2E3B4E),
                size: 20,
              ),
            ),
            // Bottom Item: Text and Progress
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  kursVerisi.KursAdi,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 11,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  kursVerisi.EgitmenAdi,
                  style: const TextStyle(color: Colors.grey, fontSize: 9),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8), // Space before progress bar
                Row(
                  children: [
                    Expanded(
                      child: LinearProgressIndicator(
                        value: kursVerisi.IlerlemeOrani,
                        backgroundColor: Colors.grey[200],
                        color: const Color(0xFF5C6BC0),
                        minHeight: 3,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      "%${(kursVerisi.IlerlemeOrani * 100).toInt()}",
                      style: const TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
