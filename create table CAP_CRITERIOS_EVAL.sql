-- Create table
create table CAP_CRITERIOS_EVAL
(
  cri_clave       NUMBER not null,
  cri_descripcion VARCHAR2(250),
  cri_nombre      VARCHAR2(50)
)
tablespace APEX_3200540589736334
  pctfree 10
  initrans 1
  maxtrans 255;
-- Create/Recreate primary, unique and foreign key constraints 
alter table CAP_CRITERIOS_EVAL
  add constraint PK_CRITERIO primary key (CRI_CLAVE)
  using index 
  tablespace APEX_3200540589736334
  pctfree 10
  initrans 2
  maxtrans 255;
alter index PK_CRITERIO nologging;
-- Grant/Revoke object privileges 
grant select, insert, update, delete on CAP_CRITERIOS_EVAL to PUBLIC;
