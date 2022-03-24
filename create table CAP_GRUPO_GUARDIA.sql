-- Create table
create table CAP_GRUPO_GUARDIA
(
  gru_clave       NUMBER not null,
  gru_jefe        NUMBER,
  gru_estado      VARCHAR2(1),
  gru_fec_ini     DATE,
  gru_fec_grab    DATE default SYSDATE,
  gru_nro_guardia NUMBER,
  gru_observacion VARCHAR2(250)
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
-- Create/Recreate primary, unique and foreign key constraints 
alter table CAP_GRUPO_GUARDIA
  add constraint PKG_GRUPO primary key (GRU_CLAVE)
  using index 
  tablespace APEX_3200540589736334
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter index PKG_GRUPO nologging;
alter table CAP_GRUPO_GUARDIA
  add constraint FKG foreign key (GRU_JEFE)
  references CAP_PERSONAS (PER_CLAVE);
-- Grant/Revoke object privileges 
grant select, insert, update, delete on CAP_GRUPO_GUARDIA to PUBLIC;
