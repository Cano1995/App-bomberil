create or replace trigger curso_departamentos_ins_trg
before insert on curso_departamentos for each row 
begin 
  :new.id_dpto := curso_departamentos_seq.nextval; 
end curso_departamentos_ins_trg;
/
