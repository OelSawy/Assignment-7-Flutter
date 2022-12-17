import 'package:flutter/material.dart';

enum Choices {
  all,
  fastfood,
  coffee,
}

class TopBar extends StatefulWidget {
  const TopBar({ Key? key }) : super(key: key);

  @override
  createState() => _TopBar();
}

class _TopBar extends State<TopBar> {
  Choices current = Choices.all;
  @override
  Widget build(BuildContext context){
  final screenSize = MediaQuery.of(context).size;
    return AppBar(
      title: const Text("Restaurants and Cafes", style: TextStyle(fontSize: 22)),
      centerTitle: true,
      backgroundColor: Colors.teal,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.arrow_back)
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(80), 
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 15),
                padding: const EdgeInsets.only(left: 10),
                width: screenSize.width *0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white
                ),
                child: const TextField(
                  textAlign: TextAlign.center,
                  cursorWidth: double.maxFinite,
                  decoration: InputDecoration(
                    icon: Icon(Icons.search, size: 30),
                    labelText: "Search for food here",
                    border: InputBorder.none
                  )
                )
              ),
              Container(
                color: Colors.white,
                height: 50,
                width: double.infinity,
                child: TabBar(
                  onTap: (value) {
                    value == 0 ? current = Choices.all : value == 1 ? current = Choices.fastfood : current = Choices.coffee;
                    setState(() {});
                  },
                  isScrollable: false,
                  indicatorColor: Colors.transparent,
                  tabs: [
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: current == Choices.all ? Colors.blueGrey.shade900 : Colors.grey.shade300
                      ),
                      child: const Text("All", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: current == Choices.fastfood ? Colors.blueGrey.shade900 : Colors.grey.shade300
                      ),
                      child: const Text("FastFood", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: current == Choices.coffee ? Colors.blueGrey.shade900 : Colors.grey.shade300
                      ),
                      child: const Text("Cafes", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
                    )
                  ],
                )
              )
            ],
          ),
        )
      );
  }
}