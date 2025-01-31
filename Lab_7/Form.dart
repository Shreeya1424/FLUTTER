import 'package:flutter/material.dart';

class ValidationFrom extends StatefulWidget {
  ValidationFrom({super.key, required Map<String, dynamic> userDetail});

  @override
  State<ValidationFrom> createState() => _ValidationFromState();
}

class _ValidationFromState extends State<ValidationFrom> {
   TextEditingController email = TextEditingController();

   TextEditingController phono = TextEditingController();

  TextEditingController name = TextEditingController();

   var fromKey = GlobalKey<FormState>();

   bool flag = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.blueAccent,
        title: Text('Home Page', style: TextStyle(color: Colors.black,),),
      ),
      body: flag?
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage("https://img.pikbest.com/png-images/20240527/birthday-frame-design-with-colorful-ballons-and-cake-_10585273.png!w700wp"),
                  fit: BoxFit.cover
                  )
                ),
              ),
            Align(alignment: Alignment.center,child: Text(name.text))
            ],
          )
          : Form(
        key: fromKey,

          child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            TextFormField(
              validator: (value){
                if(value!.isEmpty){
                  return 'please enter a something';
                }
                if(!RegExp(r'^[A-Z][a-z]+$').hasMatch(value)){
                  return 'please enter a valid name';
                }
              },

              controller: name,
              decoration: InputDecoration(
                hintText: 'Enter your name',
                labelText: 'Enter your name',
                labelStyle: TextStyle(color: Colors.red),
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Icon(
                    Icons.close,
                    size: 16,
                  ),
                ),
                fillColor: Colors.red,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              validator: (value){
                if(value!.isEmpty){
                  return 'please enter a something';
                }
                if(!RegExp(r"@gmail.com$")
                    .hasMatch(value)){
                  return 'please enter a valid email';
                }
              },
              controller: email,
        decoration: InputDecoration(
          hintText: 'Enter your email',
          labelText: 'Enter your email',
          labelStyle: TextStyle(color: Colors.red),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(
              Icons.close,
              size: 16,
            ),
          ),
          fillColor: Colors.red,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              validator: (value){
                if(value!.isEmpty){
                  return 'please enter a something';
                }
                if(!RegExp(r'^[0-9]{1,10}')
                    .hasMatch(value)){
                  return 'please enter a valid phone no';
                }
              },
              controller: phono,
              decoration: InputDecoration(
                hintText: 'Enter your phono',
                labelText: 'Enter your phono',
                labelStyle: TextStyle(color: Colors.red),
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Icon(
                    Icons.close,
                    size: 16,
                  ),
                ),
                fillColor: Colors.red,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: () {
              if(fromKey.currentState!.validate()){
                setState(() {
                  flag = true;
                });
              }
            }, child: Text('submit'))
          ],
        )
      ),
    );
  }
}
