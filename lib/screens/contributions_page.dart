import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:url_launcher/url_launcher.dart';

import 'voluntaryActivitiespage.dart';

class ContributionsPage extends StatelessWidget {
  final String location;

  const ContributionsPage({super.key, required this.location});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
         title: const Text('Contributions'),
          centerTitle: true,
      ),

      
      body: Container(
        color:  const Color.fromARGB(255, 170, 217, 255),
        child: Column(
          children: [
            
            Padding(
              padding:  const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DonateMoneyPage(location: location)),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    child: Text('Donate Money',
                    style: TextStyle( 
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      fontSize: 20,
                    )),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PublicVolunteeringFormPage(
                                location: location)),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    child: Text('Volunteer',
                    style: TextStyle( 
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                    ),),
                  ),],
                  ),
                ),


            const SizedBox(height: 80),

              Container(
              height: 400, 
              width: double.infinity,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
                 image: const DecorationImage(
                  image: 
                  AssetImage('assets/images/donate.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
         ),
        ),);
      }
       }

class DonateMoneyPage extends StatefulWidget {
  final String location;

  const DonateMoneyPage({super.key, required this.location});

  
  @override
  _DonateMoneyPageState createState() => _DonateMoneyPageState();
}

class _DonateMoneyPageState extends State<DonateMoneyPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _mobileNumberController =
      TextEditingController();
  final TextEditingController _transactionIdController =
      TextEditingController();

  final String donationPhoneNumber =
      '9182952053'; 

  Future<void> _openUPIPaymentApp() async {
    final String amount = _amountController.text;

    final Uri upiUri = Uri(
      scheme: 'upi',
      path: 'pay',
      queryParameters: {
        'pa': donationPhoneNumber, 
        'pn': 'Your Organization Name', 
        'amt': amount, 
      },
    );

    final String uriString = upiUri.toString();

    if (await canLaunch(uriString)) {
      await launch(uriString);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('No UPI apps found')),
      );
    }
  }

  Future<void> _submitDonation() async {
    String name = _nameController.text;
    String amount = _amountController.text;
    String mobileNumber = _mobileNumberController.text;
    String transactionId = _transactionIdController.text;

    if (name.isNotEmpty &&
        amount.isNotEmpty &&
        mobileNumber.isNotEmpty &&
        transactionId.isNotEmpty) {
      double donationAmount = double.tryParse(amount) ?? 0.0;
      await FirebaseFirestore.instance.collection('payments').add({
      'name': name,
      'amount': donationAmount,
      'mobileNumber': mobileNumber,
      'transactionId': transactionId,
      'location': widget.location,
      'timestamp': FieldValue.serverTimestamp(),
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Thank you for your donation!')),
        );

      _nameController.clear();
      _amountController.clear();
      _mobileNumberController.clear();
      _transactionIdController.clear();
    } 
    else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill all fields')),
      );
  }
     }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Donate Money')),
       body: SingleChildScrollView(
          child: Padding(
         padding:  const EdgeInsets.all(16.0),
           child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: _openUPIPaymentApp,
                style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                ),
                child: Text('UPI Pay'),
              ),
              const SizedBox(height: 10),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/your_image.png'),
                    fit: BoxFit.cover,
                  ),
                  ),
                ),
              const SizedBox(height: 20),
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Name'),
              ),
              TextField(
                controller: _amountController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Amount'),
              ),
              TextField(
                controller: _mobileNumberController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(labelText: 'Mobile Number'),
              ),
              TextField(
                controller: _transactionIdController,
                decoration: const InputDecoration(labelText: 'Transaction ID'),
                ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitDonation,
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: Text('Submit'),
              ),],
             ),
           ),
         ),);
          }
          
       }
