

import 'package:datingapp1/Moduels/Radial%20Progress/radial_progress.dart';
import 'package:datingapp1/Moduels/Rounded%20Image/rounded_image.dart';
import 'package:datingapp1/Shared/Colors%20and%20Icons/colors_icons.dart';
import 'package:datingapp1/Shared/Components/constant.dart';
import 'package:datingapp1/Shared/Style/icon_broken.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {

  String image = 'https://scontent.fgza2-3.fna.fbcdn.net/v/t39.30808-6/258824464_967718530445292_2412928635547972439_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=v6n3GAC2ljIAX88C3qX&tn=XjHersFi-uQLR9zz&_nc_ht=scontent.fgza2-3.fna&oh=00_AT8RWktL3qwUSQTop1LBMzZmSBKiKQevXokEV4j0Lv5SBg&oe=61E86980';
  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children:
        [
          Column(
            children:
            [
              Expanded(
                  flex: 5,
                  child: Stack(
                    alignment: Alignment.center,
                    children:
                    [
                      detailsProfile(),
                      SafeArea(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                Text(
                                  'My Profile',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 25,
                                    color: ColorApp.whiteColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // CircleAvatar(
                            //   radius: 60,
                            //   backgroundImage: NetworkImage(image),
                            //   backgroundColor: ColorApp.redAccent.withOpacity(0.70),
                            // ),
                            RadialProgress(
                              width: 4,
                              goalCompleted: 0.9,
                              child: RoundedImage(
                                imagePath: image,
                                size: Size.fromWidth(120.0),
                              ),
                            ),
                            const SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Mostafa Najjar,',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: ColorApp.whiteColor
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  '23',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: ColorApp.whiteColor
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:
                              [
                                Icon(
                                  IconBroken.location,
                                  color: ColorApp.whiteColor,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  '34 Kilometres',
                                  style: caption(context)!.copyWith(
                                      fontWeight: FontWeight.w600,
                                      height: 1.4,
                                      color: ColorApp.whiteColor
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
              ),
              Expanded(
                  flex: 4,
                  child: Container(
                    padding: const EdgeInsets.only(top: 40),
                    color: ColorApp.whiteColor,
                    child: Table(
                      children:
                      [
                        TableRow(
                          children:
                          [
                            Card(
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children:
                                  [
                                    Row(
                                      children:
                                      [
                                        const Spacer(),
                                        Icon(
                                            IconAPP.starBorderPurple500Rounded,
                                            color: ColorApp.blueAccent,
                                        )
                                      ],
                                    ),
                                    Text(
                                      '13',
                                      style: TextStyle(
                                        color: ColorApp.blackColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      'New Matches',
                                      style: TextStyle(
                                        color: ColorApp.blackColor,
                                      ),
                                    ),
                                  ],
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                ),
                              ),
                              elevation: 5,
                              margin: const EdgeInsets.all(8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            Card(
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children:
                                  [
                                    Row(
                                      children:
                                      [
                                        const Spacer(),
                                        Icon(
                                            IconAPP.faceRetouchingOffOutlined,
                                            color: ColorApp.blueAccent,
                                        )
                                      ],
                                    ),
                                    Text(
                                      '21',
                                      style: TextStyle(
                                        color: ColorApp.blackColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      'Unmatched Me',
                                      style: TextStyle(
                                        color: ColorApp.blackColor,
                                      ),
                                    ),
                                  ],
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                ),
                              ),
                              margin: const EdgeInsets.all(8),
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children:
                          [
                            Card(
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children:
                                  [
                                    Row(
                                      children:
                                      [
                                        const Spacer(),
                                        Icon(
                                            IconAPP.doneAllOutlined,
                                            color: ColorApp.blueAccent,
                                        )
                                      ],
                                    ),
                                    Text(
                                      '264',
                                      style: TextStyle(
                                        color: ColorApp.blackColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      'All Matches',
                                      style: TextStyle(
                                        color: ColorApp.blackColor,
                                      ),
                                    ),
                                  ],
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                ),
                              ),
                              elevation: 5,
                              margin: const EdgeInsets.all(8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            Card(
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children:
                                  [
                                    Row(
                                      children:
                                      [
                                        const Spacer(),
                                        Icon(
                                            IconAPP.updateOutlined,
                                            color: ColorApp.blueAccent,
                                        )
                                      ],
                                    ),
                                    Text(
                                      '42',
                                      style: TextStyle(
                                        color: ColorApp.blackColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      'Rematched',
                                      style: TextStyle(
                                        color: ColorApp.blackColor,
                                      ),
                                    ),
                                  ],
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                ),
                              ),
                              elevation: 5,
                              margin: const EdgeInsets.all(8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children:
                          [
                            Card(
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children:
                                  [
                                    Row(
                                      children:
                                      [
                                        const Spacer(),
                                        Icon(
                                            IconAPP.visibilityIcon,
                                            color: ColorApp.blueAccent,
                                        )
                                      ],
                                    ),
                                    Text(
                                      '404',
                                      style: TextStyle(
                                        color: ColorApp.blackColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      'Profile Visitors',
                                      style: TextStyle(
                                        color: ColorApp.blackColor,
                                      ),
                                    ),
                                  ],
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                ),
                              ),
                              elevation: 5,
                              margin: const EdgeInsets.all(8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            Card(
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children:
                                  [
                                    Row(
                                      children:
                                      [
                                        const Spacer(),
                                        Icon(
                                            IconAPP.borderFavoriteIcon,
                                            color: ColorApp.blueAccent,
                                        )
                                      ],
                                    ),
                                    Text(
                                      '42',
                                      style: TextStyle(
                                        color: ColorApp.blackColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      'Super Likes',
                                      style: TextStyle(
                                        color: ColorApp.blackColor,
                                      ),
                                    ),
                                  ],
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                ),
                              ),
                              elevation: 5,
                              margin: const EdgeInsets.all(8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
              ),
            ],
          ),
          Positioned(
            top: screenHeight * (5/9) - (80/2),
              left: 16,
              right: 16,
              child: Container(
                height: 80,
                child: Row(
                  children:
                  [
                    Expanded(
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            Text(
                              '54%',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: ColorApp.blackColor
                              ),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              'Progress',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: ColorApp.greyColor
                              ),
                            ),
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const
                          [
                            Text(
                              '54%',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Progress',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            Text(
                              '152',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                  color: ColorApp.blackColor
                              ),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              'Level',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: ColorApp.greyColor
                              ),
                            ),
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          )
        ],
      ),
    );
  }
}

Widget detailsProfile ({String? imageUrl}) => Stack(
  children:
  [
    const Image(
      image: NetworkImage(
          'https://scontent.fgza2-3.fna.fbcdn.net/v/t39.30808-6/258824464_967718530445292_2412928635547972439_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=v6n3GAC2ljIAX88C3qX&tn=XjHersFi-uQLR9zz&_nc_ht=scontent.fgza2-3.fna&oh=00_AT8RWktL3qwUSQTop1LBMzZmSBKiKQevXokEV4j0Lv5SBg&oe=61E86980'
      ),
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
    ),
    Container(
      color: ColorApp.redAccent.withOpacity(0.70),
    )
  ],
);
