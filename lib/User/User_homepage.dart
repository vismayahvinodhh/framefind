import 'package:flutter/material.dart';



class User_Homepg extends StatefulWidget {
  @override
  State<User_Homepg> createState() => _User_HomepgState();
}

class _User_HomepgState extends State<User_Homepg>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[300],
        title: Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search...',
              prefixIcon: const Icon(Icons.search, color: Colors.grey),
              suffixIcon: const Icon(Icons.filter_list, color: Colors.grey),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.all(10),
            ),
          ),
        ),
        leading:Image(image: AssetImage("assets/user1.png",),fit: BoxFit.cover,),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite, color: Colors.white),
            onPressed: () {
              // Favorites action
            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {
              // Notifications action
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                _buildPhotographerCard(
                  name: 'Name',
                  experience: '2+ years experience',
                  specialty: 'Newborn Shoots',
                ),
                const SizedBox(height: 16),
                _buildPhotographerCard(
                  name: 'Name',
                  experience: '1 year experience',
                  specialty: 'Portrait Shoots',
                ),
                const SizedBox(height: 16),
                _buildPhotographerCard(
                  name: 'Name',
                  experience: '1 year experience',
                  specialty: 'Wedding Shoots',
                ),
              ],
            ),
          ),
          Container(
            color: Colors.brown[200],
            child: TabBar(
              controller: _tabController,
              indicatorColor: Colors.white,
              indicatorWeight: 3,
              tabs: [
                Tab(
                  icon: const Icon(Icons.camera, color: Colors.brown),
                  child: Text(
                    'Photographers',
                    style: TextStyle(color: Colors.brown[900]),
                  ),
                ),
                Tab(
                  icon: const Icon(Icons.send, color: Colors.brown),
                  child: Text(
                    'Request',
                    style: TextStyle(color: Colors.brown[900]),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPhotographerCard({
    required String name,
    required String experience,
    required String specialty,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.brown, width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.brown.withOpacity(0.2),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey,
            child: Icon(Icons.person, size: 30, color: Colors.white),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                experience,
                style: TextStyle(color: Colors.brown[800]),
              ),
              const SizedBox(height: 4),
              Text(
                specialty,
                style: const TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
