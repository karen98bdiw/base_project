import 'package:flutter/material.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(),
    );
  }
}

// class _List extends StatelessWidget {
//   const _List({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Consumer<BaseProvider>(
//       builder: (c, p, ch) =>
//           p.isLoading ? CircularProgressIndicator() : ListView(),
//     );
//   }
// }