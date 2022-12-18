import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_provider/widgets/HomeWidget.dart';
import 'package:flutter_provider/widgets/SavedWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Flutter Provider", style: TextStyle(color: Colors.white, fontSize: 20),),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            TabBar(
              controller: _tabController,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
                color: Colors.red,
              ),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              tabs: const [
                Tab(text: "Home",),
                Tab(text: "Saved",),
              ],
            ),
            Expanded(
              child: Padding(padding: const EdgeInsets.only(top: 10),
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    const Center(
                      child: HomeWidget(),
                    ),
                    Center(
                      child: SavedWidget(),
                    ),
                  ],
                ),),
            )
          ],
        ),
      ),
    );
  }
}
