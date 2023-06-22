import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Perfil extends StatefulWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  late UserData _userData;
  File? _profileImage;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _fetchUserData();
  }

  Future<void> _fetchUserData() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      final userData =
          await FirebaseFirestore.instance.collection('users').doc(user.uid).get();
      setState(() {
        _userData = UserData.fromMap(userData.data());
        _nameController.text = _userData.name;
        _emailController.text = _userData.email;
        _passwordController.text = _userData.password;
      });
    }
  }

  Future<void> _selectProfilePicture() async {
    final pickedImage = await ImagePicker().getImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _profileImage = File(pickedImage.path);
      });
    }
  }

  void _updateProfile() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      try {
        final profileData = {
          'name': _nameController.text.trim(),
          'email': _emailController.text.trim(),
          'password': _passwordController.text.trim(),
        };

        if (_profileImage != null) {
          // Upload the profile image to Firebase Storage and get the download URL
          final storageRef = FirebaseStorage.instance.ref().child('profile_images').child(user.uid);
          final uploadTask = storageRef.putFile(_profileImage!);
          final snapshot = await uploadTask.whenComplete(() => null);
          final downloadURL = await snapshot.ref.getDownloadURL();

          // Update the profile data with the download URL of the profile image
          profileData['profileImage'] = downloadURL;
        }

        // Update the user's profile data in Firestore
        await FirebaseFirestore.instance.collection('users').doc(user.uid).update(profileData);

        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Profile updated successfully.')));
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Failed to update profile.')));
        print(e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: _selectProfilePicture,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: _profileImage != null
                      ? FileImage(_profileImage!)
                      : (_userData.profileImage != null
                          ? NetworkImage(_userData.profileImage!)
                          : const AssetImage('assets/user.jpg')) as ImageProvider<Object>,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextField(
                    controller: _nameController,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Email',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextField(
                    controller: _emailController,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Password',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextField(
                    controller: _passwordController,
                    obscureText: true,
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: _updateProfile,
                    child: const Text('Update Profile'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserData {
  final String name;
  final String email;
  final String password;
  final String? profileImage;

  UserData({
    required this.name,
    required this.email,
    required this.password,
    this.profileImage,
  });

  factory UserData.fromMap(Map<String, dynamic>? map) {
    return UserData(
      name: map?['name'] ?? '',
      email: map?['email'] ?? '',
      password: map?['password'] ?? '',
      profileImage: map?['profileImage'],
    );
  }
}