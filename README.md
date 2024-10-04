# Appium Demo iOS

Este projeto é uma demonstração de automação de testes para o aplicativo de demonstração da Appium, utilizando o Robot Framework e o conceito de Page Objects. O objetivo é executar testes automatizados tanto em dispositivos iOS quanto Android, aproveitando a execução paralela com Pabot.

## Tecnologias Utilizadas

- **Appium**: Para automação de testes em dispositivos móveis.
- **Robot Framework**: Framework de automação de testes.
- **Pabot**: Para execução paralela de testes.
- **Python**: Linguagem de programação utilizada.
- **Node.js**: Ambiente de execução para o Appium.
- **Xcode**: IDE para desenvolvimento em iOS.
- **Android Studio**: IDE para desenvolvimento em Android.
- **Visual Studio Code**: Editor de código-fonte recomendado para desenvolvimento.


## Estrutura do Projeto

Abaixo está a estrutura do projeto e a descrição de cada diretório e arquivo:

| Diretório/Arquivo            | Descrição                                           |
|------------------------------|-----------------------------------------------------|
| `tests/`                     | Diretório contendo os casos de teste.              |
| `tests/android.robot`        | Casos de teste para a plataforma Android.          |
| `tests/ios.robot`            | Casos de teste para a plataforma iOS.              |
| `resources/`                 | Recursos adicionais para os testes.                |
| `resources/app/`             | Diretório contendo o aplicativo de demonstração.    |
| `resources/locators/`        | Diretório com arquivos que definem os localizadores (variables) de elementos  da interface. |
| `resources/pages/`           | Diretório que contém as classes(.resource) de Page Objects, que encapsulam a lógica de interação com a interface. |
| `reports/`                   | Diretório onde os relatórios dos testes serão gerados. |

## Conceito de Page Objects

O padrão Page Object é utilizado para estruturar os testes de maneira que a lógica de interação com a interface do usuário seja separada da lógica de teste. Cada página ou tela do aplicativo é representada por uma classe(.resource) que contém métodos (keywords) para interagir com os elementos (variables) da interface.

### Estrutura do Page Object

- **Locators**: Arquivos (variables) que definem os localizadores (XPaths, IDs, etc.) dos elementos da interface. Eles são utilizados nas classes de Page Objects para identificar os elementos com os quais o teste interage.
- **Page Objects**: Classes (.resource) que encapsulam a lógica para interagir com uma página específica do aplicativo. Cada método em um Page Object representa uma ação que pode ser realizada na página.

## Pré-requisitos

- [Node.js](https://nodejs.org/)
- [Python](https://www.python.org/)
- [Java JDK](https://www.oracle.com/java/technologies/javase-jdk11-downloads.html) (versão 11 ou superior)
- [Android Studio](https://developer.android.com/studio)
- [Xcode](https://developer.apple.com/xcode/) (para testes em iOS)
- [Visual Studio Code](https://code.visualstudio.com/) (editor de código-fonte recomendado)
- Appium e suas dependências instalados.
- Configurar os dispositivos/emuladores Android e iOS.

## Execução dos Testes

Para executar os testes, utilize o seguinte comando:

```bash
pabot --processes 2 --outputdir reports/ tests/
