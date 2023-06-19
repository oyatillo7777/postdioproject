import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:postdioproject/all_trival/data/models/AllCountryModel.dart';
import 'package:postdioproject/all_trival/presitation/widget/clip_rrect_widget.dart';

class Grid extends StatefulWidget {
  final List<AllCountryModel> list;

  const Grid({Key? key, required this.list}) : super(key: key);

  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {
  String query = "";
  bool isSearch = false;
  late List<AllCountryModel> list;
  final ValueNotifier<String> _counter = ValueNotifier<String>("");

  @override
  void initState() {
    list = widget.list;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: isSearch
              ? TextField(
                  decoration: InputDecoration(
                      label: Text(
                    "Search",
                    style: TextStyle(color: Colors.white),
                  )),
                  onChanged: (value) {
                    setState(() {
                      list = widget.list
                          .where((element) =>
                              element.name!.common.toString().contains(query))
                          .toList();
                      query = value;
                      _counter.value = query;
                    });
                  },
                )
              : Text("Davlatlar"),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {});
                  isSearch = !isSearch;
                },
                icon: Icon(Icons.search))
          ],
        ),
        body: ClipWidget(list: list));
  }
}
