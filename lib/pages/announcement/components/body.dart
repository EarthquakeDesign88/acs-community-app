import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        Card(
          child: ListView(
            children: [
              Image.network(
                'https://images.unsplash.com/photo-1557804506-669a67965ba0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80',
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              const ListTile(
                title: Text('ประกาศสำคัญ 1'),
                subtitle: Text('รายละเอียด 1'),
              ),
               Image.network(
                'https://images.unsplash.com/photo-1546074177-ffdda98d214f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80',
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              const ListTile(
                title: Text('ประกาศสำคัญ 2'),
                subtitle: Text('รายละเอียด 2'),
              ),
              Image.network(
                'https://images.unsplash.com/photo-1559526324-c1f275fbfa32?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              const ListTile(
                title: Text('ประกาศสำคัญ 3'),
                subtitle: Text('รายละเอียด 3'),
              ),
            ],
          ),
        ),
        Card(
          child: ListView(
            children: [
              Image.network(
                'https://images.unsplash.com/photo-1601893211509-81b6d03e46a0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              const ListTile(
                title: Text('ข่าวสารทั่วไป 1'),
                subtitle: Text('รายละเอียด 1'),
              ),
               Image.network(
                'https://images.unsplash.com/photo-1634577004337-1df1fd52f914?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              const ListTile(
                title: Text('ข่าวสารทั่วไป 2'),
                subtitle: Text('รายละเอียด 2'),
              ),
              Image.network(
                'https://images.unsplash.com/photo-1628349407899-46565857ab55?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              const ListTile(
                title: Text('ข่าวสารทั่วไป 3'),
                subtitle: Text('รายละเอียด 3'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
