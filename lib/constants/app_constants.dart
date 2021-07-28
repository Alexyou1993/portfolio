import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widget_barrel.dart';

class ResumeModel {
  const ResumeModel({required this.period, required this.title, required this.place, required this.description});

  final String period;
  final String title;
  final String place;
  final String description;


}


class ContactMeModel {
  const ContactMeModel({required this.title, required this.userName, required this.icon, required this.onClick});
  final String title;
  final String userName;
  final IconData icon;
  final void Function() onClick;


}

const List<ResumeModel> kEducation = [
  ResumeModel(
      period: '2018-2021',
      title: 'Facultate - Universitatea Tehnică din Cluj-Napoca - Centrul Universitar Nord din Baia Mare',
      place: 'Baia Mare',
      description:
      ''),
  ResumeModel(
      period: '2013-2014',
      title: 'Facultate - Universitatea Babeș-Bolyai',
      place: 'Cluj Napoca',
      description:
      ''),
  ResumeModel(
      period: '2009-2013',
      title: 'Liceul Teoretic Ioan Buteanu',
      place: 'Somcuta Mare',
      description:
      ''),
];

const List<ResumeModel> kExperience = [
  ResumeModel(
      period: 'IAN 2021 - MAI 2021',
      title: 'Flutter  Developer',
      place: 'Upcode Baia Mare',
      description:
      ''),
  ResumeModel(
      period: 'AUG 2015 - FEB 2018',
      title: 'Quality Controller',
      place: 'UACE Universal Alloy Corporation',
      description:
      ''),
];


const List<String> kWorksAssets = [
  'assets/ss1.png',
  'assets/ss2.png',
  'assets/ss3.png',
  'assets/ss4.png',
  'assets/ss5.png',
  'assets/ss6.png',
  'assets/ss7.png',
  'assets/ss8.png',
  'assets/ss9.png',
  'assets/ss10.png',
  'assets/ss11.png',
  'assets/ss12.png',
  'assets/ss13.png',
  'assets/ss14.png',
  'assets/ss15.png',
  'assets/ss16.png',
  'assets/ss17.png',
  'assets/ss18.png',
  'assets/ss19.png',
  'assets/ss20.png',
  'assets/ss21.png',
  'assets/ss22.png',
  'assets/ss23.png',
  'assets/ss24.png',
  'assets/ss25.png',
  'assets/ss26.png',
  'assets/ss27.png',
  'assets/ss28.png',
  'assets/ss29.png',
  'assets/ss30.png',
  'assets/ss31.png',
  'assets/ss32.png',
  'assets/ss32a.png',
  'assets/ss33.png',
  'assets/ss34.png',
  'assets/ss35.png',
  'assets/ss36.png',
  'assets/ss37.png',
  'assets/ss38.png',
  'assets/ss39.png',
  'assets/ss40.png',
  'assets/ss41.png',
  'assets/ss42.png',
];

List<ContactMeModel> kContactMe = [
  ContactMeModel(
      title: 'Email Address',
      userName: 'alexiura93@gmail.com',
      icon: Icons.mail_rounded,
      onClick: () async {
        await launch(
            'https://mail.google.com/mail/?view=cm&fs=1&to=alexiura93@gmail.com&su=&body=');
      }),
  ContactMeModel(
      title: 'Facebook',
      userName: 'IuraAlexandruMihai',
      icon: FontAwesome.facebook_f,
      onClick: () async {
        await launch('https://www.facebook.com/iura.mihai/');
      }),
  ContactMeModel(
      title: 'Github',
      userName: 'alexyou93',
      icon: FontAwesome.github,
      onClick: () async {
        await launch('https://github.com/Alexyou1993');
      }),
  ContactMeModel(
      title: 'LinkedIn',
      userName: 'Iura Alexandru Mihai',
      icon: FontAwesome.linkedin,
      onClick: () async {
        await launch('https://www.linkedin.com/in/iura-alexandru-mihai-3961a6116//');
      }),

];