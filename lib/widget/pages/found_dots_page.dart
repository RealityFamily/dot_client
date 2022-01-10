import 'package:dot_client/widget/elements/found_dot.dart';
import 'package:dot_client/widget/elements/map_param.dart';
import 'package:flutter/material.dart';

class FoundDotsPage extends StatelessWidget {
  const FoundDotsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFB6B6B4),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          Container(
            width: 50,
            height: 5,
            margin: const EdgeInsets.only(
              top: 5,
            ),
            decoration: BoxDecoration(
                color: Colors.grey[700],
                borderRadius: BorderRadius.circular(10)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Результат поиска",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 30,
                  height: 30,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.highlight_remove),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 40,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: ListView.separated(
              itemBuilder: (context, index) => MapParam(name: index.toString()),
              separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
              itemCount: 5,
              scrollDirection: Axis.horizontal,
            ),
          ),
          const Divider(),
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => const FoundDot(),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: 5,
          ),
        ],
      ),
    );
  }
}
