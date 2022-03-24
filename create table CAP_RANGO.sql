-- Create table
create table CAP_RANGO
(
  ran_clave       NUMBER not null,
  ran_descripcion VARCHAR2(250),
  ran_posicion    NUMBER,
  ran_rango       VARCHAR2(100)
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
-- Add comments to the columns 
comment on column CAP_RANGO.ran_clave
  is 'clave del rango';
comment on column CAP_RANGO.ran_descripcion
  is 'descripcion del rango';
comment on column CAP_RANGO.ran_posicion
  is 'posicion del rango en la verticalidad de la institucion';
comment on column CAP_RANGO.ran_rango
  is 'NOMBRE DEL RANGO';
-- Create/Recreate primary, unique and foreign key constraints 
alter table CAP_RANGO
  add constraint XPK_RANGO primary key (RAN_CLAVE)
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
alter index XPK_RANGO nologging;
-- Grant/Revoke object privileges 
grant select, insert, update, delete on CAP_RANGO to PUBLIC;
