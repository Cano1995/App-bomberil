-- Create table
create table CURSO_DEPARTAMENTOS
(
  id_dpto           NUMBER not null,
  departamento_desc VARCHAR2(100),
  id_pais           NUMBER
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
alter table CURSO_DEPARTAMENTOS
  add constraint DEPARTAMENTOS_PK primary key (ID_DPTO)
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
alter table CURSO_DEPARTAMENTOS
  add constraint CIUDADES_DEPARTAMENTOS_FK foreign key (ID_DPTO)
  references CURSO_DEPARTAMENTOS (ID_DPTO);
alter table CURSO_DEPARTAMENTOS
  add constraint DEPARTAMENTOS_PAISES_FK foreign key (ID_PAIS)
  references CURSO_PAISES (ID_PAIS);
