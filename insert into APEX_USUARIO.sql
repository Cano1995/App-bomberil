prompt Importing table APEX_USUARIO...
set feedback off
set define off
insert into APEX_USUARIO (ID, USUARIO, EMAIL, PASSWORD, ROLES, CREATED, CREATED_BY, UPDATED, UPDATED_BY)
values (2, 'ADMIN', 'CRISTIAN.CANO.BOGADO@GMAIL.COM', '7CCEE7310C60FF4F2EE5C96FD15E5CC5', '1', to_date('18-01-2022 10:12:40', 'dd-mm-yyyy hh24:mi:ss'), 'BOMBEROCZU', to_date('18-01-2022 10:12:40', 'dd-mm-yyyy hh24:mi:ss'), 'BOMBEROCZU');

insert into APEX_USUARIO (ID, USUARIO, EMAIL, PASSWORD, ROLES, CREATED, CREATED_BY, UPDATED, UPDATED_BY)
values (3, 'criscan', 'criscan@gmail.com', 'CE5C82B3F8ED14C0', '1', to_date('26-01-2022 13:58:39', 'dd-mm-yyyy hh24:mi:ss'), 'ADMIN', to_date('26-01-2022 13:58:39', 'dd-mm-yyyy hh24:mi:ss'), 'ADMIN');

prompt Done.
