// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserRepository {
  static final List<User> items = [
    User(
      img: 'res/2.png', 
      name: 'Alen K.', 
      time: '16:00', 
      diagnosis: 'Common cold', 
      scheduledDay: 'today'
    ),

    User(
      img: 'res/3.png', 
      name: 'Amy F.', 
      time: '16:30', 
      diagnosis: 'Right Arm Pain', 
      scheduledDay: 'today'
    ),

    User(
      img: 'res/4.png', 
      name: 'Kim H.', 
      time: '16:30', 
      diagnosis: 'Covid 19', 
      scheduledDay: 'today'
    ),

    User(
      img: 'res/5.png', 
      name: 'Andy A.', 
      time: '08:00', 
      diagnosis: 'Common cold', 
      scheduledDay: 'tomorrow'
    ),

    User(
      img: 'res/6.png', 
      name: 'Bell B.', 
      time: '09:30', 
      diagnosis: 'Headache', 
      scheduledDay: 'tomorrow'
    ),

    User(
      img: 'res/7.png', 
      name: 'Fiona L.', 
      time: '10:10', 
      diagnosis: 'Covid 19', 
      scheduledDay: 'tomorrow'
    ),

    User(
      img: 'res/8.png', 
      name: 'Nezir B.', 
      time: '11:00', 
      diagnosis: 'Broken Heart', 
      scheduledDay: 'tomorrow'
    ),

    User(
      img: 'res/2.png', 
      name: 'Mujo M.', 
      time: "10:00", 
      diagnosis: 'Depression', 
      scheduledDay: 'prekosutra'
    ),

    User(
      img: 'res/3.png', 
      name: 'Petar P.', 
      time: '10:30', 
      diagnosis: 'Insomnia', 
      scheduledDay: 'prekosutra'
    ),

    User(
      img: 'res/4.png', 
      name: 'Vedran V.', 
      time: '11:00', 
      diagnosis: 'Broken arm', 
      scheduledDay: 'prekosutra'
    ),

    User(
      img: 'res/5.png', 
      name: 'Hajrudin H.', 
      time: '12:00', 
      diagnosis: 'Chest pain', 
      scheduledDay: 'prekosutra'
    )
  ];

  static final todayPatients = 
    items.where((element) => element.scheduledDay == 'today').toList();

  static final tomorrowPatients = 
    items.where((element) => element.scheduledDay == 'tomorrow').toList();

  static final otherPatients = 
    items.where((element) => element.scheduledDay == 'prekosutra').toList();
}

class User {
  String img = '';
  String name = '';
  String time = '';
  String diagnosis = '';
  String scheduledDay = '';

  User({
    required this.img,
    required this.name,
    required this.time,
    required this.diagnosis,
    required this.scheduledDay,
  });
}
