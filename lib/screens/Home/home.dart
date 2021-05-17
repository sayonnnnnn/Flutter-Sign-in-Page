import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Column(
        children: [
          Container(
            height: 70,
            child: Center(
              child: Text(
                'Click Here to Open',
                // GalleryLocalizations.of(context).demoBottomSheetHeader,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const Divider(thickness: 1),
          Expanded(
            child: ListView.builder(
              itemCount: 21,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Home List'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class PersistentBottomSheetDemo extends StatefulWidget {
  @override
  _PersistentBottomSheetDemoState createState() =>
      _PersistentBottomSheetDemoState();
}

class _PersistentBottomSheetDemoState
    extends State<PersistentBottomSheetDemo> {
  VoidCallback _showBottomSheetCallback;

  @override
  void initState() {
    super.initState();
    _showBottomSheetCallback = _showPersistentBottomSheet;
  }

  void _showPersistentBottomSheet() {
    setState(() {
      // Disable the show bottom sheet button.
      _showBottomSheetCallback = null;
    });

    Scaffold.of(context)
        .showBottomSheet<void>(
          (context) {
            return Home();
          },
          elevation: 25,
        )
        .closed
        .whenComplete(() {
          if (mounted) {
            setState(() {
              // Re-enable the bottom sheet button.
              _showBottomSheetCallback = _showPersistentBottomSheet;
            });
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: _showBottomSheetCallback,
        child: Text('Show Home Buttons'),
      ),
    );
  }
}