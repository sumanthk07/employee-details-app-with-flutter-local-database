import 'package:employee_details_app/reusables/app_bar.dart';
import 'package:flutter/material.dart';

class AddEmployeeDetails extends StatelessWidget {
  const AddEmployeeDetails({super.key});

  final String title = "Add Employee Details";

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomAppBar(
        title: title,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: height * 0.02,
          ),
          SizedBox(
            height: height * 0.06,
            child: Padding(
              padding: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_2_outlined),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.person_2_outlined),
              border: OutlineInputBorder(
                borderSide: BorderSide(),
              ),
            ),
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    color: Colors.transparent,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 242, 242, 242),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30)),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ListTile(
                                title: Text('Option 1'),
                                onTap: () {
                                  Navigator.pop(context, 'Option 1');
                                },
                              ),
                              ListTile(
                                title: Text('Option 2'),
                                onTap: () {
                                  Navigator.pop(context, 'Option 2');
                                },
                              ),
                              ListTile(
                                title: Text('Option 3'),
                                onTap: () {
                                  Navigator.pop(context, 'Option 3');
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ).then((value) {
                if (value != null) {}
              });
            },
            // child: Container(
            //     height: height * 0.05,
            //     width: width * 0.9,
            //     decoration: BoxDecoration(
            //         border: Border.all(),
            //         borderRadius: BorderRadius.circular(5)),
            //     child: Text('Open Dropdown'),),
          ),
        ],
      )),
    );
  }
}
