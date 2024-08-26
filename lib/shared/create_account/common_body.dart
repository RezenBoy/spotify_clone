import 'package:flutter/material.dart';

class CommonBody extends StatelessWidget {
  final String tittleText;
  final String subTittleText;

  CommonBody(
      {super.key, required this.tittleText, required this.subTittleText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tittleText,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          TextFormField(
            decoration: InputDecoration(
                filled: true,
                isDense: true,
                fillColor: Colors.grey,
                focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide.none)),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            subTittleText,
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.grey,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                ),
                child: Text(
                  "Next",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )),
          ),
        ],
      ),
    );
  }
}
