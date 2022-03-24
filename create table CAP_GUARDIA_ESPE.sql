-- Create table
create table CAP_GUARDIA_ESPE
(
  esp_clave     NUMBER not null,
  esp_persona   NUMBER,
  esp_fecha_ini DATE,
  esp_fecha_fin DATE,
  esp_estado    VARCHAR2(1),
  esp_obs       VARCHAR2(250)
)
tablespace APEX_3200540589736334
  pctfree 10
  initrans 1
  maxtrans 255;
-- Create/Recreate primary, unique and foreign key constraints 
alter table CAP_GUARDIA_ESPE
  add constraint PK_ESP_CLAVE primary key (ESP_CLAVE)
  using index 
  tablespace APEX_3200540589736334
  pctfree 10
  initrans 2
  maxtrans 255;
alter index PK_ESP_CLAVE nologging;
alter table CAP_GUARDIA_ESPE
  add constraint FK_ESP_PERSONA foreign key (ESP_PERSONA)
  references CAP_PERSONAS (PER_CLAVE);
-- Grant/Revoke object privileges 
grant select, insert, update, delete on CAP_GUARDIA_ESPE to PUBLIC;
