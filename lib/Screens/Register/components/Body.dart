import 'package:first_app/Models/Gender.dart';
import 'package:first_app/Screens/Register/components/Background.dart';
import 'package:first_app/components/Define_DateTime.dart';
import 'package:first_app/components/Define_DropdownButton.dart';
import 'package:first_app/components/RoundedInputField.dart';
import 'package:first_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class Body extends StatefulWidget
{
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  BodyForm createState() {
    return BodyForm();
  }

}
class BodyForm extends State<StatefulWidget>
{
  // Create Variable
  final _formKey = GlobalKey<FormState>();
  bool isButtonEnabled = false;
  TextEditingController _nameController = new TextEditingController();
  TextEditingController dateController = TextEditingController();
  Gender dropdownValue = new Gender(id: 1, name: "Nam");
  // End Create Variable

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      child: Background(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text(
                "Đăng ký tài khoản",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: BackgroundDefaultColor,
                  fontSize: 22,
                ),
              ),
              SizedBox(height: size.height * 0.02),
              SvgPicture.asset(
                "assets/icons/LogoBrand.svg",
                height: size.height * 0.40,
              ),
              SizedBox(height: size.height * 0.02),
              RoundedInputField(
                hintText: "Họ và tên",
                controller: _nameController,
                onChanged: (value) {
                  isEmpty();
                },
              ),
              SizedBox(height: size.height * 0.02),
              define_DropdownButton(
                value: dropdownValue.id.toString(),
                onChanged: (String? newValue){
                  print(newValue);
                  // setState(() {
                  //   dropdownValue.name = newValue!;
                  // });
                },
                items: Gender.getAll().map((Gender object) {
                  return DropdownMenuItem<String>(
                    value: object.id.toString(),
                    child: Text(object.name),
                  );
                }).toList(),
              ),
              SizedBox(height: size.height * 0.02),
              Define_DateTime(
                controller: dateController,
                hintText: DateFormat('dd-MM-yyyy').format(DateTime.now()),
                icon: Icon(
                    Icons.calendar_today,
                    color: BackgroundDefaultColor,
                ),
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime(2101)
                  );
                  String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                  setState(() {
                    dateController.text = formattedDate; //set output date to TextField value.
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool isEmpty() {
    setState(() {
      if(_nameController.text.trim() != "")
      {
        isButtonEnabled=true;
      }
      else{
        isButtonEnabled=false;
      }
    });
    return isButtonEnabled;
  }

}
