import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.person_outline, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 220,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF1E88E5), Color(0xFF1976D2)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Stack(
              children: [
                Positioned.fill(
                  child: Opacity(
                    opacity: 0.08,
                    child: Image.network(
                      'https://maps.gstatic.com/tactile/basepage/pegman_sherpa.png',
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) => const SizedBox.shrink(),
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    'RideShare',
                    style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 40,
                  child: Icon(Icons.directions_car, color: Colors.white70, size: 28),
                ),
                Positioned(
                  right: 40,
                  top: 80,
                  child: Icon(Icons.local_taxi, color: Colors.white70, size: 26),
                ),
                Positioned(
                  right: 24,
                  bottom: 24,
                  child: Icon(Icons.location_on, color: Colors.redAccent, size: 28),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 92,
                    decoration: BoxDecoration(
                      color: const Color(0xFF1976D2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.add_road, color: Colors.white, size: 28),
                          SizedBox(height: 8),
                          Text('Post a Ride', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Container(
                    height: 92,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.search, color: Color(0xFF1976D2), size: 28),
                          SizedBox(height: 8),
                          Text('Find a Ride', style: TextStyle(color: Color(0xFF1976D2))),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Available Rides', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text('See all', style: TextStyle(color: Colors.blue)),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
              ],
            ),
          ),
        ],
      ),
    );
  }

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
        onTap: () {},
      ),
    );
  }
}
