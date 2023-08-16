# Taxa de evasão das turmas:
CREATE VIEW taxa_de_evasao 
AS 
SELECT
    t.nome,
    count(case when rs.evasao ='inativo' THEN 'Ativo' END) AS total_evasao,
    count(case when rs.evasao ='inativo' THEN 'Ativo' END) / count(rs.evasao) * 100 AS porcentagem_evasao
FROM resilia.estudante_turma AS et
INNER JOIN resilia.turma AS t
ON et.turma_id = t.turma_id
INNER JOIN resilia.status AS rs
ON et.status_id = rs.status_id
GROUP BY t.nome;
SELECT *
FROM taxa_de_evasao;

# Estudantes com frequência abaixo de 50% e notas abaixo de 50:
SELECT p.nome
FROM pessoa AS p
JOIN estudante AS e ON p.pessoa_id = e.pessoas
JOIN estudante_turma AS et ON e.estudante_id = et.estudante_id
JOIN status AS s ON et.status_id = s.status_id
WHERE s.frequencia < 50 AND s.nota >= 5.0;

# Estudantes com frequência acima de 80% e notas acima de 70:
SELECT rp.nome, rs.frequencia, rs.nota
FROM resilia.estudante_turma AS re
JOIN resilia.estudante AS e
ON re.estudante_id = e.estudante_id
JOIN resilia.status as rs
ON re.status_id = rs.status_id
JOIN resilia.pessoa as rp
ON e.pessoas = rp.pessoa_id
HAVING rs.frequencia >=80 AND rs.nota >=70;

# Número de facilitadores por turmas:
SELECT p.nome, COUNT(ft.turma_id) AS qtd_turmas
FROM pessoa AS p
JOIN facilitador AS f ON p.pessoa_id = f.pessoas_id
JOIN facilitador_turma AS ft ON f.facilitador_id = ft.facilitador_id
GROUP BY p.nome
HAVING COUNT(ft.turma_id) > 1;