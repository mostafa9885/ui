import 'package:datingapp1/Moduels/Profile%20Screen/profile_screen.dart';
import 'package:datingapp1/Shared/Colors%20and%20Icons/colors_icons.dart';
import 'package:datingapp1/Shared/Components/components.dart';
import 'package:datingapp1/Shared/Components/constant.dart';
import 'package:datingapp1/Shared/Style/icon_broken.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(IconBroken.arrowLeft2),
          onPressed: () {},
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'S E L E C T',
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: ColorApp.redAccent),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Super Liked Me',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                elevation: 5,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Search Friends',
                    border: InputBorder.none,
                    prefixIcon: Icon(IconBroken.search),
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(
                  height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children:
                  [
                    Text(
                        'Super Likes',
                        style: TextStyle(
                          color: ColorApp.blackColor,
                          fontWeight: FontWeight.w600
                        ),
                    ),
                    const SizedBox(width: 10),
                    CircleAvatar(
                      radius: 10,
                      child: Text(
                          '5',
                          style: TextStyle(
                            color: ColorApp.whiteColor,
                          ),
                      ),
                      backgroundColor: ColorApp.redAccent,
                    ),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.only(right: 5.0),
                      child: Text(
                        '1H'
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => ItemPepoleBuilder(context),
                separatorBuilder: (context, index) => const SizedBox(height: 10),
                itemCount: 26,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget ItemPepoleBuilder(context) => InkWell(
  onTap: ()
  {
    NavigatorTo(context, ProfileScreen());
  },
  child:   Card(
    elevation: 4,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children:
        [
          CircleAvatar(
            radius: 40,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            backgroundImage: const NetworkImage(
                'https://image.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg'
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Row(
                  children:
                  [
                    const Expanded(
                      child: Text(
                        'Mostafa Najjar',
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w600,
                            height: 1.4
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children:
                      [
                        CircleAvatar(
                          radius: 5,
                          backgroundColor: ColorApp.greenColor,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          'ONLINE',
                          style: caption(context)!.copyWith(
                              color: ColorApp.greenColor,
                              fontWeight: FontWeight.w600
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children:
                  [
                    const Icon(IconBroken.location),
                    const SizedBox(width: 4),
                    Text(
                      '34 Kilometres',
                      style: caption(context)!.copyWith(
                          fontWeight: FontWeight.w600,
                          height: 1.4
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      IconAPP.starBorderPurple500Rounded,
                      color: ColorApp.blueAccent,
                    ),
                  ],
                ),
              ],

            ),
          ),

        ],
      ),
    ),
  ),
);