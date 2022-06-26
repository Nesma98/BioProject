import 'package:flutter/material.dart';
import 'package:new_project/widget/bioCard.dart';

class BioScreen extends StatelessWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'BIO',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomEnd,
                colors: [
              Colors.blue.shade800,
              Colors.blue.shade200,
            ])),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage(
                  "images/nesma.jpg",
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'Nesma Bassam',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Gemunu',
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              const Text(
                'Title - Flutter Training',
                style: TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Gemunu',
                    fontSize: 15.0),
              ),
              const Divider(
                color: Colors.white,
                thickness: 0.7,
                indent: 20,
                endIndent: 20,
                height: 50,
              ),
              BioCard(
                leadingIcon: Icons.email,
                title: 'Email',
                subtitle: 'nesma2020s120@gmail.com',
                trailing: Icons.send,
                marginBottom: 15,
              ),
              // const SizedBox(
              //   height: 10.0,
              // ),
              BioCard(
                leadingIcon: Icons.android_outlined,
                title: 'Mobile',
                subtitle: '0592359516',
                trailing: Icons.call,
                marginBottom: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
