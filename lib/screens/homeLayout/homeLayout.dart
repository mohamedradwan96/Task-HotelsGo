import 'package:flutter/material.dart';
import 'package:task_12_11/shared/styel/colors.dart';

import '../../widgets/text_form_field/textformfield.dart';
import '../../widgets/trap.dart';
import '../rooms_guests/rooms_guests.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = "HomeScreen";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  var cityNameController = TextEditingController();
  String? selectedItemNationality;
  String? selectedItemRoom;
  List<String> _dropdownItems = ['Egypt', 'England', 'Germany', 'Spain'];
  List<String> _dropdownItemsRooms = [
    '1 Room ',
    '2 Room 2 Childerns',
    '2 Rooms 4 adult'
  ];

  DateTimeRange selectedDates =
      DateTimeRange(start: DateTime.now(), end: DateTime.now());
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/bg.png",
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  ClipPath(
                    clipper: TrapezoidClipper(),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.height / 15,
                      decoration: BoxDecoration(
                          border: Border.all(color: color2),
                          color: primaryColor),
                      child: const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text("Hotels Search",
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 20, color: color2)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 100,
              ),
              Container(
                color: Colors.orange,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .85,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              bottomRight: Radius.circular(25),
                              bottomLeft: Radius.circular(25)),
                          gradient: LinearGradient(
                            colors: [Colors.blue.shade700, Colors.white],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            customTextFormField(
                              obsecure: false,
                              controlled: cityNameController,
                              label: "Select City",
                              message: "Please Enter The City ",
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 100,
                            ),
                            InkWell(
                              onTap: () async {
                                final DateTimeRange? dateTimeRange =
                                    await showDateRangePicker(
                                        context: context,
                                        firstDate: DateTime(2023),
                                        lastDate: DateTime(2030));
                                if (dateTimeRange != null) {
                                  setState(() {
                                    selectedDates = dateTimeRange;
                                  });
                                } else
                                  "Please Select Time";
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width * .74,
                                height: MediaQuery.of(context).size.height / 18,
                                decoration: BoxDecoration(
                                    border: Border.all(color: primaryColor),
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                child: Center(
                                    child: Text(
                                        style: const TextStyle(
                                            color: primaryColor,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500),
                                        "${selectedDates.start.toString().substring(0, 10)} ===> ${selectedDates.end.toString().substring(0, 10)}")),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 100,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * .74,
                              decoration: BoxDecoration(
                                  border: Border.all(color: primaryColor),
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              child: Center(
                                child: DropdownButton<String>(
                                  hint: const Text(
                                    "Select Nationality",
                                    style: TextStyle(
                                        color: primaryColor, fontSize: 20),
                                  ),
                                  value: selectedItemNationality,
                                  items: _dropdownItems.map((String item) {
                                    return DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(item),
                                    );
                                  }).toList(),
                                  onChanged: (String? selectedItem1) {
                                    setState(() {
                                      selectedItemNationality = selectedItem1!;
                                    });
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 100,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * .74,
                              decoration: BoxDecoration(
                                  border: Border.all(color: primaryColor),
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              child: Center(
                                child: DropdownButton<String>(
                                  hint: const Text(
                                    "1 Room , 2 Adult , 0 Children",
                                    style: TextStyle(
                                        color: primaryColor, fontSize: 18),
                                  ),
                                  value: selectedItemRoom,
                                  items: _dropdownItemsRooms.map((String item) {
                                    return DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(item),
                                    );
                                  }).toList(),
                                  onChanged: (String? selectedItem1) {
                                    setState(() {
                                      selectedItemRoom = selectedItem1!;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                                height:
                                    MediaQuery.of(context).size.height * .80,
                                width: MediaQuery.of(context).size.width,
                                color: Colors.grey.shade300,
                                child: RoomsBottomSheet());
                          },
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Find Hotels",
                              style: TextStyle(
                                  color: color2,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              size: 30,
                              Icons.search,
                              color: color2,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
