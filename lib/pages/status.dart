import 'package:curso/services/socket_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    final socketService = Provider.of<SocketService>(context);
    return Scaffold(
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Text('Status Page:${socketService.serverStatus}')])),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            socketService.emit('emitir-mensaje', {'nombre': 'Flutter', 'mensaje': 'Hola Mundo'});
          },
          child: const Icon(Icons.message),
        ));
  }
}
