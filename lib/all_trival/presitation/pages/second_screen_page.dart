import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String name;
  final String flags;
  final String must;
  final String status;
  final String capital;
  final String region;
  final String area;
  final String fifa;
  final String borders;
  final String flag;

  const SecondScreen({
    Key? key,
    required this.name,
    required this.flags,
    required this.must,
    required this.status,
    required this.capital,
    required this.region,
    required this.area,
    required this.fifa,
    required this.borders,
    required this.flag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            child: CachedNetworkImage(
              imageUrl: flags ?? "",
              fit: BoxFit.cover,
              placeholder: (context, url) {
                return Center(child: CircularProgressIndicator());
              },
              errorWidget: (context, url, error) {
                return Center(child: Text("Internet not available"));
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Independent:",
                                    style: TextStyle(fontSize: 18)),
                                Text(must, style: TextStyle(fontSize: 18)),
                              ],
                            ),
                            height: 50,
                            width: double.infinity,
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Status:", style: TextStyle(fontSize: 18)),
                                Text(status, style: TextStyle(fontSize: 18)),
                              ],
                            ),
                            width: double.infinity,
                            height: 50,
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Capital:",
                                    style: TextStyle(fontSize: 18)),
                                Text(capital, style: TextStyle(fontSize: 18)),
                              ],
                            ),
                            height: 50,
                            width: double.infinity,
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Region:", style: TextStyle(fontSize: 18)),
                                Text(region, style: TextStyle(fontSize: 18)),
                              ],
                            ),
                            width: double.infinity,
                            height: 50,
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Area:", style: TextStyle(fontSize: 18)),
                                Text(area, style: TextStyle(fontSize: 18)),
                              ],
                            ),
                            width: double.infinity,
                            height: 50,
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Fifa:", style: TextStyle(fontSize: 18)),
                                Text(fifa, style: TextStyle(fontSize: 18)),
                              ],
                            ),
                            height: 50,
                            width: double.infinity,
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("borders:",
                                    style: TextStyle(fontSize: 18)),
                                Text(borders, style: TextStyle(fontSize: 18)),
                              ],
                            ),
                            height: 50,
                            width: double.infinity,
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
