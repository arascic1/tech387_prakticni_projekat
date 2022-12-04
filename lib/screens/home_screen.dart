import 'package:arascic_exam_app/data/credentials.dart';
import 'package:arascic_exam_app/data/users.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ListTile(
                leading: Image.asset('res/Vector.png', width: 157, height: 32),
                trailing: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context, 
                      builder: (ctx) => AlertDialog(
                        title: const Text('Log Out', style: TextStyle(fontSize: 30)),
                        content: const Text('Are you sure you want to log out from the console?'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.of(ctx).pop(), 
                            child: const Text('Cancel')
                          ), 
                          TextButton(
                            onPressed: () => Navigator.popAndPushNamed(ctx, '/auth'), 
                            child: const Text('Yes')
                          )
                        ]
                      )
                    );
                  },
                  child: const Icon(Icons.logout, color: Colors.black),
                )
              ),

              const SizedBox(height: 20),

              ListTile(
                leading: Image.asset('res/1.png'),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'My profile', 
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                      ) 
                    ),
                    Text(
                      Credentials.name,
                      style: TextStyle(
                        fontSize: 25, 
                        fontWeight: FontWeight.bold
                      )
                    )
                  ]
                )
              ),

              const SizedBox(height: 30),

              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Patient list for today',
                  style: TextStyle(
                    fontSize: 15
                  )
                ),
              ),

              // lista
              ListView.builder(
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  final item = UserRepository.todayPatients[index];
                  
                  return ListTile(
                    leading: Image.asset(item.img, width: 40, height: 40),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.name, 
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500
                          ) 
                        ),
                        Text(
                          '${item.time} • ${item.diagnosis}',
                          style: const TextStyle(
                            fontSize: 15, 
                            fontWeight: FontWeight.bold
                          )
                        )
                      ]
                    )
                  );
                }
              ),

              const SizedBox(height: 30),

              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Tomorrow',
                  style: TextStyle(
                    fontSize: 15
                  )
                ),
              ),

              // lista
              ListView.builder(
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  final item = UserRepository.tomorrowPatients[index];
                  
                  return ListTile(
                    leading: Image.asset(item.img, width: 40, height: 40),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.name, 
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500
                          ) 
                        ),
                        Text(
                          '${item.time} • ${item.diagnosis}',
                          style: const TextStyle(
                            fontSize: 15, 
                            fontWeight: FontWeight.bold
                          )
                        )
                      ]
                    )
                  );
                }
              ),

              const SizedBox(height: 30),

              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'In two days',
                  style: TextStyle(
                    fontSize: 15
                  )
                ),
              ),

              ListView.builder(
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  final item = UserRepository.otherPatients[index];
                  
                  return ListTile(
                    leading: Image.asset(item.img, width: 40, height: 40),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.name, 
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500
                          ) 
                        ),
                        Text(
                          '${item.time} • ${item.diagnosis}',
                          style: const TextStyle(
                            fontSize: 15, 
                            fontWeight: FontWeight.bold
                          )
                        )
                      ]
                    )
                  );
                }
              ),
            ]
          ),
        )
      )
    );
  }
}