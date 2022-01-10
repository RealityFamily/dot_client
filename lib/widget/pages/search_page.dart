import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  final double topMargin;
  const SearchPage({
    required this.topMargin,
    Key? key,
  }) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  void searched() {
    Navigator.of(context).pop();

    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      context: context,
      builder: (context) => Container(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: widget.topMargin + 10,
      ),
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
          Container(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 10,
              bottom: 15,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      child: TextField(
                        autofocus: true,
                        decoration: const InputDecoration()
                            .applyDefaults(
                                Theme.of(context).inputDecorationTheme)
                            .copyWith(
                              prefixIcon: const Icon(Icons.search),
                            ),
                        onEditingComplete: searched,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
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
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 30,
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: const Color(0xFF959595),
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 20,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF777777),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(index.toString()),
                              ],
                            ),
                          ),
                      separatorBuilder: (context, index) => const SizedBox(
                            width: 10,
                          ),
                      itemCount: 10),
                ),
              ],
            ),
          ),
          Container(
            height: 15,
            color: const Color(0xFF959595),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => ListTile(
                title: Text(index.toString()),
                leading: const Icon(Icons.access_time),
              ),
              separatorBuilder: (context, index) => const Divider(
                height: 2,
              ),
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
