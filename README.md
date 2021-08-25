PET_RESCUE-DB
# Visão geral da aplicação e descrição das classes de usuário
<p align="justify">
O Pet Rescue é uma aplicação que visa facilitar o resgate de animais domésticos (cães, gatos, roedores, pássaros e répteis).  A aplicação funcionaria da seguinte forma: O usuário comum ao se deparar com um animal abandonado, pode utilizar a aplicação, que mostraria um mapa de abrigos para encontrar um abrigo próximo e levar o animal até ele. Ao ser deixado no abrigo, o responsável do local cadastraria o animal no banco de dados. Com isso, pessoas interessadas na adoção podem consultar uma lista de animais abrigados e contatar o responsável.
</p>
<p align="justify">
Os abrigos podem ser oferecidos por voluntários, que são pessoas comuns com interesse em oferecer sua casa como um lar temporário. Também podem ser disponibilizados por ONGs.
</p>
<p align="justify">
Há também a possibilidade de gerenciar consultas dos animais em clínicas veterinárias. A consulta pode ser feita antes do animal ser levado ao abrigo, sendo informado durante o cadastro. A consulta poderia também ser feita com o animal já abrigado, por parte do responsável do abrigo.
</p>
<p align="justify">
Outra funcionalidade seria um sistema de recompensas baseado em uma pontuação. Para pontuar é necessário que o usuário resgate um animal ou adote um animal. Um exemplo de recompensa seria um cupom de desconto em um pet-shop.  
</p>


## Descrição das Classes de Usuário
<p align="justify">
*Usuário comum:* Este é o tipo de usuário padrão, contendo as informações essenciais para todos e garantindo o acesso mais básico na aplicação. Ele pode resgatar um animal e levar para algum abrigo(oferecido por um voluntário ou  por uma ONG). Ele recebe pontos para cada animal entregue no abrigo, esses mesmos pontos poderão ser trocados por recompensas.
</p>  
<p align="justify">
**Adotante:** Este usuário é aquele que tem o intuito de adotar um animal que se encontra em algum abrigo. 
</p>
<p align="justify">
**Voluntário:** Este usuário oferece algum local como abrigo temporário para um animal resgatado por alguém, sendo responsável por ele até adotarem o mesmo.
</p>
<p align="justify">
**Administrador:** Este usuário possui os mais altos privilégios do sistema e pode modificar quaisquer dados de: usuários, animais, clínicas veterinárias e abrigos. Cabe a ele também registrar no sistema os patrocinadores de recompensas oferecidas para os demais usuários, além de oferecer suporte técnico.  
</p>

# Requisitos funcionais
**[RF001] Manter usuário**
Prioridade: Essencial
<p align="justify">
Id, nome do usuário, senha, contato(telefone, email), endereço(rua, número) e pontuação. Um mesmo email não pode se repetir para diferentes usuários. O usuário comum realiza a entrega de um animal em um abrigo. Um usuário terá os animais resgatados associados a ele, porém, ao criar a conta não é necessário ter um animal associado a ele. O usuário pode se tornar um desses tipos, podendo ser mais de um ao mesmo tempo:
Administrador: responsável pelo sistema. Autoriza nenhum ou vários patrocinadores.
Adotante: Responsável por adotar nenhum ou vários animais.
Voluntário: Responsável por oferecer um ou mais abrigos.
</p>

**[RF002] Manter animal**
Prioridade: Essencial
<p align="justify">
Id, raça, cor, nome (se tiver/ou for conhecido), informações veterinárias (vacinado? castrado?). Um animal pode ser acolhido em um e somente um abrigo. Um animal pode ser adotado por nenhum ou um adotante. Um animal pode ser resgatado por um e somente um usuário. Um animal pode fazer uma consulta em 0 ou várias clínicas, essa consulta tem data e hora marcada, podendo ser prescrito a partir dela, nenhum ou vários medicamentos. A data e a hora de uma consulta de um animal em uma clínica não pode repetir.
</p>

**[RF003] Manter abrigos**
Prioridade: Essencial
<p align="justify">
Id, Nome do local, capacidade, endereço(rua, número), contato(telefone, e-mail), fotos. Um abrigo acolhe nenhum ou vários animais. Um abrigo é oferecido por um voluntário ou por uma ONG.
</p>

**[RF004] Manter ONGs**
Prioridade: Essencial
<p align="justify">
Id, Nome da ONG, endereço(rua, número), contato(telefone,e-mail), site. Uma ong pode possuir nenhum ou vários funcionários. Uma ong pode oferecer nenhum ou vários abrigos.
</p>

**[RF005] Manter clínicas veterinárias**
Prioridade: Essencial
<p align="justify">
Id, Nome, endereço, horário de funcionamento(hora início, hora fim). Uma clínica pode possuir nenhum ou mais funcionários. A clínica faz a consulta de 0 ou mais animais.
</p>

**[RF006] Manter recompensas**
prioridade: Desejável
<p align="justify">
Número de sequência, nome, preço (em pontos) e descrição. Uma recompensa, caso seja retirada, deverá ser por apenas um usuário. O número de sequência só identifica uma recompensa para um patrocinador específico, ou seja, para patrocinadores diferentes podem existir recompensas com o mesmo número de sequência. Deve ser possível requisitar quantas vezes uma determinada recompensa foi resgatada.
</p>

**[RF007] Manter patrocinador**
prioridade: Desejável
<p align="justify">
Id, nome, setor. Um patrocinador é autorizado por um e somente um administrador. Um patrocinador pode oferecer uma ou mais recompensas.
</p>

**[RF008] Manter medicamentos**
Prioridade: Essencial
<p align="justify">
Id, nome, valor. Um medicamento pode estar contido na prescrição de nenhuma ou várias consultas.
