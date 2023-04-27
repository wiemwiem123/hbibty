import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  String _searchText = '';
  List<String> _data = [
    'Gabes',
    'Nabel',
    'Gbeli',
    'date',
  ];
  List<String> _searchResult = [];
  List<String> _searchResults() {
    return _data.where((content) => content.contains(_searchText)).toList();
  }

  void _onSearch(String query) {
    if (query.isEmpty) {
      setState(() {
        _searchResult.clear();
      });
      return;
    }

    List<String> searchResult = _data
        .where((item) => item.toLowerCase().contains(query.toLowerCase()))
        .toList();

    setState(() {
      _searchResult = searchResult;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onChanged: _onSearch,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: const Color.fromRGBO(239, 210, 125, 1),
            ),
            hintStyle: new TextStyle(color: Color(0xFFd0cece), fontSize: 18),
            hintText: "search",
          ),
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      body: _searchResult.length == 0
          ? Center(
              child: Text('No results'),
            )
          : ListView.builder(
              itemCount: _searchResult.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(_searchResult[index]),
                  onTap: () {
                    // Navigate to full content
                  },
                );
              },
            ),
    );
  }
}
