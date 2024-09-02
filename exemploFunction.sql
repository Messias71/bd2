DELIMITER $$
CREATE FUNCTION preferem_o_curso(curso varchar(30)) RETURNS INT
BEGIN 
    DECLARE quantidade int;
    SET quantidade = (SELECT COUNT(*) FROM estudante JOIN curso ON
      estudante.cursopreferido = curso.idcurso AND
      curso.nome like curso);
      RETURN quantidade;
END $$
DELIMITER ;

SELECT preferem_o_curso ("MySQL") as "Preferem o MySQL";
