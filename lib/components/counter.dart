import 'package:covid_19_tracker/utils/web_helper.dart';
import 'package:flutter/material.dart';
import '../constant.dart';

class Counter extends StatefulWidget {
  final String title;
  final Color color;
  final String country;

  const Counter({
    Key key,
    this.color,
    this.title,
    this.country,
  }) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    int number;
    return Column(
      children: [
        FutureBuilder<Map<String, dynamic>>(
          future: WebHelper.getCountryStatistics(widget.country),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              if (widget.title == "Infected") {
                number = snapshot.data["response"][0]["cases"]["total"];
              } else if (widget.title == "Recovered") {
                number = snapshot.data["response"][0]["cases"]["recovered"];
              } else {
                number = snapshot.data["response"][0]["deaths"]["total"];
              }

              return Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(6),
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: widget.color.withOpacity(.26),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                        border: Border.all(
                          color: widget.color,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "$number",
                    style: TextStyle(fontSize: 20, color: widget.color),
                  ),
                  Text(
                    "${this.widget.title}",
                    style: kSubTextStyle,
                  ),
                ],
              );
            } else if (snapshot.hasError) {
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ],
    );
  }
}
