import 'package:flutter/material.dart';

void main() => runApp(const HomePage());

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Player UI',
      debugShowCheckedModeBanner: false,
      home: PlayerPage(),
    );
  }
}

class PlayerPage extends StatelessWidget {
  const PlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final pessoa = ValueNotifier<Pessoa>();
    print('atualizou o componente');

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.keyboard_arrow_down_rounded),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.list_rounded),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 32),
            Container(
              height: MediaQuery.sizeOf(context).height * 0.4,
              width: MediaQuery.sizeOf(context).width * 0.8,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 12,
                    spreadRadius: 0.1,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://picsum.photos/250?image=9',
                  fit: BoxFit.cover,
                  width: MediaQuery.sizeOf(context).width * 0.8,
                  height: MediaQuery.sizeOf(context).height * 0.5,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(width: 32),
                const FavoriteButton(),
                const SizedBox(width: 8),
                const Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Ciclano e Fulano',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                        ),
                      ),
                      Text(
                        'Fulano de Tal',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.more_vert_rounded),
                  onPressed: () {},
                ),
                const SizedBox(width: 32),
              ],
            ),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.skip_previous_rounded,
                    size: 48,
                  ),
                ),
                const SizedBox(width: 32),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(32),
                  child: const Icon(
                    Icons.play_circle_outline_rounded,
                    size: 64,
                  ),
                ),
                const SizedBox(width: 32),
                InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.skip_next_rounded,
                    size: 48,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    debugPrint('atualizou o componente botao');

    // pessoa = pessoa.nome = 'Fulano';

    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite_rounded : Icons.favorite_border_rounded,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}

// import 'package:flutter/material.dart';

// void main() => runApp(const HomePage());

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Contador de pessoas',
//       home: CounterPage(),
//     );
//   }
// }

// class CounterPage extends StatefulWidget {
//   const CounterPage({super.key});

//   @override
//   State<StatefulWidget> createState() => _CounterPageState();
// }

// class _CounterPageState extends State<CounterPage> {
//   static const buttonArea = 120.0;
//   static const buttonSize = buttonArea * 0.8;
//   static const iconSize = buttonSize / 2;
//   static const maxPeople = 4;
//   static final buttonStyle =
//       ElevatedButton.styleFrom(minimumSize: const Size(buttonSize, buttonSize));

//   int people = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: Colors.blue,
//         title: const Text(
//           'Contador de pessoas',
//           style: TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.w300,
//             fontSize: 20,
//           ),
//         ),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: <Widget>[
//           Expanded(
//             child: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   const SizedBox(height: 50),
//                   const Text(
//                     'Quantidade:',
//                     style: TextStyle(
//                       fontSize: 32,
//                       color: Colors.green,
//                     ),
//                   ),
//                   Text(
//                     '$people',
//                     textAlign: TextAlign.center,
//                     style: const TextStyle(
//                       fontSize: 54,
//                       color: Colors.green,
//                     ),
//                   ),
//                   const Divider(
//                     thickness: 1.2,
//                     color: Colors.white70,
//                     indent: 100,
//                     endIndent: 100,
//                   ),
//                   Container(
//                     margin: const EdgeInsets.symmetric(
//                       horizontal: 50,
//                       vertical: 12,
//                     ),
//                     padding: const EdgeInsets.all(20),
//                     decoration: BoxDecoration(
//                       color: Colors.black38,
//                       borderRadius: BorderRadius.circular(32),
//                     ),
//                     child: Text(
//                       people <= maxPeople ? 'Entre!' : 'Espere um pouco!',
//                       textAlign: TextAlign.center,
//                       style: const TextStyle(
//                         fontSize: 32,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           const Divider(),
//           SizedBox(
//             height: buttonArea,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                   style: buttonStyle,
//                   child: const Icon(
//                     Icons.remove_circle,
//                     size: iconSize,
//                     color: Colors.red,
//                   ),
//                   onPressed: () {
//                     if (people > 0) {
//                       setState(() {
//                         people--;
//                       });
//                     }
//                   },
//                 ),
//                 const SizedBox(width: 32),
//                 ElevatedButton(
//                   style: buttonStyle,
//                   child: const Icon(
//                     Icons.add_circle,
//                     size: iconSize,
//                     color: Colors.green,
//                   ),
//                   onPressed: () {
//                     if (people < maxPeople) {
//                       setState(() {
//                         people++;
//                       });
//                     }
//                   },
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 8),
//         ],
//       ),
//     );
//   }
// }
