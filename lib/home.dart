// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? gender = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              
              SizedBox(
                width: 160,
                child: RadioListTile(
                    title: Text('Male'),
                    value: 'male',
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value.toString();
                      });
                    }),
              ),
              SizedBox(
                width: 160,
                child: RadioListTile(
                    title: Text('Female'),
                    value: 'female',
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value.toString();
                      });
                    }),
              ),
              SizedBox(
                width: 160,
                
                child: RadioListTile(
                    title: Text('Other'),
                    value: 'other',
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value.toString();
                      });
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
