import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  final Function _submitAuthentication;
  final bool isloading;

  AuthForm(this._submitAuthentication, this.isloading);

  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formKey = GlobalKey<FormState>();

  String _userphone = '';

  void _trySubmit() async {
    final isvalid = _formKey.currentState.validate();

    FocusScope.of(context).unfocus();

    if (isvalid) {
      _formKey.currentState.save();
      widget._submitAuthentication(_userphone, context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Card(
          margin: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    TextFormField(
                      key: ValueKey('phoneno'),
                      onSaved: (value) {
                        _userphone = value;
                      },
                      validator: (value) {
                        if (value.isEmpty ||
                            value.length > 10 ||
                            value.length < 10) {
                          return 'please enter the valid phone no.';
                        }

                        return null;
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Phoneno.',
                        prefixIcon: Icon(Icons.phone),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(70.0),
                          ),
                      child: widget.isloading
                          ? CircularProgressIndicator()
                          : ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.blueAccent),
                                  shadowColor: MaterialStateProperty.all(
                                      Colors.redAccent),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0)),
                                  )),
                              onPressed: _trySubmit,
                              child: Text('Login'),
                            ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
