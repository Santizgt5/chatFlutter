import 'package:flutter/material.dart';

class LabelsWidget extends StatelessWidget {
  final String ruta;

  final String primero;
  final String segundo;

  const LabelsWidget({Key key, @required this.ruta, @required this.primero, this.segundo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            primero,
            style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
                fontWeight: FontWeight.w300),
          ),
          SizedBox(height: 10),
          GestureDetector(
            child: Text(
              segundo,
              style: TextStyle(
                  color: Colors.blue[600],
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, this.ruta);
            },
          )
        ],
      ),
    );
  }
}
