create or replace trigger curso_paises_ins_trg
before insert on curso_paises for each row 
begin 
  :new.id_pais := curso_pais_seq.nextval; 
end curso_paises_ins_trg;
/
