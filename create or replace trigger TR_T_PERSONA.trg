create or replace trigger TR_T_PERSONA
  before insert
  on CAP_TIPO_PERSONA 
  for each row
declare
  V_CLAVE NUMBER:=0;
begin
  IF INSERTING THEN
    SELECT NVL(MAX(P.VOL_TCLAVE),0)+1 INTO V_CLAVE FROM CAP_TIPO_PERSONA P;
    :NEW.VOL_TCLAVE:=V_CLAVE;
  END IF;

end TR_T_PERSONA;
/