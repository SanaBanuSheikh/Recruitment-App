import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:lottie/lottie.dart';
import 'package:resume_builder/dashboard.dart';
import 'package:resume_builder/lottie/bunny.dart';
import 'package:resume_builder/signup.dart';

class LoginPage extends StatefulWidget {
 

  @override
  _LoginPage createState() => _LoginPage();
}

const Color _primaryColor = Colors.blue;
// const Color _backgroundColor = Color(0xFF37474F);
const Color _backgroundColor = Colors.white;
const Color _textColor = Colors.black;

class _LoginPage extends State<LoginPage> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Bunny _bunny;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    _controller.stop();
    _bunny = Bunny(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double textFieldWidth = MediaQuery.of(context).size.width - 32;
    final height = MediaQuery.of(context).size.height;
    Widget _submitButton() {
      return Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.grey.shade200,
                  offset: const Offset(2, 4),
                  blurRadius: 5,
                  spreadRadius: 2)
            ],
            gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xfffbb448), Color(0xfff7892b)])),
        child: const Text(
          'Login',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      );
    }

    Widget _divider() {
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: const <Widget>[
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Divider(
                  thickness: 1,
                ),
              ),
            ),
            Text('or'),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Divider(
                  thickness: 1,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      );
    }

    Widget _facebookButton() {
      return Container(
        height: 50,
        margin: const EdgeInsets.symmetric(vertical: 20),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xff1959a9),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      topLeft: Radius.circular(5)),
                ),
                alignment: Alignment.center,
                child: const Text('f',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w400)),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xff2872ba),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(5),
                      topRight: Radius.circular(5)),
                ),
                alignment: Alignment.center,
                child: const Text('Log in with Facebook',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400)),
              ),
            ),
          ],
        ),
      );
    }

    Widget _createAccountLabel() {
      return InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) =>  SignUpPage()));
        },
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          padding: const EdgeInsets.all(15),
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                'Don\'t have an account ?',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Register',
                style: TextStyle(
                    color: Color(0xfff79c4f),
                    fontSize: 13,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      );
    }

    Widget _title() {
      return RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
            text: 'C.',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Color(0xffe46b10)),
            children: [
              TextSpan(
                text: 'R.',
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              TextSpan(
                text: 'App',
                style: TextStyle(color: Color(0xffe46b10), fontSize: 30),
              ),
            ]),
      );
    }

    final Widget content = Scaffold(
      // appBar: AppBar(
      //   systemOverlayStyle: SystemUiOverlayStyle.light,
      //   // backgroundColor: _backgroundColor,
      //   title: const Text('Lottie '),
      //   iconTheme: const IconThemeData(color: _textColor),
      // ),
      backgroundColor: _backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 32.0),
            _title(),
            const SizedBox(height: 10.0),
            Lottie.asset(
              'assets/lottie/bunny_new_mouth.json',
              width: 200,
              height: 200,
              controller: _controller,
              fit: BoxFit.fill,
              onLoaded: (composition) {
                setState(() {
                  _controller.duration = composition.duration;
                });
              },
            ),
            _MyTextField(
              labelText: 'User Name',
              keyboardType: TextInputType.emailAddress,
              onHasFocus: (isObscure) {
                _bunny.setTrackingState();
              },
              onChanged: (text) {
                _bunny.setEyesPosition(_getTextSize(text) / textFieldWidth);
              },
            ),
            _MyTextField(
              labelText: 'Password',
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              onHasFocus: (isObscure) {
                if (isObscure) {
                  _bunny.setShyState();
                } else {
                  _bunny.setPeekState();
                }
              },
              onObscureText: (isObscure) {
                if (isObscure) {
                  _bunny.setShyState();
                } else {
                  _bunny.setPeekState();
                }
              },
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>  Dashboard()));
                        },
                        child: _submitButton()),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      alignment: Alignment.centerRight,
                      child: const Text('Forgot Password ?',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                    ),
                    _divider(),
                    _facebookButton(),
                    SizedBox(height: height * .055),
                    _createAccountLabel(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );

    return Theme(
      data: ThemeData(
        primaryColor: _primaryColor,
        textSelectionTheme: TextSelectionThemeData(
          selectionColor: _primaryColor.withAlpha(70),
          selectionHandleColor: _primaryColor,
          cursorColor: _primaryColor,
        ),
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: _primaryColor),
      ),
      child: content,
    );
  }

  double _getTextSize(String text) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(
          text: text,
          style: const TextStyle(
            fontSize: 16.0,
          )),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout();
    return textPainter.size.width;
  }
}

class _MyTextField extends StatefulWidget {
  const _MyTextField(
      {required this.labelText,
      this.obscureText = false,
      this.keyboardType,
      this.onHasFocus,
      this.onObscureText,
      this.onChanged});

  final String labelText;
  final bool obscureText;
  final TextInputType? keyboardType;

  final Function(bool isObscure)? onHasFocus;

  final Function(bool isObscure)? onObscureText;

  final Function(String text)? onChanged;

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<_MyTextField> {
  bool _isObscure = true;
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_refresh);
  }

  void _refresh() {
    if (_focusNode.hasFocus && widget.onHasFocus != null) {
      widget.onHasFocus?.call(_isObscure);
    }
    setState(() {});
  }

  @override
  void dispose() {
    _focusNode.removeListener(_refresh);
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Listener(
        onPointerDown: (e) => FocusScope.of(context).requestFocus(_focusNode),
        child: TextField(
          focusNode: _focusNode,
          style: const TextStyle(
            color: _textColor,
            fontSize: 16.0,
          ),
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            labelText: widget.labelText,
            labelStyle: TextStyle(
              color: _focusNode.hasFocus ? _primaryColor : _textColor,
            ),
            contentPadding: const EdgeInsets.only(left: 8.0),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: _textColor,
              ),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: _primaryColor,
              ),
            ),
            suffixIcon: widget.obscureText
                ? IconButton(
                    icon: Icon(
                      _isObscure ? Icons.visibility_off : Icons.visibility,
                      color: _focusNode.hasFocus ? _primaryColor : _textColor,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                      if (widget.onObscureText != null) {
                        widget.onObscureText?.call(_isObscure);
                      }
                    },
                  )
                : null,
          ),
          keyboardType: widget.keyboardType,
          obscureText: widget.obscureText ? _isObscure : widget.obscureText,
          onChanged: widget.onChanged,
        ),
      ),
    );
  }
}
