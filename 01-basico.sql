-- =========================================================
-- SQL BASICO PARA SUPABASE (POSTGRESQL)
-- Exemplo introdutorio com comentarios
-- Conteudo:
-- 1. Observacao sobre banco no Supabase
-- 2. Criar tabela
-- 3. Inserir dados
-- 4. Consultar dados com SELECT
-- 5. Consultar por ID
-- 6. Excluir dados com DELETE
-- =========================================================

-- =========================================================
-- 1. OBSERVACAO SOBRE O SUPABASE
-- No Supabase voce normalmente nao usa CREATE DATABASE
-- e tambem nao usa o comando USE.
-- O projeto ja entrega um banco PostgreSQL pronto.
-- Normalmente criamos tabelas dentro do schema public.
-- =========================================================

-- =========================================================
-- 2. CRIANDO UMA TABELA
-- Tabela de alunos com:
-- id -> identificador unico
-- nome -> nome do aluno
-- idade -> idade do aluno
-- cidade -> cidade do aluno
-- No PostgreSQL / Supabase usamos IDENTITY
-- no lugar de AUTO_INCREMENT
-- =========================================================
CREATE TABLE public.alunos (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    cidade VARCHAR(100) NOT NULL
);

-- =========================================================
-- 3. INSERINDO DADOS
-- Adiciona novos registros na tabela alunos
-- =========================================================
INSERT INTO public.alunos (nome, idade, cidade)
VALUES ('Ana', 20, 'Sao Paulo');

INSERT INTO public.alunos (nome, idade, cidade)
VALUES ('Bruno', 22, 'Rio de Janeiro');

INSERT INTO public.alunos (nome, idade, cidade)
VALUES ('Carla', 19, 'Belo Horizonte');

-- =========================================================
-- 4. SELECT
-- Lista todos os dados da tabela alunos
-- =========================================================
SELECT * FROM public.alunos;

-- =========================================================
-- 5. SELECT ESCOLHENDO COLUNAS
-- Lista apenas nome e cidade dos alunos
-- =========================================================
SELECT nome, cidade FROM public.alunos;

-- =========================================================
-- 6. SELECT BY ID
-- Busca um aluno especifico pelo id
-- =========================================================
SELECT * FROM public.alunos
WHERE id = 1;

-- =========================================================
-- 7. DELETE
-- Exclui um aluno especifico pelo id
-- Atencao: sempre use WHERE no DELETE para nao apagar tudo
-- =========================================================
DELETE FROM public.alunos
WHERE id = 3;

-- =========================================================
-- 8. SELECT FINAL
-- Mostra os dados restantes apos o DELETE
-- =========================================================
SELECT * FROM public.alunos;
