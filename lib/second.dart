import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SecondScreen extends StatelessWidget{
  String introduction = 'Hey there, my name is Mykyta, I’m 18 years old, I am a ambitious  and fast learner individual with a great passion for the IT industry, and on this page you can read more about me.';
  String edu = 'Education: \n\t At this year I am graduated college of Chernivtsi National University, faculty of mathematics with a specialization technician-programmer where in process of education I had experience of work with C, C++, Python, Sql. Also I’ve had passed courses JavaRush with a big practice base and course “Java: Solving problems with software” of Duke University.';
  String hobby = 'Hobbies: \n\tI\'m like hiking, reading(favourite author is Asic Azimov), music and skiing.';
  String task = 'About this task: \n\tThat\'s was my first experience with a mobile development, but it looks very interesting and perspective for me, so  I want to moving on at this sphere, and I will be proud if I will be a part of your team and will take a part in development of  interesting projects.\t\nI will wait for your feedback';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('About me')),
        body: myLayoutWidget(),
        bottomNavigationBar:new BottomNavigationBar(
        items: [
         new BottomNavigationBarItem(
            icon: new IconButton(
                icon: new Icon(FontAwesomeIcons.linkedin),
                onPressed: _launchLinkedIn),
            title: new Text('LinkedIn'),
          ),
          new BottomNavigationBarItem(
            icon: new IconButton(
                icon: new Icon(FontAwesomeIcons.instagram),
                onPressed: _launchInstagram),
            title: new Text('Instagram'),
          ),
         new BottomNavigationBarItem(
              icon: new IconButton(
                  icon: new Icon(FontAwesomeIcons.telegram),
                  onPressed: _launchTelegram),
              title: Text('Telegram')
          ),
        ],
    ),
      );

  }
  Widget myLayoutWidget(){
    return new ListView(
      children: [
        new Text(
            introduction,
        style: new TextStyle(fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
        fontSize: 28),
        ),
        new Divider(),
        new Text(
          edu,
          style: new TextStyle(fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              fontSize: 24),
        ),
        new Divider(),
        new Text(
          hobby,
          style: new TextStyle(fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              fontSize: 24),
        ),
        new Divider(),
        new Text(
          task,
          style: new TextStyle(fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              fontSize: 24),
        ),
        new Divider(height: 80.0),
        new Center(
          child: new Text('3 DAYS OF FLUTTER EXPERIENCE LOOKS LIKE...',
            style: new TextStyle(fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ),
        ),
        new Divider(),
        new Image.asset(
          'assets/images/171.jpg',
          fit: BoxFit.cover,
        )
      ],
    );

  }
  /*_launchGitHub() async {
    const url = 'https://github.com/DesmondMails';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }*/
  _launchInstagram() async{
    const url = 'https://www.instagram.com/foxmikita/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  _launchTelegram() async {
    const url = 'https://t.me/Mikita_Budeychuk';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  _launchLinkedIn() async {
    const url = 'https://www.linkedin.com/in/budeychuk-mykyta-bb1aba1b1/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }



}