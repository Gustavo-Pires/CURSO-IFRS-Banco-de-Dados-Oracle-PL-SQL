DECLARE
  v_nome VARCHAR2(50);
  v_salario NUMBER;
BEGIN
  FOR i IN 1..10 LOOP
    v_nome := 'Funcionário' || i;
    v_salario := 2000 + (i - 1) * 100;
    
    INSERT INTO funcionário (nome, id_departamento, id_cargo, salario)
    VALUES (v_nome, 100, 300, v_salario);
  END LOOP;
  
  COMMIT;
END;
