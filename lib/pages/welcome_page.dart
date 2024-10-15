import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  // List of image paths
  List<String> images = [
    "assets/welcome.png",
    "assets/welcome.png",
    "assets/welcome.png",
  ];
  List<String> boldText =[
    "Travel",
    "Tips",
    "Travel",

  ];

  List<String> text= [
     "The mountains whisper secrets of freedom to those brave enough to listen.",
    "At the peak of a mountain, the world below fades away, leaving only the freedom of the sky.",
    "Mountains are the silent guardians of our dreams, offering freedom with every ascent."
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(images[index]),
                fit: BoxFit.cover, // Optional: to cover the entire container
              ),
              
            ),
            child: Container(
              margin: EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(text: boldText[index]),
                      AppText(text: "Mountain", size: 30,),
                      SizedBox(height: 20,),
                      Container(
                        width: 250,
                        child: AppText(text: text[index]),
                      ),
                       SizedBox(height: 20,),
                       ResponsiveButton(width: 120,),
                    ],
                  ),
                  Column(
                    children: List.generate(3, (indexDots){
                      return Container(
                        margin: EdgeInsets.only(bottom: 2),
                        width: 5,
                        height: index==indexDots?25:8,
                        decoration: BoxDecoration(
                          color: index == indexDots ? Colors.white.withOpacity(1.0) : Colors.white10.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10)
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
