import 'package:demo_api/controllers/user_controller.dart';
import 'package:demo_api/models/user_model.dart';
import 'package:flutter/material.dart';

class UserView extends StatefulWidget {
  @override
  _UserViewState createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  late Future<UserModel> _futureUser;

  @override
  void initState() {
    super.initState();
    _futureUser = UserController().fetchRandomUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random User'),
      ),
      body: FutureBuilder<UserModel>(
        future: _futureUser,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final user = snapshot.data!;
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name: ${user.firstName} ${user.lastName}'),
                  Text('Username: ${user.username}'),
                  Text('Email: ${user.email}'),
                  Text('Gender: ${user.gender}'),
                  Text('Phone Number: ${user.phoneNumber}'),
                  Text('Date of Birth: ${user.dateOfBirth}'),
                  Text('Employment Title: ${user.employment['title']}'),
                  Text('Employment Key Skill: ${user.employment['key_skill']}'),
                  Text('City: ${user.address['city']}'),
                  Text('Street Address: ${user.address['street_address']}'),
                  Text('Zip Code: ${user.address['zip_code']}'),
                  Text('State: ${user.address['state']}'),
                  Text('Country: ${user.address['country']}'),
                  Text('Credit Card Number: ${user.creditCard['cc_number']}'),
                  Text('Subscription Plan: ${user.subscription['plan']}'),
                  Text('Subscription Status: ${user.subscription['status']}'),
                  Text(
                      'Subscription Payment Method: ${user.subscription['payment_method']}'),
                  Text('Subscription Term: ${user.subscription['term']}'),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
