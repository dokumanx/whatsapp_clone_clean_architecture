import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp_clone_with_firebase/presentation/pages/phone_verification_page.dart';
import 'package:whatsapp_clone_with_firebase/presentation/widgets/common/custom_next_button.dart';
import 'package:whatsapp_clone_with_firebase/presentation/widgets/common/verification_text_widget.dart';
import 'package:whatsapp_clone_with_firebase/presentation/widgets/theme/style.dart';

class RegistrationScreen extends StatefulWidget {
  static const routeName = "/registration_screen";

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  Country _selectedFilteredDialogCountry =
      CountryPickerUtils.getCountryByPhoneCode("90");
  String _countryCode = "+90";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            children: <Widget>[
              VerificationTextWidget(),
              ListTile(
                onTap: _openFilteredCountryPickerDialog,
                title: _buildDialogItem(_selectedFilteredDialogCountry),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    width: 80,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: greenColor, width: 1.5),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text("${_selectedFilteredDialogCountry.phoneCode}"),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 15),
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(hintText: "Phone Number"),
                        keyboardType: TextInputType.phone,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: CustomNextButton(
                    routeName: PhoneVerificationPage.routeName,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _openFilteredCountryPickerDialog() {
    showDialog(
      context: context,
      builder: (_) => CountryPickerDialog(
        titlePadding: EdgeInsets.all(8.0),
        searchCursorColor: Colors.orange,
        isSearchable: true,
        searchInputDecoration: InputDecoration(hintText: "Search"),
        title: Text("Select your phone code"),
        onValuePicked: (Country country) {
          setState(() {
            _selectedFilteredDialogCountry = country;
            _countryCode = country.phoneCode;
          });
        },
        itemBuilder: _buildDialogItem,
      ),
    );
  }

  Container _buildDialogItem(Country country) {
    return Container(
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: greenColor, width: 1),
        ),
      ),
      child: Row(
        children: [
          CountryPickerUtils.getDefaultFlagImage(country),
          SizedBox(
            width: 5,
          ),
          Text("+${country.phoneCode}"),
          SizedBox(
            width: 5,
          ),
          Text(country.name.length > 20
              ? country.name.substring(0, 20) + "..."
              : country.name),
          Spacer(),
          Icon(Icons.arrow_drop_down)
        ],
      ),
    );
  }
}
