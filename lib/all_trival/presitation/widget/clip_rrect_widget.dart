import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../data/models/AllCountryModel.dart';
import '../pages/second_screen_page.dart';

class ClipWidget extends StatefulWidget {
  final List<AllCountryModel> list;

  ClipWidget({
    Key? key,
    required this.list,
  }) : super(key: key);

  @override
  State<ClipWidget> createState() => _ClipWidgetState();
}

class _ClipWidgetState extends State<ClipWidget> {
  ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
        onNotification: (scrollNotification) {
          if (scrollNotification is ScrollUpdateNotification) {
            final visibleItemsCount =
                (scrollNotification.metrics.pixels / 100.0).ceil();
            if (visibleItemsCount % 20 == 0 &&
                scrollNotification.metrics.pixels != 0) {
              CircularProgressIndicator();
            }
          }
          return false;
        },
        child: GridView.builder(
            controller: _controller,
            padding: EdgeInsets.symmetric(horizontal: 10),
            itemCount: widget.list.length + 1,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 10, crossAxisSpacing: 10, crossAxisCount: 2),
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => SecondScreen(
                                  flag: widget.list[index].flag.toString(),
                                  borders:
                                      widget.list[index].borders.toString(),
                                  name: widget.list[index].name!.common
                                      .toString(),
                                  flags:
                                      widget.list[index].flags!.png.toString(),
                                  capital:
                                      widget.list[index].capital.toString(),
                                  fifa: widget.list[index].fifa.toString(),
                                  area: widget.list[index].area.toString(),
                                  must:
                                      widget.list[index].independent.toString(),
                                  region: widget.list[index].region.toString(),
                                  status: widget.list[index].status.toString(),
                                )));
                  },
                  child: Hero(
                    tag: widget.list[index].flag.toString(),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.blue[100]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                              flex: 2,
                              child: Container(
                                  width: double.infinity,
                                  height: 100,
                                  child: CachedNetworkImage(
                                    imageUrl: widget.list[index].flags?.png
                                            .toString() ??
                                        "",
                                    fit: BoxFit.cover,
                                    placeholder: (context, url) {
                                      return Center(
                                          child: CircularProgressIndicator());
                                    },
                                    errorWidget: (context, url, error) {
                                      return Center(
                                          child:
                                              Text("Internet not available"));
                                    },
                                  ))),
                          Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  widget.list[index].name?.common ?? "nomalum",
                                  style: TextStyle(fontSize: 18),
                                ),
                              )),
                          if ((index + 1) % 20 == 0)
                            CupertinoActivityIndicator()
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }));
  }
}
