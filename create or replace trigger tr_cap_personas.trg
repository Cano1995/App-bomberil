create or replace trigger tr_cap_personas
  before insert
  on CAP_PERSONAS 
  for each row
declare
  v_clave number:=0;
begin
  if inserting then
    select nvl(max(p.per_clave),0)+1 into v_clave from cap_personas p;
    :new.per_clave:=v_clave;
  end if;
end tr_cap_personas;
/
