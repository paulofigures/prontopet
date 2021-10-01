/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     30/09/2021 22:21:09                          */
/*==============================================================*/


/*==============================================================*/
/* Table: Animal                                                */
/*==============================================================*/
create table Animal
(
   idanimal             int(9) not null,
   nome                 varchar(50),
   cor                  varchar(30),
   nascimento           date,
   peso                 decimal(2),
   altura               decimal(2),
   idtipo_usuario       int
);

alter table Animal
   add primary key (idanimal);

/*==============================================================*/
/* Table: Cidade                                                */
/*==============================================================*/
create table Cidade
(
   idcidade             int(9) not null,
   Est_idestado         int(9) not null,
   descricao            varchar(50),
   cep                  int(8),
   idestado             int
);

alter table Cidade
   add primary key (idcidade);

/*==============================================================*/
/* Table: Conta                                                 */
/*==============================================================*/
create table Conta
(
   idconta              int not null,
   idong                int(9) not null,
   conta                double,
   agencia              double
);

alter table Conta
   add primary key (idconta);

/*==============================================================*/
/* Table: Empresa                                               */
/*==============================================================*/
create table Empresa
(
   idempresa            int(9) not null,
   Pro_idproduto        int(9) not null,
   nome                 varchar(255),
   descricao            varchar(50),
   idproduto            int
);

alter table Empresa
   add primary key (idempresa);

/*==============================================================*/
/* Table: Estado                                                */
/*==============================================================*/
create table Estado
(
   idestado             int(9) not null,
   descricao            varchar(50),
   idpais               int not null
);

alter table Estado
   add primary key (idestado);

/*==============================================================*/
/* Table: Higiene                                               */
/*==============================================================*/
create table Higiene
(
   idhigiene            int(9) not null,
   Ani_idanimal         int(9) not null,
   tipo                 varchar(50),
   estabelecimento      varchar(50),
   idanimal             int,
   idnascimento         date
);

alter table Higiene
   add primary key (idhigiene);

/*==============================================================*/
/* Table: Logradouro                                            */
/*==============================================================*/
create table Logradouro
(
   idlogradouro         int(9) not null,
   Cid_idcidade         int(9) not null,
   Pes_idpessoa         int(9) not null,
   descricao            varchar(30),
   logradouro           varchar(100),
   numero               int(6),
   complemento          varchar(50),
   bairro               varchar(50),
   cep                  numeric(8),
   idpessoa             int,
   idcidade             int
);

alter table Logradouro
   add primary key (idlogradouro);

/*==============================================================*/
/* Table: Ong                                                   */
/*==============================================================*/
create table Ong
(
   idong                int(9) not null,
   idtipo_usuario       int not null,
   Log_idlogradouro     int(9) not null,
   nome                 varchar(100),
   nomefantasia         varchar(50),
   telefone             double,
   idlogradouro         int
);

alter table Ong
   add primary key (idong);

/*==============================================================*/
/* Table: Pais                                                  */
/*==============================================================*/
create table Pais
(
   idpais               int not null,
   descricao            varchar(255)
);

alter table Pais
   add primary key (idpais);

/*==============================================================*/
/* Table: Pessoa                                                */
/*==============================================================*/
create table Pessoa
(
   idpessoa             int(9) not null,
   name                 varchar(255),
   nameapelido          varchar(100),
   idtipo_usuario       int not null
);

alter table Pessoa
   add primary key (idpessoa);

/*==============================================================*/
/* Table: Produto                                               */
/*==============================================================*/
create table Produto
(
   idproduto            int(9) not null,
   nome                 varchar(100),
   descricao            varchar(50),
   preco                double,
   idtipo_usuario       int not null
);

alter table Produto
   add primary key (idproduto);

/*==============================================================*/
/* Table: Raca                                                  */
/*==============================================================*/
create table Raca
(
   idraca               int(9) not null,
   Ani_idanimal         int(9) not null,
   descricao            varchar(50),
   idanimal             int
);

alter table Raca
   add primary key (idraca);

/*==============================================================*/
/* Table: Sexo                                                  */
/*==============================================================*/
create table Sexo
(
   idsexo               int(9) not null,
   Ani_idanimal         int(9) not null,
   descricao            varchar(5),
   idanimal             int
);

alter table Sexo
   add primary key (idsexo);

/*==============================================================*/
/* Table: Tipo_usuario                                          */
/*==============================================================*/
create table Tipo_usuario
(
   idtipo_usuario       int not null,
   descricao            varchar(45)
);

alter table Tipo_usuario
   add primary key (idtipo_usuario);

/*==============================================================*/
/* Table: Vacina                                                */
/*==============================================================*/
create table Vacina
(
   idvacina             int(9) not null,
   Ani_idanimal         int(9),
   nome                 varchar(50),
   dataprocedimento     date,
   idanimal             int not null
);

alter table Vacina
   add primary key (idvacina);

alter table Vacina
   add unique fk (idanimal);

/*==============================================================*/
/* Table: tipo                                                  */
/*==============================================================*/
create table tipo
(
   idtipo               int(9) not null,
   Ani_idanimal         int(9) not null,
   descricao            varchar(50),
   idanimal             int
);

alter table tipo
   add primary key (idtipo);

alter table Animal add constraint FK_possui foreign key (idtipo_usuario)
      references Tipo_usuario (idtipo_usuario) on delete restrict on update restrict;

alter table Cidade add constraint FK_possui foreign key (Est_idestado)
      references Estado (idestado) on delete restrict on update restrict;

alter table Conta add constraint FK_possui foreign key (idong)
      references Ong (idong) on delete restrict on update restrict;

alter table Empresa add constraint FK_possui foreign key (Pro_idproduto)
      references Produto (idproduto) on delete restrict on update restrict;

alter table Estado add constraint FK_possui foreign key (idpais)
      references Pais (idpais) on delete restrict on update restrict;

alter table Higiene add constraint FK_possui foreign key (Ani_idanimal)
      references Animal (idanimal) on delete restrict on update restrict;

alter table Logradouro add constraint FK_Reference_16 foreign key (Pes_idpessoa)
      references Pessoa (idpessoa) on delete restrict on update restrict;

alter table Logradouro add constraint FK_possui foreign key (Cid_idcidade)
      references Cidade (idcidade) on delete restrict on update restrict;

alter table Ong add constraint FK_possui foreign key (Log_idlogradouro)
      references Logradouro (idlogradouro) on delete restrict on update restrict;

alter table Ong add constraint FK_possui foreign key (idtipo_usuario)
      references Tipo_usuario (idtipo_usuario) on delete restrict on update restrict;

alter table Pessoa add constraint FK_possui foreign key (idtipo_usuario)
      references Tipo_usuario (idtipo_usuario) on delete restrict on update restrict;

alter table Produto add constraint FK_possui foreign key (idtipo_usuario)
      references Tipo_usuario (idtipo_usuario) on delete restrict on update restrict;

alter table Raca add constraint FK_possui foreign key (Ani_idanimal)
      references Animal (idanimal) on delete restrict on update restrict;

alter table Sexo add constraint FK_possui foreign key (Ani_idanimal)
      references Animal (idanimal) on delete restrict on update restrict;

alter table Vacina add constraint FK_possui foreign key (Ani_idanimal)
      references Animal (idanimal) on delete restrict on update restrict;

alter table tipo add constraint FK_possui foreign key (Ani_idanimal)
      references Animal (idanimal) on delete restrict on update restrict;

