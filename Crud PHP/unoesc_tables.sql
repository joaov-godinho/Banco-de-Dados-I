create table categoria(
codigo_ctg int primary key not null,
descricao_ctg varchar(50) unique not null);


CREATE TABLE produto (
codigo_prd INT AUTO_INCREMENT PRIMARY KEY,
descricao_prd VARCHAR(50) UNIQUE NOT NULL,
data_cadastro DATE default (current_timestamp()) not null,
preco DECIMAL (10,2) NOT NULL DEFAULT 0.0 CHECK (preco >=0),
ativo BOOLEAN NOT NULL DEFAULT true,
unidade CHAR(5) DEFAULT 'un',
tipo_comissao ENUM ('s','f','p') not null default 's',
codigo_ctg int not null,
CONSTRAINT FOREIGN KEY (codigo_ctg)REFERENCES categoria(codigo_ctg),
foto longblob
);

insert into categoria values (1,"refrigerados");
insert into categoria values (2,"limpeza");
insert into categoria values (3,"Embutidos");
insert into categoria values (4,"temperos");

insert into produto values(null, "oregano",'12-02-2023', 2, true, 'pct', 's' , 4, null);
insert into produto (descricao_prd,preco,codigo_ctg) values("salsicha",10,3);

select * from categoria;
unlock tables;