import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: home()));
}

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            //pro always small and widget captial
            Image.network(
              'https://media.istockphoto.com/photos/dealer-new-cars-stock-picture-id480652712?b=1&k=20&m=480652712&s=170667a&w=0&h=dcmAjMGPXz8YFjCfhjJi8icIe-LGmOX6LuCaTXpyFJA=',
              fit: BoxFit.fitWidth,
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width * 1,
            ),

            SizedBox(
              height: 52,
            ),

            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Email',
                fillColor: Color.fromARGB(255, 177, 189, 196),
                filled: true,
              ),
              maxLength: 10,
              keyboardType: TextInputType.emailAddress,
            ),

            SizedBox(height: 12),

            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Password',
                suffixIcon: Icon(Icons.emoji_events),
              ),
              obscureText: true,
              //keyboardType: TextInputType.visiblePassword,
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {},
              child: Text('Sign in'),
              style: ElevatedButton.styleFrom(primary: Colors.red),
            ),
            SizedBox(height: 12),
            Text('Forgot password?')
          ],
        ),
      ),
    );
  }
}
