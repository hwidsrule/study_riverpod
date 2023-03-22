import 'package:flutter/material.dart';
import 'package:study_riverpod/layout/default_layout.dart';
import 'package:study_riverpod/screen/auto_dispose_modifier_screen.dart';
import 'package:study_riverpod/screen/code_generation_screen.dart';
import 'package:study_riverpod/screen/family_modifier_screen.dart';
import 'package:study_riverpod/screen/future_provider_screen.dart';
import 'package:study_riverpod/screen/listen_provider_screen.dart';
import 'package:study_riverpod/screen/provider_screen.dart';
import 'package:study_riverpod/screen/select_provider_screen.dart';
import 'package:study_riverpod/screen/state_notifier_provider_screen.dart';
import 'package:study_riverpod/screen/state_provider_screen.dart';
import 'package:study_riverpod/screen/stream_provider_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'HomeScreen',
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const StateProviderScreen(),
              ));
            },
            child: const Text('State Provider Screen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const StateNotifierProviderScreen(),
              ));
            },
            child: const Text('State Notifier Provider'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const FutureProviderScreen(),
              ));
            },
            child: const Text('Future Provider Screen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const StreamProviderScreen(),
              ));
            },
            child: const Text('Stream Provider Screen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const FamilyModifierScreen(),
              ));
            },
            child: const Text('Family Modifier Provider Screen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const AutoDisposeModifierScreen(),
              ));
            },
            child: const Text('Auto Dispose Modifier Screen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const ListenProviderScreen(),
              ));
            },
            child: const Text('Listen Provider Screen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const SelectProviderScreen(),
              ));
            },
            child: const Text('Select Provider Screen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const ProviderScreen(),
              ));
            },
            child: const Text(' Provider Screen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const CodeGenerationScreen(),
              ));
            },
            child: const Text(' Code Generation Screen'),
          ),
        ],
      ),
    );
  }
}
