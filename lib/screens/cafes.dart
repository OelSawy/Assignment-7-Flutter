import 'package:flutter/material.dart';

import '../core.dart';

class Cafes extends StatelessWidget {
  const Cafes({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cafesOffers.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {},
          onLongPress: () => showModalBottomSheet(
            context: context,
            builder: (context) {
              return SizedBox(
                height: 400,
                child: Text(cafesOffers[index]["name"]!)
              );
            },
          ),
          child: Container(
            height: 120,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.shade400
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(width: 20),
                Center(
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(cafesOffers[index]["image"]!)
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(cafesOffers[index]["name"]!, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text(cafesOffers[index]["type1"]!, style: TextStyle(fontSize: 14, color: Colors.grey.shade600)),
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Text(cafesOffers[index]["offer"]!),
                    )
                  ],
                ),
                const SizedBox(width: 10),
                Container(
                  height: 30,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Text(cafesOffers[index]["diraction"]!),
                ),
                const SizedBox(width: 20)
              ],
            ),
          ),
        );
      },
    );
  }
}