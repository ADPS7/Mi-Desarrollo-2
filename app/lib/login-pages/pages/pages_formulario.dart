import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:perfil/login-pages/widget/failure_widget.dart';
import 'package:perfil/success-pages/Cubit/cubit.dart';

import '../bloc/bloc.dart';
import '../Bloc/event.dart';
import '../Bloc/state.dart';
import '../cubit/cubit.dart';
import '../widget/loading_widget.dart';
import 'LoadingView.dart';
import 'ErrorView.dart';
import 'success.dart';

class ViewLogin extends StatelessWidget {
  const ViewLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeBloc(),
      child: const _LoginContent(),
    );
  }
}

class _LoginContent extends StatelessWidget {
  const _LoginContent({super.key});

  @override
  Widget build(BuildContext context) {
    final userController = TextEditingController();
    final passController = TextEditingController();

    return Scaffold(
      body: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          if (state is Correcto) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => BlocProvider(
                  create: (_) => MyCubit()..cargarCarro(), // ✅ Cubit inyectado
                  child: const Home(),
                ),
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is Cargando) {
            return const Loading();
          } else if (state is Error) {
            return Failure();
          }

          return Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("Login"),
                  const SizedBox(height: 10),
                  TextField(
                    controller: userController,
                    decoration: const InputDecoration(labelText: "Usuario"),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: passController,
                    obscureText: true,
                    decoration: const InputDecoration(labelText: "Contraseña"),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      context.read<HomeBloc>().add(
                            HomeSearchPressed(
                              userController.text,
                              passController.text,
                            ),
                          );
                    },
                    child: const Text("Entrar"),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
