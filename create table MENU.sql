-- Create table
create table MENU
(
  men_clave       NUMBER,
  men_nombre      VARCHAR2(250),
  men_icono       VARCHAR2(50),
  men_imagen      VARCHAR2(50),
  men_attrr_value VARCHAR2(50),
  men_nivel       NUMBER,
  men_target      NUMBER,
  men_tipo        NUMBER
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
