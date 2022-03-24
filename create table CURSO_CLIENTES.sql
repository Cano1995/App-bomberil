-- Create table
create table CURSO_CLIENTES
(
  id_cliente NUMBER not null,
  nombre     VARCHAR2(30),
  apellido   VARCHAR2(30),
  documento  VARCHAR2(20),
  telefono   VARCHAR2(40),
  fecha_nac  DATE,
  fecha_reg  DATE,
  id_ciudad  NUMBER
)
tablespace APEX_3200540589736334
  pctfree 10
  initrans 1
  maxtrans 255;
-- Create/Recreate primary, unique and foreign key constraints 
alter table CURSO_CLIENTES
  add constraint CLIENTES_PK primary key (ID_CLIENTE)
  using index 
  tablespace APEX_3200540589736334
  pctfree 10
  initrans 2
  maxtrans 255;
alter table CURSO_CLIENTES
  add constraint CLIENTES_CIUDADES_FK foreign key (ID_CIUDAD)
  references CURSO_CIUDADES (ID_CIUDAD);
