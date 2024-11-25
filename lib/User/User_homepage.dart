import 'package:flutter/material.dart';
import 'package:framefind/User/User_notification.dart';
import 'package:framefind/User/User_wishlist.dart';

import 'User_profile.dart';

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
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return User_profile();
            },));
          },
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: ClipOval(
                child: Image.asset(
                  "assets/user-png-33842.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
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
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite, color: Colors.white),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return User_Wishlist();
              }));
            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return User_notification();
              },));
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
                Container(
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
                          child: Image(
                            image: AssetImage("assets/pg_profile.png"),
                            width: 80,
                            height: 80,
                            fit: BoxFit.contain,
                          )),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Name',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '2+ years experience',
                            style: TextStyle(color: Colors.brown[800]),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'Newborn Shoots',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Container(
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
                        child:
                        Image(image: AssetImage("assets/pg_profile.png")),
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Name',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '1 year experience',
                            style: TextStyle(color: Colors.brown[800]),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'Portrait Shoots',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Container(
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
                        child:
                        Image(image: AssetImage("assets/pg_profile.png")),
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Name',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '1 year experience',
                            style: TextStyle(color: Colors.brown[800]),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'Wedding Shoots',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
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
}
