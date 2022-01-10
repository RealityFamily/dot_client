import 'package:dot_client/widget/pages/dot_page.dart';
import 'package:flutter/material.dart';

class FoundDot extends StatelessWidget {
  const FoundDot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();

        showModalBottomSheet(
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          context: context,
          builder: (context) => DotPage(),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        color: const Color(0xFFdadada),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Название точки",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Теги точки"),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: const [
                        Text("Рейтинг точки"),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Дороговизна точки"),
                      ],
                    ),
                  ],
                ),
                const CircleAvatar(
                  backgroundColor: Color(0xFFc4c4c4),
                  radius: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 70,
              child: ListView.separated(
                itemBuilder: (context, index) => Container(
                  width: 70,
                  height: 70,
                  color: const Color(0xFFc4c4c4),
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  width: 5,
                ),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Время работы"),
                Text("Расстояние до пользователя"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
