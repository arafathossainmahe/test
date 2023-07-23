import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_forecast_app/details.dart';

class HomeUI extends StatelessWidget {
  const HomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 172,
          width: 170,
          child: Image(
            image: AssetImage('assets/images/cloudy.png'),
          ),
        ),
        InkWell(
          onTap: () {
           Get.to(const Details()); 
          },
          child: Container(
            margin: const EdgeInsets.only(left: 30,right: 30),
            height: 335,
            width: 353,
            decoration: BoxDecoration(
                color: const Color(0xffFFFFFFB2).withOpacity(0.3),
                borderRadius: BorderRadius.circular(20)),
            child: const Padding(
              padding: EdgeInsets.only(top: 12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Today, 12 September',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "29°",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 100,
                    ),
                  ),
                  Text(
                    'Coludy',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(
                    height: 72,
                    width: 199,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            ImageIcon(
                              AssetImage('assets/icons/windy.png'),
                              color: Colors.white,
                            ),
                            Text(
                              'Wind',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              '10 km/h',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            ImageIcon(
                              AssetImage('assets/icons/hum.png'),
                              color: Colors.white,
                            ),
                            Text(
                              'Hum',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              '54 %',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
