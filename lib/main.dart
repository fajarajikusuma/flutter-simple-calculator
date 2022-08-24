import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Simple Calculator'),
        ),
        body: Column(
          children: [
            InputSection(),
            SizedBox(
              width: double.infinity,
              height: 1,
              child: ColoredBox(color: Theme.of(context).colorScheme.secondary),
            ),
            KeyboardSection(),
          ],
        ));
  }
}

// Result Section
class InputSection extends StatelessWidget {
  const InputSection({
    Key? key,
  }) : super(key: key);

  static final ValueNotifier<String> input = ValueNotifier<String>('');

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: ValueListenableBuilder(
              valueListenable: input,
              builder: (_, String value, __) {
                return Text(
                  (value.isEmpty ? '0' : value),
                  style: TextStyle(
                    fontSize: 90,
                    fontWeight: FontWeight.w700,
                  ),
                );
              }),
        ),
      ),
    );
  }
}

// Button Section
class KeyboardSection extends StatelessWidget {
  const KeyboardSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Column(
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                childWidget(
                  onPressed: () {
                    InputSection.input.value += '(';
                  },
                  child: const Text(
                    '(',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                childWidget(
                  onPressed: () {
                    InputSection.input.value += ')';
                  },
                  child: const Text(
                    ')',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                childWidget(
                  onPressed: () {
                    final String value = InputSection.input.value;
                    if (value.isEmpty) {
                      InputSection.input.value = '';
                    } else {
                      InputSection.input.value =
                          value.substring(0, value.length - 1);
                    }
                  },
                  child: const Icon(Icons.backspace_outlined),
                ),
                childWidget(
                  onPressed: () {
                    InputSection.input.value = '';
                  },
                  child: const Text(
                    'C',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                childWidget(
                  onPressed: () {
                    InputSection.input.value += '7';
                  },
                  child: const Text(
                    '7',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                childWidget(
                  onPressed: () {
                    InputSection.input.value += '8';
                  },
                  child: const Text(
                    '8',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                childWidget(
                  onPressed: () {
                    InputSection.input.value += '9';
                  },
                  child: const Text(
                    '9',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                childWidget(
                  onPressed: () {
                    final String value = InputSection.input.value;
                    if (value.isEmpty) {
                      InputSection.input.value = '';
                    } else {
                      InputSection.input.value += '/';
                    }
                  },
                  child: const Text(
                    '/',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                childWidget(
                  onPressed: () {
                    InputSection.input.value += '4';
                  },
                  child: const Text(
                    '4',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                childWidget(
                  onPressed: () {
                    InputSection.input.value += '5';
                  },
                  child: const Text(
                    '5',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                childWidget(
                  onPressed: () {
                    InputSection.input.value += '6';
                  },
                  child: const Text(
                    '6',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                childWidget(
                  onPressed: () {
                    final String value = InputSection.input.value;
                    if (value.isEmpty) {
                      InputSection.input.value = '';
                    } else {
                      InputSection.input.value += '*';
                    }
                  },
                  child: const Text(
                    'x',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                childWidget(
                  onPressed: () {
                    InputSection.input.value += '1';
                  },
                  child: const Text(
                    '1',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                childWidget(
                  onPressed: () {
                    InputSection.input.value += '2';
                  },
                  child: const Text(
                    '2',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                childWidget(
                  onPressed: () {
                    InputSection.input.value += '3';
                  },
                  child: const Text(
                    '3',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                childWidget(
                  onPressed: () {
                    InputSection.input.value += '-';
                  },
                  child: const Text(
                    '-',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                childWidget(
                  onPressed: () {
                    InputSection.input.value += '.';
                  },
                  child: const Text(
                    '.',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                childWidget(
                  onPressed: () {
                    InputSection.input.value += '0';
                  },
                  child: const Text(
                    '0',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                childWidget(
                  onPressed: () {
                    final String sameValue = InputSection.input.value;
                    if (sameValue.isEmpty) {
                      InputSection.input.value = '';
                    } else {
                      final String value = Parser()
                          .parse(InputSection.input.value)
                          .evaluate(EvaluationType.REAL, ContextModel())
                          .toString();
                      String newValue = '';
                      if (value[value.length - 1] == '0' &&
                          value[value.length - 2] == '.') {
                        for (var i = 0; i < value.length - 2; i++) {
                          newValue += value[i];
                        }
                      } else {
                        newValue = value;
                      }
                      InputSection.input.value = newValue;
                    }
                  },
                  child: const Text(
                    '=',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                childWidget(
                  onPressed: () {
                    final String value = InputSection.input.value;
                    if (value.isEmpty) {
                      InputSection.input.value = '';
                    } else {
                      InputSection.input.value += '+';
                    }
                  },
                  child: const Text(
                    '+',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class childWidget extends StatelessWidget {
  const childWidget({
    Key? key,
    required this.child,
    required this.onPressed,
  }) : super(key: key);

  final Function()? onPressed;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
