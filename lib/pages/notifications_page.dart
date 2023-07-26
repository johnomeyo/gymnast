import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  List<String> notifications = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.grey.shade200,
          centerTitle: true,
          title: Text(
            "Notifications",
            style: GoogleFonts.lato(
                textStyle: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
          ),
          elevation: 0,
        ),
        body: notifications.isEmpty
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 200,
                      child: Image.asset(
                        "assets/oops.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Oops!! There's nothing here yet",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    )
                  ],
                ),
              )
            : ListView.builder(
                itemCount: notifications.length,
                itemBuilder: (context, index) => ListTile(
                      title: Text(notifications[index]),
                    )),
        floatingActionButton: 
            Visibility(
              visible: notifications.isNotEmpty,
              child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  onPressed: () {
                    setState(() {
                      notifications = [];
                    });
                  },
                  child: Text(
                    "clear",
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500)),
                  ),
                ),
            )
             );
  }
}
