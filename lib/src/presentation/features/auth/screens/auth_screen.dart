import 'package:flutter/material.dart';
import 'package:golub/generated/l10n.dart';
import 'package:golub/src/presentation/ui_kit/ui.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16.0, horizontal: 32.0,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  s.authScreenTitle,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 12.0),
                Text(
                  s.authScreenDescription,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),

                Padding(
                  padding: const EdgeInsets.only(
                    top: 60.0,
                    bottom: 32.0,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20.0,
                        height: 20.0,
                        child: Checkbox(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0)
                          ),
                          side: const BorderSide(
                            color: Colors.black,
                            width: 1.0,
                          ),
                          checkColor: Colors.white,
                          //fillColor: MaterialStateProperty.resolveWith(getColor),
                          value: false,
                          onChanged: (bool? value) {
                            print('value');
                            print(value);
                          },
                        ),
                      ),
                      const SizedBox(width: 12.0),
                      Expanded(
                        child: Text(
                          'I agree to Terms & Conditions'
                           ' and Privacy Policy',
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            height: 1
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButtonWidget(
                  onPressed: () {
                    print('onPressed');
                  },
                  buttonLabel: s.authScreenButtonLabel,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
