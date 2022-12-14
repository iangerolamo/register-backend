-- create table teste as select * from csvread('D:/dev/teste.csv', null, 'fieldSeparator=;');
create table usuario
(
    id           bigint auto_increment NOT NULL PRIMARY KEY,
    nome         varchar(255),
    email        varchar(255),
    senha        varchar(255),
    time_coracao varchar(255)
);

create table aposta
(
    id          bigint generated by default as identity,
    aposta      numeric(19, 2),
    competicao  varchar(255),
    data_evento date,
    esporte     varchar(255),
    evento      varchar(255),
    lucro       numeric(19, 2),
    mercado     varchar(255),
    odd         numeric(19, 2),
    usuario_id  bigint,
    primary key (id)
);

insert into usuario(nome, email, senha, time_coracao)
values ('Ian Gerolamo', 'ian@email.com', '$2a$10$Otv.NyCR3G00aYQgpwTGWO/Z4Yr/Hs/fJlBHGRBnIn/K9k/poIgNq', 'Corinthians');

insert into usuario(nome, email, senha, time_coracao)
values ('Luke Skywalker', 'luke@email.com', '$2a$10$Otv.NyCR3G00aYQgpwTGWO/Z4Yr/Hs/fJlBHGRBnIn/K9k/poIgNq', 'Palmeiras');

insert into usuario(nome, email, senha, time_coracao)
values ('Frodo Bolseiro', 'frodo@email.com', '$2a$10$Otv.NyCR3G00aYQgpwTGWO/Z4Yr/Hs/fJlBHGRBnIn/K9k/poIgNq', 'Internacional');

insert into usuario(nome, email, senha, time_coracao)
values ('Bilbo Bolseiro', 'bilbo@email.com', '$2a$10$Otv.NyCR3G00aYQgpwTGWO/Z4Yr/Hs/fJlBHGRBnIn/K9k/poIgNq', 'Flamengo');


-- inicio insert time do Corinthians --

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-04-10', 'Futebol', 'Botafogo x Corinthians', 20, 'Winner', 3, 1);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-04-16', 'Futebol', 'Corinthians x Avaí', 5, 'Winner', 1.5, 1);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-04-23', 'Futebol', 'Palmeiras x Corinthians', -10, 'Winner', 4.5, 1);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-05-01', 'Futebol', 'Corinthians x Fortaleza', 8, 'Winner', 1.8, 1);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-05-08', 'Futebol', 'Bragantino x Corinthians', 19, 'Winner', 2.9, 1);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-05-14', 'Futebol', 'Internacional x Corinthians', -10, 'Winner', 3.3, 1);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-05-22', 'Futebol', 'Corinthians x São Paulo', -10, 'Winner', 2.5, 1);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-05-29', 'Futebol', 'Corinthians x América-MG', -10, 'Winner', 1.6, 1);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-06-04', 'Futebol', 'Atlético-GO x Corinthians', 24, 'Winner', 3.4, 1);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-06-07', 'Futebol', 'Cuiabá x Corinthians', -10, 'Winner', 2.75, 1);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-06-11', 'Futebol', 'Corinthians x Juventude', 7.50, 'Winner', 1.75, 1);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-06-15', 'Futebol', 'Atlético-PR x Corinthians', -10, 'Winner', 3.4, 1);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-06-19', 'Futebol', 'Corinthians x Goiás', 5.3, 'Winner', 1.53, 1);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-06-25', 'Futebol', 'Corinthians x Santos', -10, 'Winner', 2.2, 1);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-07-02', 'Futebol', 'Fluminense x Corinthians', -10, 'Winner', 7.5, 1);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-07-10', 'Futebol', 'Corinthians x Flamengo', 19, 'Winner', 2.9, 1);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-07-16', 'Futebol', 'Ceará x Corinthians', -10, 'Winner', 5, 1);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-07-20', 'Futebol', 'Corinthians x Coritiba', 6.10, 'Winner', 1.61, 1);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-07-24', 'Futebol', 'Atlético-MG x Corinthians', 85, 'Winner', 9.5, 1);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-07-30', 'Futebol', 'Corinthians x Botafogo', 8.3, 'Winner', 1.83, 1);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-08-06', 'Futebol', 'Avaí x Corinthians', -10, 'Winner', 2.62, 1);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-08-13', 'Futebol', 'Corinthians x Palmeiras', -10, 'Winner', 3.3, 1);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-08-21', 'Futebol', 'Fortaleza x Corinthians', -10, 'Winner', 4.5, 1);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-08-29', 'Futebol', 'Corinthians x Bragantino', 10.5, 'Winner', 2.05, 1);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-09-04', 'Futebol', 'Corinthians x Internacional', -10, 'Winner', 2.37, 1);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-09-11', 'Futebol', 'São Paulo x Corinthians', -10, 'Winner', 3.3, 1);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-09-18', 'Futebol', 'América-MG x Corinthians', -10, 'Winner', 3.75, 1);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-09-28', 'Futebol', 'Corinthians x Atlético-GO', 6.1, 'Winner', 1.61, 1);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-10-01', 'Futebol', 'Corinthians x Cuiabá', 6.6, 'Winner', 1.66, 1);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-10-04', 'Futebol', 'Juventude x Corinthians', -10, 'Winner', 1.83, 1);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-10-08', 'Futebol', 'Corinthians x Atlético-PR', 11.5, 'Winner', 2.15, 1);

-- fim insert time do Corinthians

-- inicio insert time do Palmeiras --

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-04-09', 'Futebol', 'Palmeiras x Ceará', -10, 'Winner', 1.45, 2);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-04-16', 'Futebol', 'Goiás x Palmeiras', -10, 'Winner', 1.61, 2);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-04-20', 'Futebol', 'Flamengo x Palmeiras', -10, 'Winner', 3.75, 2);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-04-23', 'Futebol', 'Palmeiras x Corinthians', 9, 'Winner', 1.9, 2);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-05-08', 'Futebol', 'Palmeiras x Fluminense', -10, 'Winner', 1.45, 2);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-05-14', 'Futebol', 'Palmeiras x Bragantino', 3.3, 'Winner', 1.33, 2);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-05-21', 'Futebol', 'Juventude x Palmeiras', 8.5, 'Winner', 1.85, 2);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-05-29', 'Futebol', 'Santos x Palmeiras', 10, 'Winner', 2, 2);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-06-05', 'Futebol', 'Palmeiras x Atlético-MG', -10, 'Winner', 2.05, 2);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-06-09', 'Futebol', 'Palmeiras x Botafogo', 4, 'Winner', 1.4, 2);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-06-12', 'Futebol', 'Coritiba x Palmeiras', 6.6, 'Winner', 1.66, 2);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-06-16', 'Futebol', 'Palmeiras x Atlético-GO', 4, 'Winner', 1.4, 2);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-06-20', 'Futebol', 'São Paulo x Palmeiras', 15, 'Winner', 2.5, 2);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-06-26', 'Futebol', 'Palmeiras x Avaí', -10, 'Winner', 1.85, 2);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-07-02', 'Futebol', 'Palmeiras x Atlético-PR', -10, 'Winner', 1.36, 2);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-07-10', 'Futebol', 'Fortaleza x Palmeiras', -10, 'Winner', 2.05, 2);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-07-18', 'Futebol', 'Palmeiras x Cuiabá', 2.8, 'Winner', 1.28, 2);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-07-21', 'Futebol', 'América-MG x Palmeiras', 7.5, 'Winner', 1.75, 2);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-07-24', 'Futebol', 'Palmeiras x Internacional', 5, 'Winner', 1.5, 2);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-07-30', 'Futebol', 'Ceará x Palmeiras', 11, 'Winner', 2.10, 2);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-08-07', 'Futebol', 'Palmeiras x Goiás', 2.5, 'Winner', 1.25, 2);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-08-13', 'Futebol', 'Corinthians x Palmeiras', 13.7, 'Winner', 2.37, 2);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-08-21', 'Futebol', 'Palmeiras x Flamengo', -10, 'Winner', 1.9, 2);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-08-27', 'Futebol', 'Fluminense x Palmeiras', -10, 'Winner', 2.45, 2);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-09-03', 'Futebol', 'Bragantino x Palmeiras', -10, 'Winner', 2.9, 2);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-09-10', 'Futebol', 'Palmeiras x Juventude', 1.8, 'Winner', 1.18, 2);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-09-18', 'Futebol', 'Palmeiras x Santos', 4, 'Winner',1.4, 2);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-09-28', 'Futebol', 'Atlético-MG x Palmeiras', 35, 'Winner', 4.5, 2);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-10-03', 'Futebol', 'Botafogo x Palmeiras', 7, 'Winner', 1.7, 2);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-10-06', 'Futebol', 'Palmeiras x Coritiba', 2, 'Winner', 1.2, 2);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-10-10', 'Futebol', 'Atlético-GO x Palmeiras', -10, 'Winner', 1.61, 2);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-10-16', 'Futebol', 'Palmeiras x Palmeiras', -10, 'Winner', 1.61, 2);

-- fim insert time do Palmeiras --

-- inicio insert time do Internacional --

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-04-10', 'Futebol', 'Atlético-MG x Internacional', -10, 'Winner', 6.5, 3);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-04-17', 'Futebol', 'Internacional x Fortaleza', 14, 'Winner', 2.4, 3);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-04-23', 'Futebol', 'Fluminense x Internacional', 37.5, 'Winner', 4.75, 3);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-05-01', 'Futebol', 'Internacional x Avaí', -10, 'Winner', 1.5, 3);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-05-08', 'Futebol', 'Juventude x Internacional', -10, 'Winner', 2.8, 3);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-05-14', 'Futebol', 'Internacional x Corinthians', -10, 'Winner', 2.25, 3);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-05-21', 'Futebol', 'Cuiabá x Internacional', -10, 'Winner', 2.62, 3);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-05-30', 'Futebol', 'Internacional x Atlético-GO', -10, 'Winner', 1.6, 3);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-06-05', 'Futebol', 'Bragantino x Internacional', 25, 'Winner', 3.5, 3);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-06-08', 'Futebol', 'Santos x Internacional', -10, 'Winner', 3.6, 3);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-06-11', 'Futebol', 'Internacional x Flamengo', 23, 'Winner', 3.3, 3);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-06-15', 'Futebol', 'Goiás x Internacional', 12.5, 'Winner', 2.25, 3);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-06-19', 'Futebol', 'Internacional x Botafogo', -10, 'Winner', 1.53, 3);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-06-24', 'Futebol', 'Internacional x Coritiba', 7.2, 'Winner', 1.72, 3);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-07-02', 'Futebol', 'Ceará x Internacional', -10, 'Winner', 4, 3);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-07-11', 'Futebol', 'Internacional x América-MG', 6.1, 'Winner', 1.61, 3);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-07-16', 'Futebol', 'Atlético-PR x Internacional', -10, 'Winner', 3.5, 3);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-07-20', 'Futebol', 'Internacional x São Paulo', -10, 'Winner', 1.85, 3);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-07-24', 'Futebol', 'Palmeiras x Internacional', -10, 'Winner', 7.5, 3);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-07-31', 'Futebol', 'Internacional x Atlético-MG', 22.5, 'Winner', 3.25, 3);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-08-07', 'Futebol', 'Fortaleza x Internacional', -10, 'Winner', 5.25, 3);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-08-14', 'Futebol', 'Internacional x Fluminense', 14.5, 'Winner', 2.45, 3);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-08-14', 'Futebol', 'Internacional x Fluminense', 14.5, 'Winner', 2.45, 3);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-08-22', 'Futebol', 'Avaí x Internacional', 11, 'Winner', 2.1, 3);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-08-29', 'Futebol', 'Internacional x Juventude', 4, 'Winner', 1.4, 3);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-09-04', 'Futebol', 'Corinthians x Internacional', -10, 'Winner', 3.3, 3);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-09-10', 'Futebol', 'Internacional x Cuiabá', 6, 'Winner', 1.6, 3);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-09-19', 'Futebol', 'Atlético-GO x Internacional', 12, 'Winner', 2.2, 3);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-09-28', 'Futebol', 'Internacional x Bragantino', -10, 'Winner', 1.85, 3);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-10-01', 'Futebol', 'Internacional x Santos', 7.2, 'Winner', 1.72, 3);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-10-05', 'Futebol', 'Flamengo x Internacional', -10, 'Winner', 8, 3);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-10-09', 'Futebol', 'Internacional x Goiás', 4, 'Winner', 1.4, 3);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-10-16', 'Futebol', 'Botafogo x Internacional', 18, 'Winner', 2.8, 3);

-- fim insert time do Internacional --

-- inicio insert time do Flamengo --

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-04-05', 'Futebol', 'Atlético-GO x Flamengo', -10, 'Winner', 6.5, 4);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-04-17', 'Futebol', 'Flamengo x São Paulo', 14, 'Winner', 2.4, 4);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-04-23', 'Futebol', 'Flamengo x Palmeiras', 37.5, 'Winner', 4.75, 4);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-05-01', 'Futebol', 'Atlético-PR x Flamengo', -10, 'Winner', 1.5, 4);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-05-08', 'Futebol', 'Flamengo x Botafogo', -10, 'Winner', 2.8, 4);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-05-14', 'Futebol', 'Ceará x Flamengo', -10, 'Winner', 2.25, 4);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-05-21', 'Futebol', 'Flamengo x Goiás', -10, 'Winner', 2.62, 4);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-05-30', 'Futebol', 'Fluminense x Flamengo', -10, 'Winner', 1.6, 4);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-06-05', 'Futebol', 'Flamengo x Fortaleza', 25, 'Winner', 3.5, 4);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-06-08', 'Futebol', 'Bragantino x Flamengo', -10, 'Winner', 3.6, 4);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-06-11', 'Futebol', 'Internacional x Flamengo', 23, 'Winner', 3.3, 4);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-06-15', 'Futebol', 'Flamengo x Cuiabá', 12.5, 'Winner', 2.25, 4);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-06-19', 'Futebol', 'Atlético-MG x Flamengo', -10, 'Winner', 1.53, 4);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-06-24', 'Futebol', 'Flamengo x América-MG', 7.2, 'Winner', 1.72, 4);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-07-02', 'Futebol', 'Santos x Flamengo', -10, 'Winner', 4, 4);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-07-11', 'Futebol', 'Corinthians x Flamengo', 6.1, 'Winner', 1.61, 4);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-07-16', 'Futebol', 'Flamengo x Coritiba', -10, 'Winner', 3.5, 4);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-07-20', 'Futebol', 'Flamengo x Juventude', -10, 'Winner', 1.85, 4);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-07-24', 'Futebol', 'Avaí x Flamengo', -10, 'Winner', 7.5, 4);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-07-31', 'Futebol', 'Flamengo x Atlético-GO', 22.5, 'Winner', 3.25, 4);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-08-07', 'Futebol', 'São Paulo x Flamengo', -10, 'Winner', 5.25, 4);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-08-14', 'Futebol', 'Flamengo x Atlético-PR', 14.5, 'Winner', 2.45, 4);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-08-14', 'Futebol', 'Palmeiras x Flamengo', 14.5, 'Winner', 2.45, 4);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-08-22', 'Futebol', 'Botafogo x Flamengo', 11, 'Winner', 2.1, 4);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-08-29', 'Futebol', 'Flamengo x Ceará', 4, 'Winner', 1.4, 4);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-09-04', 'Futebol', 'Goiás x Flamengo', -10, 'Winner', 3.3, 4);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-09-10', 'Futebol', 'Flamengo x Fluminense', 6, 'Winner', 1.6, 4);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-09-19', 'Futebol', 'Fortaleza x Flamengo', 12, 'Winner', 2.2, 4);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-09-28', 'Futebol', 'Flamengo x Bragantino', -10, 'Winner', 1.85, 4);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-10-01', 'Futebol', 'Flamengo x Internacional', 7.2, 'Winner', 1.72, 4);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-10-05', 'Futebol', 'Cuiabá x Flamengo', -10, 'Winner', 8, 4);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-10-09', 'Futebol', 'Flamengo x América-MG', 4, 'Winner', 1.4, 4);

insert into aposta(aposta, competicao, data_evento, esporte, evento, lucro, mercado, odd, usuario_id)
values (10, 'Campeonato Brasileiro', '2022-10-16', 'Futebol', 'Botafogo x Internacional', 18, 'Winner', 2.8, 4);

-- fim insert time do Flamengo --



