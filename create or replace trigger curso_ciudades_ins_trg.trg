create or replace trigger curso_ciudades_ins_trg
before insert on curso_ciudades for each row 
begin 
  :new.id_ciudad := curso_ciudades_seq.nextval; 
end curso_ciudades_ins_trg;
/
