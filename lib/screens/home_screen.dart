import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: const Text(
          'RideShare',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.person_outline),
            onPressed: () {
              // Navigate to Profile Screen
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Post Ride / Find Ride buttons
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // Navigate to Post Ride Screen
                    },
                    icon: const Icon(Icons.add_road),
                    label: const Text('Post a Ride'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(vertical: 20),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // Navigate to Find Ride Screen
                    },
                    icon: const Icon(Icons.search),
                    label: const Text('Find a Ride'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(vertical: 20),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Available Rides list
            Expanded(
              child: ListView(
                children: [
                  _rideCard(
                    driverName: 'John Doe',
                    route: 'Downtown to Airport',
                    dateTime: 'Today, 4:00 PM',
                    seats: 2,
                    price: 10,
                  ),
                  _rideCard(
                    driverName: 'Jane Smith',
                    route: 'City Center to Mall',
                    dateTime: 'Tomorrow, 10:00 AM',
                    seats: 3,
                    price: 15,
                  ),
                  // Add more rides here
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Ride card widget
  Widget _rideCard({
    required String driverName,
    required String route,
    required String dateTime,
    required int seats,
    required double price,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
      child: ListTile(
        title: Text(driverName, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('$route\n$dateTime • $seats Seats'),
        trailing: Text('\$$price', style: const TextStyle(fontWeight: FontWeight.bold)),
        onTap: () {
          // Navigate to Ride Details
        },
      ),
    );
  }
}
