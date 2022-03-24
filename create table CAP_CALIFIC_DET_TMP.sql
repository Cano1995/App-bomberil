-- Create table
create table CAP_CALIFIC_DET_TMP
(
  cald_clave       NUMBER,
  cald_item        VARCHAR2(200),
  cald_crit        NUMBER,
  cald_puntaje     NUMBER,
  cald_observacion VARCHAR2(250)
)
tablespace APEX_3200540589736334
  pctfree 10
  initrans 1
  maxtrans 255;
-- Grant/Revoke object privileges 
grant select, insert, update, delete on CAP_CALIFIC_DET_TMP to PUBLIC;
