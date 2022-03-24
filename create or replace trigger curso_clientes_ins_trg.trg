create or replace trigger curso_clientes_ins_trg
before insert on curso_clientes for each row 
begin 
  :new.id_cliente := curso_clientes_seq.nextval; 
end curso_clientes_ins_trg;
/
