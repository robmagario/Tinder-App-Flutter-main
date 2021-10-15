import 'package:flutter/material.dart';
import 'package:tinder_app_flutter/ui/widgets/bordered_text_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tinder_app_flutter/main.dart';
import 'package:tinder_app_flutter/ui/screens/terms_and_conditions_screen.dart';

class EmailAndPasswordScreen extends ConsumerWidget {
  final Function(String) emailOnChanged;
  final Function(String) passwordOnChanged;

  EmailAndPasswordScreen(
      {@required this.emailOnChanged, @required this.passwordOnChanged});

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final readTermsandConditions = watch(readTermsandConditionsProvider).state;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Email and',
          style: Theme.of(context).textTheme.headline3,
        ),
        Text(
          'Password is',
          style: Theme.of(context).textTheme.headline3,
        ),
        SizedBox(height: 25),
        BorderedTextField(
          labelText: 'Email',
          onChanged: emailOnChanged,
          keyboardType: TextInputType.emailAddress,
        ),
        SizedBox(height: 5),
        BorderedTextField(
          labelText: 'Password',
          onChanged: passwordOnChanged,
          obscureText: true,
        ),
    Row(
    children: [Checkbox(
      checkColor: Colors.yellow,

    value: context.read(readTermsandConditionsProvider).state,
    onChanged: (bool value) {

     context.read(readTermsandConditionsProvider).state=value;
    },
    ),
    new InkWell(
     child: Text(
    'I have read and accept terms and conditions',
    overflow: TextOverflow.ellipsis,
    ),
    onTap: () => Navigator.pushNamed(context, TermsandConditionsScreen.id),
     ),
    ])
      ],
    );
  }
}
