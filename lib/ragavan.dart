import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.fromLTRB(15, 40, 0, 0),
            child: Image.asset("assets/images/logo.png"),
          ),
          toolbarHeight: 120,
          backgroundColor: const Color.fromARGB(255, 213, 224, 232),
          title: const Padding(
            padding: EdgeInsets.fromLTRB(0, 40, 20, 0),
            child: Text(
              "Neopay",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 40, 20, 0),
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70),
                  border: Border.all(width: 0.5),
                ),
                child: const Icon(
                  Icons.notifications_none_rounded,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: 120,
              width: 400,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.zero,
                color: Color.fromARGB(255, 213, 224, 232),
              ),
            ),
            Positioned(
              top: 0,
              child: Container(
                height: 260,
                width: 350,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                      child: Text(
                        "Neo Cash Main Balance",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                          child: Text(
                            "\$",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[500],
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(5, 10, 0, 0),
                          child: Text(
                            "1,459.70",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(140, 10, 0, 0),
                          child: Icon(
                            Icons.remove_red_eye_outlined,
                            color: Colors.grey,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                    Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                            child: Text("Neopay Number",style: TextStyle(color: Colors.grey[500]),),
                          ),
                          const SizedBox(
                            width: 100,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                            child: Text("Neo Points",style: TextStyle(color: Colors.grey[500]),),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Text("**** **** **** 5324",style: TextStyle(color: Colors.black),),
                          ),
                          const SizedBox(
                            width: 90,
                          ),
                          Row(
                            children: [
                              Icon(MdiIcons.transitionMasked,size: 20,),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Text("320 Points",style: TextStyle(color: Colors.black),),
                              ),
                            ],
                          )
                        ],
                      ),
                    const SizedBox(height: 10),
                    const Divider(
                      color: Colors.grey,
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {},
                          label: const Text(
                            'Payment',
                            style: TextStyle(color: Colors.black),
                          ),
                          icon: Icon(MdiIcons.arrowTopRight),
                          style: ElevatedButton.styleFrom(
                            iconColor: Colors.black,
                            backgroundColor: const Color.fromARGB(255, 216, 255, 59),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            minimumSize: const Size(140, 45),
                            side: const BorderSide(
                              color: Color.fromARGB(255, 216, 255, 59),
                              width: 3,
                              style: BorderStyle.solid,
                            ),
                          ),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          label: const Text(
                            'Withdraw',
                            style: TextStyle(color: Colors.black),
                          ),
                          icon: Icon(MdiIcons.arrowBottomLeft),
                          style: ElevatedButton.styleFrom(
                            iconColor: Colors.black,
                            backgroundColor: const Color.fromARGB(255, 216, 255, 59),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            minimumSize: const Size(140, 45),
                            side: const BorderSide(
                              color: Color.fromARGB(255, 216, 255, 59),
                              width: 3,
                              style: BorderStyle.solid,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),


            Column(
              children: [
                const SizedBox(height: 300), 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        _buildCircularIcon(MdiIcons.currencyBtc),
                        const Text("Crypto"),
                      ],
                    ),
                    Column(
                      children: [
                        _buildCircularIcon(MdiIcons.wifi),
                        const Text("Internet"),
                      ],
                    ),
                    Column(
                      children: [
                        _buildCircularIcon(MdiIcons.shoppingOutline),
                        const Text("Shopping"),
                      ],
                    ),
                    Column(
                      children: [
                        _buildCircularIcon(Icons.flight),
                        const Text("Ticket"),
                      ],
                    ),
                    Column(
                      children: [
                        _buildCircularIcon(MdiIcons.transition),
                        const Text("Other"),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      "Recent Transaction",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(width: 80),
                    Text(
                      "Show More",
                      style: TextStyle(color: Colors.grey[600], fontSize: 14),
                    ),
                  ],
                ),

                Expanded(
                  child: ListView(
                    children: [
                      ListTile(
                        leading: Icon(MdiIcons.accountCircle, size: 45),
                        title: const Text(
                          'Transfer For Jason',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(
                          'March 18,2024',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              "+ \$230",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Text("Neo Cash", style: TextStyle(color: Colors.grey[500], fontSize: 12)),
                          ],
                        ),
                        onTap: () {},
                        
                      ),
                      ListTile(
                        leading: Icon(MdiIcons.accountCircle, size: 45),
                        title: const Text(
                          'Payment Figma Pro',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(
                          'March 17 2014',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              "- \$50",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Text("Neo Cash", style: TextStyle(color: Colors.grey[500], fontSize: 12)),
                          ],
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(MdiIcons.accountCircle, size: 45),
                        title: const Text(
                          'Transfer For Pat',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(
                          'March 15 2024',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              "+ \$150",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Text("Neo Cash", style: TextStyle(color: Colors.grey[500], fontSize: 12)),
                          ],
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 70,
                width: 430,
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildBottomBarItem(Icons.home, "Home", 1),
                    _buildBottomBarItem(Icons.qr_code, "Search", 2),
                    _buildBottomBarItem(Icons.notifications_outlined, "Message", 3),
                    _buildBottomBarItem(Icons.account_circle_outlined, "Me", 4),
                  ],
                ),
              ),
            ),
          ),
          ],
        ),
      );
  }

Widget _buildBottomBarItem(IconData icon, String label, int index) {
  bool isSelected = _selectedIndex == index;
  return GestureDetector(
    onTap: () => _onItemTapped(index),
    child: Container(
      height: 50,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: isSelected
          ? BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            )
          : null,
      child: Row(
        children: [
          Icon(
            icon,
            color: isSelected ? Colors.black : Colors.grey,
            size: 30,
          ),
          if (isSelected)
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                label,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
        ],
      ),
    ),
  );
  }
  }

  Widget _buildCircularIcon(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(12), 
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white, 
        border: Border.all(color: Colors.grey.withOpacity(0.5)), // Border color
      ),
      child: Icon(icon, size: 25),
    );
  }

