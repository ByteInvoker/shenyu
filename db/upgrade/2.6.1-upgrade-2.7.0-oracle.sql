-- Licensed to the Apache Software Foundation (ASF) under one
-- or more contributor license agreements.  See the NOTICE file
-- distributed with this work for additional information
-- regarding copyright ownership.  The ASF licenses this file
-- to you under the Apache License, Version 2.0 (the
-- "License"); you may not use this file except in compliance
-- with the License.  You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.

-- this file works for Oracle, can not use "`" syntax.
INSERT /*+ IGNORE_ROW_ON_DUPKEY_INDEX(shenyu_dict(type, dict_code, dict_name)) */ INTO SHENYU_DICT (ID, TYPE, DICT_CODE, DICT_NAME, DICT_VALUE, "desc", SORT, ENABLED)
VALUES ('1679002911061737478', 'rewriteMetaData', 'REWRITE_META_DATA', 'true', 'true', '', 4, 1);

INSERT /*+ IGNORE_ROW_ON_DUPKEY_INDEX(shenyu_dict(type, dict_code, dict_name)) */ INTO SHENYU_DICT (ID, TYPE, DICT_CODE, DICT_NAME, DICT_VALUE, "desc", SORT, ENABLED)
VALUES ('1679002911061737479', 'rewriteMetaData', 'REWRITE_META_DATA', 'false', 'false', '', 4, 1);

insert /*+ IGNORE_ROW_ON_DUPKEY_INDEX(plugin_handle(plugin_id, field, type)) */ into plugin_handle (ID, PLUGIN_ID, FIELD, LABEL, DATA_TYPE, TYPE, SORT, EXT_OBJ)
values ('1722804548510507020', '14', 'rewriteContextPath', 'rewriteContextPath', 2, 2, 2, '{"required":"0","defaultValue":""}');

insert /*+ IGNORE_ROW_ON_DUPKEY_INDEX(plugin_handle(plugin_id, field, type)) */ into plugin_handle (ID, PLUGIN_ID, FIELD, LABEL, DATA_TYPE, TYPE, SORT, EXT_OBJ)
values ('1722804548510507021', '14', 'percentage', 'percentage', 1, 2, 3, '{"required":"1","defaultValue":"100"}');

insert /*+ IGNORE_ROW_ON_DUPKEY_INDEX(plugin_handle(plugin_id, field, type)) */ into plugin_handle (ID, PLUGIN_ID, FIELD, LABEL, DATA_TYPE, TYPE, SORT, EXT_OBJ)
values ('1722804548510507022', '3', 'rewriteMetaData', 'rewriteMetaData', 3, 2, 3, '{"required":"1","defaultValue":"false"}');

-- ----------------------------
-- Table structure for SHENYU_LOCK
-- ----------------------------
CREATE TABLE SHENYU_LOCK  (
   LOCK_KEY CHAR(36),
   REGION VARCHAR(100),
   CLIENT_ID CHAR(36),
   CREATED_DATE TIMESTAMP NOT NULL,
   constraint SHENYU_LOCK_PK primary key (LOCK_KEY, REGION)
);
-- Add comments to the columns
comment on column SHENYU_LOCK.LOCK_KEY
  is 'LOCK_KEY';
comment on column SHENYU_LOCK.REGION
  is 'REGION';
comment on column SHENYU_LOCK.CLIENT_ID
  is 'CLIENT_ID';
comment on column SHENYU_LOCK.CREATED_DATE
  is 'CREATED_DATE';


INSERT /*+ IGNORE_ROW_ON_DUPKEY_INDEX("resource" (id)) */ INTO "resource"  (id, parent_id, title, name, url, component, resource_type, sort, icon, is_leaf, is_route, perms, status) VALUES('1347048240677269503','1346777766301888512','SHENYU.PLUGIN.BATCH.OPENED','','','','2','3','','1','0','system:authen:open','1');
INSERT /*+ IGNORE_ROW_ON_DUPKEY_INDEX (permission(id)) */ INTO permission (id, object_id, resource_id) VALUES ('1351007708748849151', '1346358560427216896', '1347048240677269503');

INSERT /*+ IGNORE_ROW_ON_DUPKEY_INDEX("resource" (id)) */ INTO "resource"  (id, parent_id, title, name, url, component, resource_type, sort, icon, is_leaf, is_route, perms, status) VALUES('1386680049203195915','1346777157943259136','SHENYU.COMMON.EXPORT', '', '', '', 2, 0, '', 1, 0, 'system:manager:exportConfig', 1);
INSERT /*+ IGNORE_ROW_ON_DUPKEY_INDEX("resource" (id)) */ INTO "resource"  (id, parent_id, title, name, url, component, resource_type, sort, icon, is_leaf, is_route, perms, status) VALUES('1386680049203195916','1346777157943259136','SHENYU.COMMON.IMPORT', '', '', '', 2, 0, '', 1, 0, 'system:manager:importConfig', 1);
INSERT /*+ IGNORE_ROW_ON_DUPKEY_INDEX (permission(id)) */ INTO permission (id, object_id, resource_id) VALUES ('1386680049203195906', '1346358560427216896', '1386680049203195915');
INSERT /*+ IGNORE_ROW_ON_DUPKEY_INDEX (permission(id)) */ INTO permission (id, object_id, resource_id) VALUES ('1386680049203195907', '1346358560427216896', '1386680049203195916');


-- ----------------------------
-- Table structure for cluster_master
-- ----------------------------
create table cluster_master
(
    id                   varchar(128)   not null,
    master_host          varchar(255)   not null,
    master_port          varchar(255)   not null,
    context_path          varchar(255)   not null,
    date_created      timestamp(3) default SYSDATE not null,
    date_updated      timestamp(3) default SYSDATE not null,
    PRIMARY KEY (id)
)
;
-- Add comments to the columns
comment
on column alert_receiver.id
  is 'primary key id';
comment
on column alert_receiver.master_host
  is 'master host';
comment
on column alert_receiver.master_port
  is 'master port';
comment
on column alert_receiver.context_path
  is 'master context_path';
comment
on column alert_receiver.date_created
  is 'create time';
comment
on column alert_receiver.date_updated
  is 'update time';