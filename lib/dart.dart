void main() {
  final pessoa = Pessoa(
    nome: 'João',
    idade: 20,
    altura: 1.80,
    nomes: ['Maria', 'José'],
    informacoes: {
      'email': 'soufeliposales@gmail.com',
      'peso': 'fulano',
      'endereco': {
        'rua': 'Rua 1',
        'numero': 10,
      },
    },
  );

  print(pessoa.nome);
  print(pessoa.isMaiorDeIdade);

  pessoa.calcularIMC();

  print(pessoa.calcularIMC2());
}

class Pessoa {
  // Tipos
  // num; double; int.
  // String; bool; dynamic; null; Map; List; Never;

  Pessoa({
    required this.nome,
    required this.idade,
    required this.altura,
    required this.nomes,
    required this.informacoes,
  });

  final String nome;
  final int idade;
  final double altura;
  final List<String> nomes;
  final Map<String, dynamic> informacoes;

  // final dynamic doido;

  // doido = 1;
  // doido = 'felipe';
  // Any

  bool get isMaiorDeIdade => idade >= 18;

  void calcularIMC() {
    final peso = informacoes['peso'];
    final altura = this.altura;
    final imc = peso / (altura * altura);

    print('IMC: $imc');
  }

  double calcularIMC2() {
    final peso = informacoes['peso'] as int;
    final altura = this.altura;
    final imc = peso / (altura * altura);

    return imc;
  }
}
