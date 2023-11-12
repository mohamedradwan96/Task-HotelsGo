import 'package:flutter/material.dart';
import 'package:task_12_11/shared/styel/colors.dart';

class RoomsBottomSheet extends StatefulWidget {
  const RoomsBottomSheet({Key? key}) : super(key: key);

  @override
  State<RoomsBottomSheet> createState() => _RoomsBottomSheetState();
}

class _RoomsBottomSheetState extends State<RoomsBottomSheet> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 15,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rooms & Guests ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.close))
                ],
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 25),
          Container(
            width: MediaQuery.of(context).size.width * .95,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rooms",
                    style: TextStyle(fontSize: 16),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Center(
                          child: Text(
                            "-",
                            style: TextStyle(fontSize: 40, color: primaryColor),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      const Text(
                        "4",
                        style: TextStyle(fontSize: 20, color: primaryColor),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Center(
                          child: Text(
                            "+",
                            style: TextStyle(fontSize: 30, color: primaryColor),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 50),
          Container(
            width: MediaQuery.of(context).size.width * .95,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Room1",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Adults",
                        style: TextStyle(fontSize: 16),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: Center(
                              child: Text(
                                "-",
                                style: TextStyle(
                                    fontSize: 20, color: primaryColor),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          const Text(
                            "4",
                            style: TextStyle(fontSize: 18, color: primaryColor),
                          ),
                          SizedBox(width: 6),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: Center(
                              child: Text(
                                "+",
                                style: TextStyle(
                                    fontSize: 20, color: primaryColor),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Children",
                        style: TextStyle(fontSize: 16),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: Center(
                              child: Text(
                                "-",
                                style: TextStyle(
                                    fontSize: 20, color: primaryColor),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          const Text(
                            "4",
                            style: TextStyle(fontSize: 18, color: primaryColor),
                          ),
                          SizedBox(width: 6),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: Center(
                              child: Text(
                                "+",
                                style: TextStyle(
                                    fontSize: 20, color: primaryColor),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Age of Child 1"),
                        Text(
                          "14 years",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Age of Child 2"),
                        Text(
                          "10 years",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 25),
          Container(
            width: MediaQuery.of(context).size.width * .95,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Pet-Friendly",
                            style: TextStyle(fontSize: 16),
                          ),
                          Icon(Icons.info_outline)
                        ],
                      ),
                      Switch(
                        activeColor: Colors.green,
                        value: switchValue,
                        onChanged: (bool newValue) {
                          setState(() {
                            switchValue = newValue;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Only Show stays that allows pet",
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              color: Colors.blue,
              width: MediaQuery.of(context).size.width * .85,
              height: MediaQuery.of(context).size.height / 20,
              child: Center(
                child: Text("Apply",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
