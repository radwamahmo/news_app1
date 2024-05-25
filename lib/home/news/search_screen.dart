import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Align(
          alignment: Alignment.topCenter,
          child: InkWell(
            onTap: () {},
            radius: 120,
            splashColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
            highlightColor: Colors.transparent,
            borderRadius: BorderRadius.circular(30),
            child: Container(
              height: 56,
              width: 360,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Theme.of(context)
                    .colorScheme
                    .primaryContainer
                    .withOpacity(0.5),
              ),
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 3),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu_outlined),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 60),
                    child: Text(
                      'Hinted search text',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 310),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
