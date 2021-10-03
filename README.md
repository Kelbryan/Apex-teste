## Aplicativo Básico em Oracle APEX

Este repositório contém uma aplicação básica, desenvolvida no Oracle APEX, na qual está implementada a autenticação e a autorização customizada, demonstrada em [Como fazer uma autenticação e autorização customizada no Oracle APEX](https://github.com/danmadeira/apex_auth_custom), incluindo o menu dinâmico e demais formulários de cadastros.

### O que é Oracle APEX?

O Oracle Application Express (APEX) é uma plataforma de desenvolvimento que permite criar aplicativos web escaláveis e seguros sem depender de muita codificação. Conta com as melhores funcionalidades e possui muitos recursos para qualquer tipo de aplicação.

Sua grande vantagem é que o desenvolvedor não precisa dedicar (ou perder) muito tempo para montar a estrutura básica de uma aplicação, partindo logo para o desenvolvimento específico da aplicação.

### Aplicativo exportado

Aqui, neste repositório, estão os scripts DDL e DML das estruturas e dados das tabelas e também os scripts da aplicação completa. Para importar o aplicativo em seu Espaço de Trabalho, basta carregar o único arquivo [f48056.sql](sql/f48056.sql?raw=true) na página de importação, pois este arquivo já contém todos os atributos do aplicativo.

Os demais arquivos exportados da aplicação são apenas os atributos separados. Caso queira uma importação fracionada.

Este aplicativo foi desenvolvido no Oracle APEX 21.1.2 e só será válido nas versões compatíveis a esta.

### Capturas das telas

![Página inicial](img/Screenshot_1_Inicio.png?raw=true)

![Relatório Interativo de Páginas](img/Screenshot_2_Paginas.png?raw=true)

![Relatório Interativo de Grupos](img/Screenshot_3_Grupos.png?raw=true)

![Relatório Interativo de Usuários](img/Screenshot_4_Usuarios.png?raw=true)

![Relatório Interativo de Menu](img/Screenshot_5_Menu.png?raw=true)

![Editar Item de Menu](img/Screenshot_6_Menu_Editar.png?raw=true)

### Como praticar?

Há três maneiras de usar a plataforma de desenvolvimento Oracle APEX. Uma é baixando os pacotes de instalação (Oracle Database + Oracle APEX + Oracle ORDS) e instalando-os em sua máquina. Outra é realizar uma assinatura gratuita do Always Free Oracle Autonomous Database, o qual fornece um ambiente pré-configurado no Oracle Cloud. A terceira opção, mais fácil e rápida, é solicitar um espaço de trabalho no serviço de avaliação do apex.oracle.com gratuito, pelo endereço: <https://apex.oracle.com/pls/apex/f?p=4700&p_lang=pt-br>

### Considerações

Este aplicativo serve como base para a construção de muitas outras aplicações web. Mas atente-se que, estes exemplos estão um tanto simplistas e não estão adotando, por exemplo, as boas práticas de segurança da informação, como senhas em hash etc. Desta forma, use apenas como base e aprimore conforme a necessidade. Felizmente, se necessitar adotar os padrões de desenvolvimento e de segurança, todas as soluções são de fácil implementação no Oracle APEX. O Oracle APEX possui uma estrutura muito bem montada e confiável.

### Referências

- GODFREY, J. et col. *Oracle Application Express API Reference, Release 21.1*. Oracle, July 2021.

- GODFREY, J.; JENNINGS, T. et col. *Oracle Application Express Administration Guide, Release 21.1*. Oracle, June 2021.

- GODFREY, J.; KONAKONDLA, H. et col. *Oracle Application Express SQL Workshop Guide, Release 21.1*. Oracle, May 2021.

- JENNINGS, T. et col. *Oracle Application Express App Builder User's Guide, Release 21.1*. Oracle, July 2021.

- Oracle. Oracle Application Express (APEX). Disponível em: <https://apex.oracle.com/pt-br/>

- Oracle. APEX Downloads. Disponível em: <https://www.oracle.com/tools/downloads/apex-downloads.html>

- Oracle. APEX - Para Começar. Disponível em: <https://apex.oracle.com/pt-br/learn/getting-started/>
