import 'package:flutter/material.dart';
import '../components/sidenav.dart';
import 'package:flutter/gestures.dart';

class Donate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text('Δωρεές'),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: Image.asset(
              'assets/images/puppy-giving-paw.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                        text:
                            'Με την υποστήριξή σας, μπορούμε να σώσουμε περισσότερα πλάσματα και να τους προσφέρουμε ένα ασφαλες περιβάλλον γεμάτο αγάπη.\n\n'
                            'Τα έξοδα για νοσηλείες, τροφές, φάρμακα και μεταφορές αυξάνονται καθημερινά όμως κάθε δωρεά σας μας επιτρέπει να συνεχίσουμε το έργο μας.\nΒοηθήστε μας να δώσουμε σε κάθε σκυλάκι το δικαίωμα σε μια καλύτερη ζωή.\n\n'
                            'Εάν δεν μπορείτε να συνεισφέρετε οικονομικά, παρακαλούμε ελέξτε τα'),
                    TextSpan(
                      text: ' δρομολόγια ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushNamed(context, '/donate');
                        },
                    ),
                    TextSpan(
                        text:
                            ' που εξυπηρετούν κάποιο ζωάκι που έχει βρει υοθεσία ή φιλοξενία. Εκτιμάμε εξίσου κάθε βοήθεια στο να φτάσουν στο σπίτι τους!'),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
