-- Create table
create table CAP_GRUP_DIA
(
  grd_clave NUMBER not null,
  grd_item  NUMBER,
  grd_fecha DATE
)
tablespace APEX_3200540589736334
  pctfree 10
  initrans 1
  maxtrans 255;
-- Add comments to the columns 
comment on column CAP_GRUP_DIA.grd_fecha
  is 'fecha a la que le toca a la guardia';
-- Create/Recreate primary, unique and foreign key constraints 
alter table CAP_GRUP_DIA
  add constraint PKGRD primary key (GRD_CLAVE)
  using index 
  tablespace APEX_3200540589736334
  pctfree 10
  initrans 2
  maxtrans 255;
alter index PKGRD nologging;
alter table CAP_GRUP_DIA
  add constraint FKGRD foreign key (GRD_CLAVE)
  references CAP_GRUPO_GUARDIA (GRU_CLAVE);
-- Grant/Revoke object privileges 
grant select, insert, update, delete on CAP_GRUP_DIA to PUBLIC;
