-- Create table
create table CAP_GRUPO_GUARDIA_DET_TMP
(
  grud_clave   NUMBER,
  grud_persona NUMBER,
  grud_estado  VARCHAR2(1),
  grud_item    VARCHAR2(20),
  grud_user    VARCHAR2(20),
  grud_sesion  VARCHAR2(250)
)
tablespace APEX_3200540589736334
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Grant/Revoke object privileges 
grant select, insert, update, delete on CAP_GRUPO_GUARDIA_DET_TMP to PUBLIC;
