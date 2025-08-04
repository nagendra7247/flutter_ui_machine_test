import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFFFDF8F3),
      body: Padding(
        padding: EdgeInsets.all(size.width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 60),

            Row(
              children: const [
                Expanded(child: TopGridButton(text: 'Wake up now')),
                SizedBox(width: 12),
                Expanded(child: TopGridButton(text: 'Now breastfed')),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: const [
                Expanded(child: TopGridButton(text: 'Refusal to breastfeed')),
                SizedBox(width: 12),
                Expanded(child: TopGridButton(text: 'Evening ritual started')),
              ],
            ),

            const SizedBox(height: 24),

            Align(
              alignment: Alignment.centerLeft,
              child: ChatBubble(
                text: "Welcome back, Ozlem.\nIt's nice that Mete is awake now.",
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: ChatBubble(
                text: "He slept for about 1 hour –\nthat's perfect for his age.",
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: ChatBubble(
                text: "Would you like some structural support for the rest of the day?",
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: ChatBubble(
                text: "Yes, please!",
                isUser: true,
              ),
            ),
            const Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 6.0),
                child: Text(
                  "14:23",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: ChatBubble(
                text: "Between 2:30 and 5:30 p.m., gentle play or a snack will do him good.",
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 6.0),
                child: Text(
                  "14:23",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ),
            ),

            const Spacer(),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.brown.withOpacity(0.2)),
              ),
              child: Row(
                children: [
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Write a message',
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.send, color: Color(0xFFB35A38)),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isUser;

  const ChatBubble({super.key, required this.text, this.isUser = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isUser ? const Color(0xFFB35A38) : const Color(0xFFF1DCD4),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 15,
          color: isUser ? Colors.white : Colors.black87,
        ),
      ),
    );
  }
}

class TopGridButton extends StatelessWidget {
  final String text;

  const TopGridButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFF1DCD4),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Color(0xFFB35A38),
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
