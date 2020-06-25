import 'package:covid_19_tracker/constant.dart';
import 'package:flutter/material.dart';
import '../components/header.dart';
import '../components/symptom_card.dart';
import '../components/prevention_method_box.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(
              imageAssetURL: "assets/icons/coronadr.svg",
              textWithBreaks: "Get to know \nabout \nCOVID-19.",
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Symptons",
                    style: kTitleTextStyle,
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SymptomCard(
                          imageAssetURL: "assets/images/headache.png",
                          title: "Headache",
                          isActive: true,
                        ),
                        SymptomCard(
                          imageAssetURL: "assets/images/caugh.png",
                          title: "Caugh",
                        ),
                        SymptomCard(
                          imageAssetURL: "assets/images/fever.png",
                          title: "Fever",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("Prevention", style: kTitleTextStyle),
                  SizedBox(height: 20),
                  PreventionMethodBox(
                      imageAssetUrl: "assets/images/wear_mask.png",
                      title: "Wear face mask",
                      text:
                          "Since the start of the coronavirus outbrake some places have fully embraced wearing facemasks."),
                  PreventionMethodBox(
                      imageAssetUrl: "assets/images/wash_hands.png",
                      title: "Wash your hands",
                      text: "It's very useful."),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
