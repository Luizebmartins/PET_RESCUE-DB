PET_RESCUE-DB
# Visão geral da aplicação e descrição das classes de usuário
O Pet Rescue é uma aplicação que visa facilitar o resgate de animais domésticos (cães, gatos, roedores, pássaros e répteis).  A aplicação funcionaria da seguinte forma: O usuário comum ao se deparar com um animal abandonado, pode utilizar a aplicação, que mostraria um mapa de abrigos para encontrar um abrigo próximo e levar o animal até ele. Ao ser deixado no abrigo, o responsável do local cadastraria o animal no banco de dados. Com isso, pessoas interessadas na adoção podem consultar uma lista de animais abrigados e contatar o responsável.

Os abrigos podem ser oferecidos por voluntários, que são pessoas comuns com interesse em oferecer sua casa como um lar temporário. Também podem ser disponibilizados por ONGs.

Há também a possibilidade de gerenciar consultas dos animais em clínicas veterinárias. A consulta pode ser feita antes do animal ser levado ao abrigo, sendo informado durante o cadastro. A consulta poderia também ser feita com o animal já abrigado, por parte do responsável do abrigo.

Outra funcionalidade seria um sistema de recompensas baseado em uma pontuação. Para pontuar é necessário que o usuário resgate um animal ou adote um animal. Um exemplo de recompensa seria um cupom de desconto em um pet-shop.

## Descrição das Classes de Usuário

*Usuário comum:* Este é o tipo de usuário padrão, contendo as informações essenciais para todos e garantindo o acesso mais básico na aplicação. Ele pode resgatar um animal e levar para algum abrigo(oferecido por um voluntário ou  por uma ONG). Ele recebe pontos para cada animal entregue no abrigo, esses mesmos pontos poderão ser trocados por recompensas.  

*Adotante:* Este usuário é aquele que tem o intuito de adotar um animal que se encontra em algum abrigo. 

*Voluntário:* Este usuário oferece algum local como abrigo temporário para um animal resgatado por alguém, sendo responsável por ele até adotarem o mesmo.

*Administrador:* Este usuário possui os mais altos privilégios do sistema e pode modificar quaisquer dados de: usuários, animais, clínicas veterinárias e abrigos. Cabe a ele também registrar no sistema os patrocinadores de recompensas oferecidas para os demais usuários, além de oferecer suporte técnico.

# Requisitos funcionais