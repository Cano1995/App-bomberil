-- Create table
create table CAP_PERSONAS
(
  per_clave         NUMBER not null,
  per_nombre        VARCHAR2(100),
  per_apellido      VARCHAR2(100),
  per_ci            VARCHAR2(50),
  per_celular       VARCHAR2(20),
  per_direccion     VARCHAR2(200),
  per_estado_civil  VARCHAR2(1),
  per_fecha_nac     DATE,
  per_fecha_ingreso DATE default SYSDATE,
  per_rango         NUMBER,
  per_tipo_v        NUMBER,
  per_estado        VARCHAR2(1)
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
alter table CAP_PERSONAS
  add constraint XPK_PERSONAS primary key (PER_CLAVE)
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
alter index XPK_PERSONAS nologging;
alter table CAP_PERSONAS
  add constraint FPK_RANGO foreign key (PER_RANGO)
  references CAP_RANGO (RAN_CLAVE);
alter table CAP_PERSONAS
  add constraint FPK_T_PERSONA foreign key (PER_TIPO_V)
  references CAP_TIPO_PERSONA (VOL_TCLAVE);
-- Grant/Revoke object privileges 
grant select, insert, update, delete on CAP_PERSONAS to PUBLIC;
