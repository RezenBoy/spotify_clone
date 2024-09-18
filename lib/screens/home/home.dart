import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/shared/app_image.dart';
import 'package:spotify_clone/shared/common_card.dart';
import 'package:spotify_clone/shared/common_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: Container(
        height: 60,
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.cabin,
              color: Colors.white,
              size: 40,
            ),
            Icon(
              Icons.search,
              color: Colors.white,
              size: 40,
            ),
            Icon(
              Icons.my_library_add_outlined,
              color: Colors.white,
              size: 40,
            )
          ],
        ),
      ),
      body: SafeArea(
        minimum: EdgeInsets.only(top: 50),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: SvgPicture.asset(
                        getSvgImagePath(AppSvgImages.userIcon),height: 20,
                        fit: BoxFit.fill,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  CommonCard(
                    tittle: "All",
                    isSelected: true,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CommonCard(tittle: "Playlist"),
                  SizedBox(
                    width: 10,
                  ),
                  CommonCard(tittle: "Podcast"),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Flexible(
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          CommonTile(),
                          SizedBox(
                            width: 5,
                          ),
                          CommonTile(),
                        ],
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
