-- Create table
create table CAP_GRUPO_GUARDIA_DET
(
  grud_clave   NUMBER not null,
  grud_persona NUMBER,
  grud_estado  VARCHAR2(1),
  grud_item    NUMBER not null
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
alter table CAP_GRUPO_GUARDIA_DET
  add constraint PKGD_CLAVE primary key (GRUD_CLAVE, GRUD_ITEM)
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
alter index PKGD_CLAVE nologging;
alter table CAP_GRUPO_GUARDIA_DET
  add constraint FK_G_CLAVE foreign key (GRUD_CLAVE)
  references CAP_GRUPO_GUARDIA (GRU_CLAVE);
alter table CAP_GRUPO_GUARDIA_DET
  add constraint FK_GD_PERSONA foreign key (GRUD_PERSONA)
  references CAP_PERSONAS (PER_CLAVE);
-- Grant/Revoke object privileges 
grant select, insert, update, delete on CAP_GRUPO_GUARDIA_DET to PUBLIC;
