prompt Importing table CAP_TIPO_PERSONA...
set feedback off
set define off
insert into CAP_TIPO_PERSONA (VOL_TCLAVE, VOL_T_DESCRIPCION, VOL_T_NOMBRE)
values (1, 'Es el bombero que no sale a servicios', 'Honorario');

insert into CAP_TIPO_PERSONA (VOL_TCLAVE, VOL_T_DESCRIPCION, VOL_T_NOMBRE)
values (2, 'Es el bombero que sale a servicios', 'Combatiente');

prompt Done.
