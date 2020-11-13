/*
 Navicat Premium Data Transfer

 Source Server         : localhost_5433
 Source Server Type    : PostgreSQL
 Source Server Version : 130000
 Source Host           : 127.0.0.1:5432
 Source Catalog        : pg_adp
 Source Schema         : adp

 Target Server Type    : PostgreSQL
 Target Server Version : 130000
 File Encoding         : 65001

 Date: 13/11/2020 09:24:57
*/


-- ----------------------------
-- Sequence structure for gen_table_column_column_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "adp"."gen_table_column_column_id_seq";
CREATE SEQUENCE "adp"."gen_table_column_column_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;

-- ----------------------------
-- Sequence structure for gen_table_table_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "adp"."gen_table_table_id_seq";
CREATE SEQUENCE "adp"."gen_table_table_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;

-- ----------------------------
-- Sequence structure for sys_config_config_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "adp"."sys_config_config_id_seq";
CREATE SEQUENCE "adp"."sys_config_config_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;

-- ----------------------------
-- Sequence structure for sys_dept_dept_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "adp"."sys_dept_dept_id_seq";
CREATE SEQUENCE "adp"."sys_dept_dept_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;

-- ----------------------------
-- Sequence structure for sys_dict_data_dict_code_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "adp"."sys_dict_data_dict_code_seq";
CREATE SEQUENCE "adp"."sys_dict_data_dict_code_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;

-- ----------------------------
-- Sequence structure for sys_dict_type_dict_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "adp"."sys_dict_type_dict_id_seq";
CREATE SEQUENCE "adp"."sys_dict_type_dict_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;

-- ----------------------------
-- Sequence structure for sys_job_job_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "adp"."sys_job_job_id_seq";
CREATE SEQUENCE "adp"."sys_job_job_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;

-- ----------------------------
-- Sequence structure for sys_job_log_job_log_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "adp"."sys_job_log_job_log_id_seq";
CREATE SEQUENCE "adp"."sys_job_log_job_log_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;

-- ----------------------------
-- Sequence structure for sys_logininfor_info_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "adp"."sys_logininfor_info_id_seq";
CREATE SEQUENCE "adp"."sys_logininfor_info_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;

-- ----------------------------
-- Sequence structure for sys_menu_menu_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "adp"."sys_menu_menu_id_seq";
CREATE SEQUENCE "adp"."sys_menu_menu_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;

-- ----------------------------
-- Sequence structure for sys_notice_notice_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "adp"."sys_notice_notice_id_seq";
CREATE SEQUENCE "adp"."sys_notice_notice_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;

-- ----------------------------
-- Sequence structure for sys_oper_log_oper_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "adp"."sys_oper_log_oper_id_seq";
CREATE SEQUENCE "adp"."sys_oper_log_oper_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;

-- ----------------------------
-- Sequence structure for sys_post_post_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "adp"."sys_post_post_id_seq";
CREATE SEQUENCE "adp"."sys_post_post_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;

-- ----------------------------
-- Sequence structure for sys_role_role_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "adp"."sys_role_role_id_seq";
CREATE SEQUENCE "adp"."sys_role_role_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;

-- ----------------------------
-- Sequence structure for sys_user_user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "adp"."sys_user_user_id_seq";
CREATE SEQUENCE "adp"."sys_user_user_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS "adp"."gen_table";
CREATE TABLE "adp"."gen_table" (
  "table_id" int8 NOT NULL DEFAULT nextval('"adp".gen_table_table_id_seq'::regclass),
  "table_name" varchar(200) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "table_comment" varchar(500) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "sub_table_name" varchar(64) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "sub_table_fk_name" varchar(64) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "class_name" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "tpl_category" varchar(200) COLLATE "pg_catalog"."default" DEFAULT 'crud'::character varying,
  "package_name" varchar(100) COLLATE "pg_catalog"."default",
  "module_name" varchar(30) COLLATE "pg_catalog"."default",
  "business_name" varchar(30) COLLATE "pg_catalog"."default",
  "function_name" varchar(50) COLLATE "pg_catalog"."default",
  "function_author" varchar(50) COLLATE "pg_catalog"."default",
  "gen_type" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "gen_path" varchar(200) COLLATE "pg_catalog"."default" DEFAULT '/'::character varying,
  "options" varchar(1000) COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying
)
;
COMMENT ON COLUMN "adp"."gen_table"."table_id" IS '编号';
COMMENT ON COLUMN "adp"."gen_table"."table_name" IS '表名称';
COMMENT ON COLUMN "adp"."gen_table"."table_comment" IS '表描述';
COMMENT ON COLUMN "adp"."gen_table"."sub_table_name" IS '关联子表的表名';
COMMENT ON COLUMN "adp"."gen_table"."sub_table_fk_name" IS '子表关联的外键名';
COMMENT ON COLUMN "adp"."gen_table"."class_name" IS '实体类名称';
COMMENT ON COLUMN "adp"."gen_table"."tpl_category" IS '使用的模板（crud单表操作 tree树表操作 sub主子表操作）';
COMMENT ON COLUMN "adp"."gen_table"."package_name" IS '生成包路径';
COMMENT ON COLUMN "adp"."gen_table"."module_name" IS '生成模块名';
COMMENT ON COLUMN "adp"."gen_table"."business_name" IS '生成业务名';
COMMENT ON COLUMN "adp"."gen_table"."function_name" IS '生成功能名';
COMMENT ON COLUMN "adp"."gen_table"."function_author" IS '生成功能作者';
COMMENT ON COLUMN "adp"."gen_table"."gen_type" IS '生成代码方式（0zip压缩包 1自定义路径）';
COMMENT ON COLUMN "adp"."gen_table"."gen_path" IS '生成路径（不填默认项目路径）';
COMMENT ON COLUMN "adp"."gen_table"."options" IS '其它生成选项';
COMMENT ON COLUMN "adp"."gen_table"."create_by" IS '创建者';
COMMENT ON COLUMN "adp"."gen_table"."create_time" IS '创建时间';
COMMENT ON COLUMN "adp"."gen_table"."update_by" IS '更新者';
COMMENT ON COLUMN "adp"."gen_table"."update_time" IS '更新时间';
COMMENT ON COLUMN "adp"."gen_table"."remark" IS '备注';
COMMENT ON TABLE "adp"."gen_table" IS '代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO "adp"."gen_table" VALUES (161, 'rsh_jcxqfx_xqxx', '空间物体合作监测管理_监测需求分析_需求信息', NULL, NULL, 'RshJcxqfxXqxx', 'crud', 'com.adp.system', 'system', 'xqxx', '空间物体合作监测管理_监测需求分析_需求信息', 'adp', '0', '/', NULL, 'admin', '2020-11-12 09:42:26.4475', '', NULL, NULL);
INSERT INTO "adp"."gen_table" VALUES (162, 'rsh_jcxqfx_xqxx_jcrw', '监测设备管理平台_监测需求分析_监测任务', NULL, NULL, 'RshJcxqfxXqxxJcrw', 'crud', 'com.adp.system', 'system', 'jcrw', '监测设备管理平台_监测需求分析_监测任务', 'adp', '0', '/', NULL, 'admin', '2020-11-12 09:42:26.4475', '', NULL, NULL);
INSERT INTO "adp"."gen_table" VALUES (163, 'rsh_jcxqfx_xqxx_mbxx', '空间物体合作监测管理_监测需求分析_需求信息_目标信息', NULL, NULL, 'RshJcxqfxXqxxMbxx', 'crud', 'com.adp.system', 'system', 'mbxx', '空间物体合作监测管理_监测需求分析_需求信息_目标信息', 'adp', '0', '/', NULL, 'admin', '2020-11-12 09:42:26.4475', '', NULL, NULL);
INSERT INTO "adp"."gen_table" VALUES (164, 'rsh_jcxqfx_xqxx_tqxx', '空间物体合作监测管理_监测需求分析_需求信息_天区信息', NULL, NULL, 'RshJcxqfxXqxxTqxx', 'crud', 'com.adp.system', 'system', 'tqxx', '空间物体合作监测管理_监测需求分析_需求信息_天区信息', 'adp', '0', '/', NULL, 'admin', '2020-11-12 09:42:26.4475', '', NULL, NULL);
INSERT INTO "adp"."gen_table" VALUES (201, 'rsh_jcxqfx_mbq', '', NULL, NULL, 'RshJcxqfxMbq', 'crud', 'com.adp.system', 'system', 'mbq', NULL, 'adp', '0', '/', NULL, 'admin', '2020-11-12 09:44:58.660206', '', NULL, NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS "adp"."gen_table_column";
CREATE TABLE "adp"."gen_table_column" (
  "column_id" int8 NOT NULL DEFAULT nextval('"adp".gen_table_column_column_id_seq'::regclass),
  "table_id" int8,
  "column_name" varchar(200) COLLATE "pg_catalog"."default",
  "column_comment" varchar(500) COLLATE "pg_catalog"."default",
  "column_type" varchar(100) COLLATE "pg_catalog"."default",
  "java_type" varchar(500) COLLATE "pg_catalog"."default",
  "java_field" varchar(200) COLLATE "pg_catalog"."default",
  "is_pk" char(1) COLLATE "pg_catalog"."default",
  "is_increment" char(1) COLLATE "pg_catalog"."default",
  "is_required" char(1) COLLATE "pg_catalog"."default",
  "is_insert" char(1) COLLATE "pg_catalog"."default",
  "is_edit" char(1) COLLATE "pg_catalog"."default",
  "is_list" char(1) COLLATE "pg_catalog"."default",
  "is_query" char(1) COLLATE "pg_catalog"."default",
  "query_type" varchar(200) COLLATE "pg_catalog"."default" DEFAULT 'EQ'::character varying,
  "html_type" varchar(200) COLLATE "pg_catalog"."default",
  "dict_type" varchar(200) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "sort" int4,
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "adp"."gen_table_column"."column_id" IS '编号';
COMMENT ON COLUMN "adp"."gen_table_column"."table_id" IS '归属表编号';
COMMENT ON COLUMN "adp"."gen_table_column"."column_name" IS '列名称';
COMMENT ON COLUMN "adp"."gen_table_column"."column_comment" IS '列描述';
COMMENT ON COLUMN "adp"."gen_table_column"."column_type" IS '列类型';
COMMENT ON COLUMN "adp"."gen_table_column"."java_type" IS 'JAVA类型';
COMMENT ON COLUMN "adp"."gen_table_column"."java_field" IS 'JAVA字段名';
COMMENT ON COLUMN "adp"."gen_table_column"."is_pk" IS '是否主键（1是）';
COMMENT ON COLUMN "adp"."gen_table_column"."is_increment" IS '是否自增（1是）';
COMMENT ON COLUMN "adp"."gen_table_column"."is_required" IS '是否必填（1是）';
COMMENT ON COLUMN "adp"."gen_table_column"."is_insert" IS '是否为插入字段（1是）';
COMMENT ON COLUMN "adp"."gen_table_column"."is_edit" IS '是否编辑字段（1是）';
COMMENT ON COLUMN "adp"."gen_table_column"."is_list" IS '是否列表字段（1是）';
COMMENT ON COLUMN "adp"."gen_table_column"."is_query" IS '是否查询字段（1是）';
COMMENT ON COLUMN "adp"."gen_table_column"."query_type" IS '查询方式（等于、不等于、大于、小于、范围）';
COMMENT ON COLUMN "adp"."gen_table_column"."html_type" IS '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）';
COMMENT ON COLUMN "adp"."gen_table_column"."dict_type" IS '字典类型';
COMMENT ON COLUMN "adp"."gen_table_column"."sort" IS '排序';
COMMENT ON COLUMN "adp"."gen_table_column"."create_by" IS '创建者';
COMMENT ON COLUMN "adp"."gen_table_column"."create_time" IS '创建时间';
COMMENT ON COLUMN "adp"."gen_table_column"."update_by" IS '更新者';
COMMENT ON COLUMN "adp"."gen_table_column"."update_time" IS '更新时间';
COMMENT ON TABLE "adp"."gen_table_column" IS '代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO "adp"."gen_table_column" VALUES (161, 161, 'reqnum', '需求编号', 'varchar', 'String', 'reqnum', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (162, 161, 'reqname', '需求名称', 'varchar', 'String', 'reqname', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (163, 161, 'reqsource', '需求来源', 'varchar', 'String', 'reqsource', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (164, 161, 'reqstarttime', '需求开始时间', 'date', 'Date', 'reqstarttime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (165, 161, 'reqendtime', '需求结束时间', 'date', 'Date', 'reqendtime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (166, 161, 'reqtype', '需求类型', 'varchar', 'String', 'reqtype', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 6, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (167, 161, 'reqpriority', '需求优先级', 'varchar', 'String', 'reqpriority', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (168, 161, 'reqstate', '需求状态', 'varchar', 'String', 'reqstate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (169, 161, 'recievetime', '需求下达时间', 'date', 'Date', 'recievetime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 9, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (170, 161, 'issynergy', '是否协同', 'varchar', 'String', 'issynergy', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (171, 161, 'circletime', '监测圈次', 'varchar', 'String', 'circletime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (172, 161, 'precision', '监测精度', 'varchar', 'String', 'precision', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (173, 161, 'isimaging', '是否需要成像', 'varchar', 'String', 'isimaging', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (261, 201, 'sign', '标签', 'varchar', 'String', 'sign', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 1, 'admin', '2020-11-12 09:44:58.660206', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (262, 201, 'targrtnum', '目标编号', 'varchar', 'String', 'targrtnum', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 2, 'admin', '2020-11-12 09:44:58.660206', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (263, 201, 'reqnum', NULL, 'varchar', 'String', 'reqnum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-11-12 09:44:58.660206', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (264, 201, 'rsh_targrtnum', NULL, 'varchar', 'String', 'rshTargrtnum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-11-12 09:44:58.660206', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (265, 201, 'create_by', '创建者', 'varchar', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 5, 'admin', '2020-11-12 09:44:58.660206', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (266, 201, 'create_time', '创建时间', 'date', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2020-11-12 09:44:58.660206', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (267, 201, 'update_by', '更新者', 'varchar', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2020-11-12 09:44:58.660206', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (268, 201, 'update_time', '更新时间', 'date', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2020-11-12 09:44:58.660206', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (269, 201, 'del_flag', '删除标志（0代表存在 2代表删除）', 'varchar', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2020-11-12 09:44:58.660206', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (174, 161, 'minarclength', '最短弧长限制', 'varchar', 'String', 'minarclength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (175, 161, 'obstimes', '观测频次', 'varchar', 'String', 'obstimes', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (176, 161, 'exposuretime', '曝光时间', 'varchar', 'String', 'exposuretime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (177, 161, 'exposureinterval', '曝光间隔', 'varchar', 'String', 'exposureinterval', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (178, 161, 'photoframe', '拍摄帧数', 'varchar', 'String', 'photoframe', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (179, 161, 'cameraincrease', '相机增益', 'varchar', 'String', 'cameraincrease', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 19, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (180, 161, 'workmode', '工作模式', 'varchar', 'String', 'workmode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 20, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (181, 161, 'create_time', '入库时间', 'date', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 21, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (182, 161, 'create_by', '创建者', 'varchar', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 22, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (183, 161, 'update_by', '更新者', 'varchar', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 23, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (184, 161, 'update_time', '更新时间', 'date', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 24, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (185, 161, 'del_flag', '删除标志（0代表存在 2代表删除）', 'varchar', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 25, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (186, 162, 'reqnum', NULL, 'varchar', 'String', 'reqnum', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (187, 162, 'targrtnum', NULL, 'varchar', 'String', 'targrtnum', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 2, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (188, 162, 'rsh_reqnum', NULL, 'varchar', 'String', 'rshReqnum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (189, 162, 'tasktype', NULL, 'varchar', 'String', 'tasktype', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 4, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (190, 162, 'targetname', NULL, 'varchar', 'String', 'targetname', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (191, 162, 'targettype', NULL, 'varchar', 'String', 'targettype', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 6, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (192, 162, 'starttime', NULL, 'date', 'Date', 'starttime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (193, 162, 'endtime', NULL, 'date', 'Date', 'endtime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 8, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (194, 162, 'priority', NULL, 'varchar', 'String', 'priority', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (195, 162, 'circletime', NULL, 'varchar', 'String', 'circletime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (196, 162, 'precision', NULL, 'varchar', 'String', 'precision', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (197, 162, 'isimaging', NULL, 'varchar', 'String', 'isimaging', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (198, 162, 'minarclength', NULL, 'varchar', 'String', 'minarclength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (199, 162, 'obstimes', NULL, 'varchar', 'String', 'obstimes', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (200, 162, 'exposuretime', NULL, 'varchar', 'String', 'exposuretime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (201, 162, 'exposureinterval', NULL, 'varchar', 'String', 'exposureinterval', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (202, 162, 'photoframe', NULL, 'varchar', 'String', 'photoframe', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (203, 162, 'cameraincrease', NULL, 'varchar', 'String', 'cameraincrease', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (204, 162, 'pointangle', NULL, 'varchar', 'String', 'pointangle', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 19, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (205, 162, 'workmode', NULL, 'varchar', 'String', 'workmode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 20, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (206, 162, 'station', NULL, 'varchar', 'String', 'station', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 21, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (207, 162, 'equipment', NULL, 'varchar', 'String', 'equipment', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 22, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (208, 162, 'monstate', NULL, 'varchar', 'String', 'monstate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 23, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (209, 162, 'create_time', '创建时间', 'date', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 24, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (210, 162, 'create_by', '创建者', 'varchar', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 25, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (211, 162, 'update_time', '更新时间', 'date', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 26, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (212, 162, 'update_by', '更新者', 'varchar', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 27, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (213, 162, 'del_flag', '删除标志（0代表存在 2代表删除）', 'varchar', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 28, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (214, 163, 'reqnum', '需求编号', 'varchar', 'String', 'reqnum', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (215, 163, 'reqnum', '需求编号', 'varchar', 'String', 'reqnum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 1, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (216, 163, 'targrtnum', '目标编号', 'varchar', 'String', 'targrtnum', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 2, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (217, 163, 'priority', '优先级', 'varchar', 'String', 'priority', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (218, 163, 'targetname', '目标名称', 'varchar', 'String', 'targetname', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (219, 163, 'targettype', '目标类型', 'varchar', 'String', 'targettype', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 5, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (220, 163, 'create_time', '创建时间', 'date', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (221, 163, 'create_by', '创建者', 'varchar', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (222, 163, 'update_time', '更新时间', 'date', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (223, 163, 'update_by', '更新者', 'varchar', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (224, 163, 'del_flag', '删除标志（0代表存在 2代表删除）', 'varchar', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (225, 164, 'reqnum', NULL, 'varchar', 'String', 'reqnum', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (226, 164, 'targrtnum', NULL, 'varchar', 'String', 'targrtnum', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 2, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (227, 164, 'targrtnum', NULL, 'varchar', 'String', 'targrtnum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (228, 164, 'targetname', NULL, 'varchar', 'String', 'targetname', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (229, 164, 'priority', NULL, 'varchar', 'String', 'priority', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (230, 164, 'create_time', '创建时间', 'date', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (231, 164, 'create_by', '创建者', 'varchar', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 6, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (232, 164, 'update_by', '更新者', 'varchar', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (233, 164, 'update_time', '更新时间', 'date', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2020-11-12 09:42:26.4475', '', NULL);
INSERT INTO "adp"."gen_table_column" VALUES (234, 164, 'del_flag', '删除标志（0代表存在 2代表删除）', 'varchar', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2020-11-12 09:42:26.4475', '', NULL);

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS "adp"."qrtz_blob_triggers";
CREATE TABLE "adp"."qrtz_blob_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "blob_data" bytea
)
;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS "adp"."qrtz_calendars";
CREATE TABLE "adp"."qrtz_calendars" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "calendar_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "calendar" bytea NOT NULL
)
;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS "adp"."qrtz_cron_triggers";
CREATE TABLE "adp"."qrtz_cron_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "cron_expression" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "time_zone_id" varchar(80) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO "adp"."qrtz_cron_triggers" VALUES ('adpScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');
INSERT INTO "adp"."qrtz_cron_triggers" VALUES ('adpScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO "adp"."qrtz_cron_triggers" VALUES ('adpScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS "adp"."qrtz_fired_triggers";
CREATE TABLE "adp"."qrtz_fired_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "entry_id" varchar(95) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "instance_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "fired_time" int8 NOT NULL,
  "sched_time" int8 NOT NULL,
  "priority" int4 NOT NULL,
  "state" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "job_name" varchar(200) COLLATE "pg_catalog"."default",
  "job_group" varchar(200) COLLATE "pg_catalog"."default",
  "is_nonconcurrent" bool,
  "requests_recovery" bool
)
;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS "adp"."qrtz_job_details";
CREATE TABLE "adp"."qrtz_job_details" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "job_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "job_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(250) COLLATE "pg_catalog"."default",
  "job_class_name" varchar(250) COLLATE "pg_catalog"."default" NOT NULL,
  "is_durable" bool NOT NULL,
  "is_nonconcurrent" bool NOT NULL,
  "is_update_data" bool NOT NULL,
  "requests_recovery" bool NOT NULL,
  "job_data" bytea
)
;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO "adp"."qrtz_job_details" VALUES ('adpScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.adp.quartz.util.QuartzDisallowConcurrentExecution', 'f', 't', 'f', 'f', E'\\254\\355\\000\\005sr\\000\\025org.quartz.JobDataMap\\237\\260\\203\\350\\277\\251\\260\\313\\002\\000\\000xr\\000&org.quartz.utils.StringKeyDirtyFlagMap\\202\\010\\350\\303\\373\\305](\\002\\000\\001Z\\000\\023allowsTransientDataxr\\000\\035org.quartz.utils.DirtyFlagMap\\023\\346.\\255(v\\012\\316\\002\\000\\002Z\\000\\005dirtyL\\000\\003mapt\\000\\017Ljava/util/Map;xp\\001sr\\000\\021java.util.HashMap\\005\\007\\332\\301\\303\\026`\\321\\003\\000\\002F\\000\\012loadFactorI\\000\\011thresholdxp?@\\000\\000\\000\\000\\000\\014w\\010\\000\\000\\000\\020\\000\\000\\000\\001t\\000\\017TASK_PROPERTIESsr\\000\\034com.adp.quartz.domain.SysJob\\000\\000\\000\\000\\000\\000\\000\\001\\002\\000\\010L\\000\\012concurrentt\\000\\022Ljava/lang/String;L\\000\\016cronExpressionq\\000~\\000\\011L\\000\\014invokeTargetq\\000~\\000\\011L\\000\\010jobGroupq\\000~\\000\\011L\\000\\005jobIdt\\000\\020Ljava/lang/Long;L\\000\\007jobNameq\\000~\\000\\011L\\000\\015misfirePolicyq\\000~\\000\\011L\\000\\006statusq\\000~\\000\\011xr\\000%com.adp.common.core.domain.BaseEntity\\000\\000\\000\\000\\000\\000\\000\\001\\002\\000\\007L\\000\\010createByq\\000~\\000\\011L\\000\\012createTimet\\000\\020Ljava/util/Date;L\\000\\006paramsq\\000~\\000\\003L\\000\\006remarkq\\000~\\000\\011L\\000\\013searchValueq\\000~\\000\\011L\\000\\010updateByq\\000~\\000\\011L\\000\\012updateTimeq\\000~\\000\\014xpt\\000\\005adminsr\\000\\016java.util.Datehj\\201\\001KYt\\031\\003\\000\\000xpw\\010\\000\\000\\001u\\2602;pxpt\\000\\000pppt\\000\\0011t\\000\\0160/20 * * * * ?t\\0008ryTask.ryMultipleParams(''ry'', true, 2000L, 316.50D, 100)t\\000\\007DEFAULTsr\\000\\016java.lang.Long;\\213\\344\\220\\314\\217#\\337\\002\\000\\001J\\000\\005valuexr\\000\\020java.lang.Number\\206\\254\\225\\035\\013\\224\\340\\213\\002\\000\\000xp\\000\\000\\000\\000\\000\\000\\000\\003t\\000\\030\\347\\263\\273\\347\\273\\237\\351\\273\\230\\350\\256\\244\\357\\274\\210\\345\\244\\232\\345\\217\\202\\357\\274\\211t\\000\\0013t\\000\\0011x\\000');
INSERT INTO "adp"."qrtz_job_details" VALUES ('adpScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.adp.quartz.util.QuartzDisallowConcurrentExecution', 'f', 't', 'f', 'f', E'\\254\\355\\000\\005sr\\000\\025org.quartz.JobDataMap\\237\\260\\203\\350\\277\\251\\260\\313\\002\\000\\000xr\\000&org.quartz.utils.StringKeyDirtyFlagMap\\202\\010\\350\\303\\373\\305](\\002\\000\\001Z\\000\\023allowsTransientDataxr\\000\\035org.quartz.utils.DirtyFlagMap\\023\\346.\\255(v\\012\\316\\002\\000\\002Z\\000\\005dirtyL\\000\\003mapt\\000\\017Ljava/util/Map;xp\\001sr\\000\\021java.util.HashMap\\005\\007\\332\\301\\303\\026`\\321\\003\\000\\002F\\000\\012loadFactorI\\000\\011thresholdxp?@\\000\\000\\000\\000\\000\\014w\\010\\000\\000\\000\\020\\000\\000\\000\\001t\\000\\017TASK_PROPERTIESsr\\000\\034com.adp.quartz.domain.SysJob\\000\\000\\000\\000\\000\\000\\000\\001\\002\\000\\010L\\000\\012concurrentt\\000\\022Ljava/lang/String;L\\000\\016cronExpressionq\\000~\\000\\011L\\000\\014invokeTargetq\\000~\\000\\011L\\000\\010jobGroupq\\000~\\000\\011L\\000\\005jobIdt\\000\\020Ljava/lang/Long;L\\000\\007jobNameq\\000~\\000\\011L\\000\\015misfirePolicyq\\000~\\000\\011L\\000\\006statusq\\000~\\000\\011xr\\000%com.adp.common.core.domain.BaseEntity\\000\\000\\000\\000\\000\\000\\000\\001\\002\\000\\007L\\000\\010createByq\\000~\\000\\011L\\000\\012createTimet\\000\\020Ljava/util/Date;L\\000\\006paramsq\\000~\\000\\003L\\000\\006remarkq\\000~\\000\\011L\\000\\013searchValueq\\000~\\000\\011L\\000\\010updateByq\\000~\\000\\011L\\000\\012updateTimeq\\000~\\000\\014xpt\\000\\005adminsr\\000\\016java.util.Datehj\\201\\001KYt\\031\\003\\000\\000xpw\\010\\000\\000\\001u\\2602;oxpt\\000\\000pppt\\000\\0011t\\000\\0160/15 * * * * ?t\\000\\025ryTask.ryParams(''ry'')t\\000\\007DEFAULTsr\\000\\016java.lang.Long;\\213\\344\\220\\314\\217#\\337\\002\\000\\001J\\000\\005valuexr\\000\\020java.lang.Number\\206\\254\\225\\035\\013\\224\\340\\213\\002\\000\\000xp\\000\\000\\000\\000\\000\\000\\000\\002t\\000\\030\\347\\263\\273\\347\\273\\237\\351\\273\\230\\350\\256\\244\\357\\274\\210\\346\\234\\211\\345\\217\\202\\357\\274\\211t\\000\\0013t\\000\\0011x\\000');
INSERT INTO "adp"."qrtz_job_details" VALUES ('adpScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.adp.quartz.util.QuartzDisallowConcurrentExecution', 'f', 't', 'f', 'f', E'\\254\\355\\000\\005sr\\000\\025org.quartz.JobDataMap\\237\\260\\203\\350\\277\\251\\260\\313\\002\\000\\000xr\\000&org.quartz.utils.StringKeyDirtyFlagMap\\202\\010\\350\\303\\373\\305](\\002\\000\\001Z\\000\\023allowsTransientDataxr\\000\\035org.quartz.utils.DirtyFlagMap\\023\\346.\\255(v\\012\\316\\002\\000\\002Z\\000\\005dirtyL\\000\\003mapt\\000\\017Ljava/util/Map;xp\\001sr\\000\\021java.util.HashMap\\005\\007\\332\\301\\303\\026`\\321\\003\\000\\002F\\000\\012loadFactorI\\000\\011thresholdxp?@\\000\\000\\000\\000\\000\\014w\\010\\000\\000\\000\\020\\000\\000\\000\\001t\\000\\017TASK_PROPERTIESsr\\000\\034com.adp.quartz.domain.SysJob\\000\\000\\000\\000\\000\\000\\000\\001\\002\\000\\010L\\000\\012concurrentt\\000\\022Ljava/lang/String;L\\000\\016cronExpressionq\\000~\\000\\011L\\000\\014invokeTargetq\\000~\\000\\011L\\000\\010jobGroupq\\000~\\000\\011L\\000\\005jobIdt\\000\\020Ljava/lang/Long;L\\000\\007jobNameq\\000~\\000\\011L\\000\\015misfirePolicyq\\000~\\000\\011L\\000\\006statusq\\000~\\000\\011xr\\000%com.adp.common.core.domain.BaseEntity\\000\\000\\000\\000\\000\\000\\000\\001\\002\\000\\007L\\000\\010createByq\\000~\\000\\011L\\000\\012createTimet\\000\\020Ljava/util/Date;L\\000\\006paramsq\\000~\\000\\003L\\000\\006remarkq\\000~\\000\\011L\\000\\013searchValueq\\000~\\000\\011L\\000\\010updateByq\\000~\\000\\011L\\000\\012updateTimeq\\000~\\000\\014xpt\\000\\005adminsr\\000\\016java.util.Datehj\\201\\001KYt\\031\\003\\000\\000xpw\\010\\000\\000\\001u\\2602;mxpt\\000\\000pppt\\000\\0011t\\000\\0160/10 * * * * ?t\\000\\021ryTask.ryNoParamst\\000\\007DEFAULTsr\\000\\016java.lang.Long;\\213\\344\\220\\314\\217#\\337\\002\\000\\001J\\000\\005valuexr\\000\\020java.lang.Number\\206\\254\\225\\035\\013\\224\\340\\213\\002\\000\\000xp\\000\\000\\000\\000\\000\\000\\000\\001t\\000\\030\\347\\263\\273\\347\\273\\237\\351\\273\\230\\350\\256\\244\\357\\274\\210\\346\\227\\240\\345\\217\\202\\357\\274\\211t\\000\\0013t\\000\\0011x\\000');

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS "adp"."qrtz_locks";
CREATE TABLE "adp"."qrtz_locks" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "lock_name" varchar(40) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO "adp"."qrtz_locks" VALUES ('adpScheduler', 'TRIGGER_ACCESS');
INSERT INTO "adp"."qrtz_locks" VALUES ('adpScheduler', 'STATE_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS "adp"."qrtz_paused_trigger_grps";
CREATE TABLE "adp"."qrtz_paused_trigger_grps" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS "adp"."qrtz_scheduler_state";
CREATE TABLE "adp"."qrtz_scheduler_state" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "instance_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "last_checkin_time" int8 NOT NULL,
  "checkin_interval" int8 NOT NULL
)
;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO "adp"."qrtz_scheduler_state" VALUES ('adpScheduler', 'PC-20190721YVJE1605230635490', 1605230699338, 15000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS "adp"."qrtz_simple_triggers";
CREATE TABLE "adp"."qrtz_simple_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "repeat_count" int8 NOT NULL,
  "repeat_interval" int8 NOT NULL,
  "times_triggered" int8 NOT NULL
)
;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS "adp"."qrtz_simprop_triggers";
CREATE TABLE "adp"."qrtz_simprop_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "str_prop_1" varchar(512) COLLATE "pg_catalog"."default",
  "str_prop_2" varchar(512) COLLATE "pg_catalog"."default",
  "str_prop_3" varchar(512) COLLATE "pg_catalog"."default",
  "int_prop_1" int4,
  "int_prop_2" int4,
  "long_prop_1" int8,
  "long_prop_2" int8,
  "dec_prop_1" numeric(13,4),
  "dec_prop_2" numeric(13,4),
  "bool_prop_1" bool,
  "bool_prop_2" bool
)
;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS "adp"."qrtz_triggers";
CREATE TABLE "adp"."qrtz_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "job_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "job_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(250) COLLATE "pg_catalog"."default",
  "next_fire_time" int8,
  "prev_fire_time" int8,
  "priority" int4,
  "trigger_state" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_type" varchar(8) COLLATE "pg_catalog"."default" NOT NULL,
  "start_time" int8 NOT NULL,
  "end_time" int8,
  "calendar_name" varchar(200) COLLATE "pg_catalog"."default",
  "misfire_instr" int2,
  "job_data" bytea
)
;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO "adp"."qrtz_triggers" VALUES ('adpScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1605230640000, -1, 5, 'PAUSED', 'CRON', 1605230635000, 0, NULL, 2, E'\\\\x');
INSERT INTO "adp"."qrtz_triggers" VALUES ('adpScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1605230640000, -1, 5, 'PAUSED', 'CRON', 1605230635000, 0, NULL, 2, E'\\\\x');
INSERT INTO "adp"."qrtz_triggers" VALUES ('adpScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1605230640000, -1, 5, 'PAUSED', 'CRON', 1605230635000, 0, NULL, 2, E'\\\\x');

-- ----------------------------
-- Table structure for rsh_jcxqfx_mbq
-- ----------------------------
DROP TABLE IF EXISTS "adp"."rsh_jcxqfx_mbq";
CREATE TABLE "adp"."rsh_jcxqfx_mbq" (
  "sign" varchar(20) COLLATE "pg_catalog"."default",
  "targrtnum" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
  "reqnum" varchar(20) COLLATE "pg_catalog"."default",
  "rsh_targrtnum" varchar(10) COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" date,
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" date,
  "del_flag" varchar(1) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "adp"."rsh_jcxqfx_mbq"."sign" IS '标签';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_mbq"."targrtnum" IS '目标编号';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_mbq"."create_by" IS '创建者';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_mbq"."create_time" IS '创建时间';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_mbq"."update_by" IS '更新者';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_mbq"."update_time" IS '更新时间';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_mbq"."del_flag" IS '删除标志（0代表存在 2代表删除）';
COMMENT ON TABLE "adp"."rsh_jcxqfx_mbq" IS '监测设备管理平台_监测需求分析_目标群';

-- ----------------------------
-- Records of rsh_jcxqfx_mbq
-- ----------------------------

-- ----------------------------
-- Table structure for rsh_jcxqfx_xqxx
-- ----------------------------
DROP TABLE IF EXISTS "adp"."rsh_jcxqfx_xqxx";
CREATE TABLE "adp"."rsh_jcxqfx_xqxx" (
  "reqnum" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "reqname" varchar(50) COLLATE "pg_catalog"."default",
  "reqsource" varchar(20) COLLATE "pg_catalog"."default",
  "reqstarttime" date,
  "reqendtime" date,
  "reqtype" varchar(20) COLLATE "pg_catalog"."default",
  "reqpriority" varchar(5) COLLATE "pg_catalog"."default",
  "reqstate" varchar(20) COLLATE "pg_catalog"."default",
  "recievetime" date,
  "issynergy" varchar(10) COLLATE "pg_catalog"."default",
  "circletime" varchar(10) COLLATE "pg_catalog"."default",
  "precision" varchar(10) COLLATE "pg_catalog"."default",
  "isimaging" varchar(10) COLLATE "pg_catalog"."default",
  "minarclength" varchar(10) COLLATE "pg_catalog"."default",
  "obstimes" varchar(10) COLLATE "pg_catalog"."default",
  "exposuretime" varchar(10) COLLATE "pg_catalog"."default",
  "exposureinterval" varchar(50) COLLATE "pg_catalog"."default",
  "photoframe" varchar(50) COLLATE "pg_catalog"."default",
  "cameraincrease" varchar(20) COLLATE "pg_catalog"."default",
  "workmode" varchar(20) COLLATE "pg_catalog"."default",
  "create_time" date,
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" date,
  "del_flag" varchar(1) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx"."reqnum" IS '需求编号';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx"."reqname" IS '需求名称';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx"."reqsource" IS '需求来源';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx"."reqstarttime" IS '需求开始时间';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx"."reqendtime" IS '需求结束时间';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx"."reqtype" IS '需求类型';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx"."reqpriority" IS '需求优先级';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx"."reqstate" IS '需求状态';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx"."recievetime" IS '需求下达时间';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx"."issynergy" IS '是否协同';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx"."circletime" IS '监测圈次';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx"."precision" IS '监测精度';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx"."isimaging" IS '是否需要成像';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx"."minarclength" IS '最短弧长限制';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx"."obstimes" IS '观测频次';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx"."exposuretime" IS '曝光时间';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx"."exposureinterval" IS '曝光间隔';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx"."photoframe" IS '拍摄帧数';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx"."cameraincrease" IS '相机增益';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx"."workmode" IS '工作模式';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx"."create_time" IS '入库时间';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx"."create_by" IS '创建者';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx"."update_by" IS '更新者';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx"."update_time" IS '更新时间';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx"."del_flag" IS '删除标志（0代表存在 2代表删除）';
COMMENT ON TABLE "adp"."rsh_jcxqfx_xqxx" IS '空间物体合作监测管理_监测需求分析_需求信息';

-- ----------------------------
-- Records of rsh_jcxqfx_xqxx
-- ----------------------------
INSERT INTO "adp"."rsh_jcxqfx_xqxx" VALUES ('10086', '测试需求信息', '0', '2020-11-11', '2020-11-12', '2', '高', '0', '2020-11-11', 'Y', '1', '1', 'Y', '1', '1', '1', '1', '1', '1', '1', '2020-11-11', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for rsh_jcxqfx_xqxx_jcrw
-- ----------------------------
DROP TABLE IF EXISTS "adp"."rsh_jcxqfx_xqxx_jcrw";
CREATE TABLE "adp"."rsh_jcxqfx_xqxx_jcrw" (
  "reqnum" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "targrtnum" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "rsh_reqnum" varchar(20) COLLATE "pg_catalog"."default",
  "tasktype" varchar(10) COLLATE "pg_catalog"."default",
  "targetname" varchar(50) COLLATE "pg_catalog"."default",
  "targettype" varchar(20) COLLATE "pg_catalog"."default",
  "starttime" date,
  "endtime" date,
  "priority" varchar(5) COLLATE "pg_catalog"."default",
  "circletime" varchar(10) COLLATE "pg_catalog"."default",
  "precision" varchar(10) COLLATE "pg_catalog"."default",
  "isimaging" varchar(10) COLLATE "pg_catalog"."default",
  "minarclength" varchar(10) COLLATE "pg_catalog"."default",
  "obstimes" varchar(10) COLLATE "pg_catalog"."default",
  "exposuretime" varchar(10) COLLATE "pg_catalog"."default",
  "exposureinterval" varchar(50) COLLATE "pg_catalog"."default",
  "photoframe" varchar(50) COLLATE "pg_catalog"."default",
  "cameraincrease" varchar(20) COLLATE "pg_catalog"."default",
  "pointangle" varchar(20) COLLATE "pg_catalog"."default",
  "workmode" varchar(100) COLLATE "pg_catalog"."default",
  "station" varchar(50) COLLATE "pg_catalog"."default",
  "equipment" varchar(50) COLLATE "pg_catalog"."default",
  "monstate" varchar(20) COLLATE "pg_catalog"."default",
  "create_time" date,
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" date,
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "del_flag" varchar(1) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx_jcrw"."create_time" IS '创建时间';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx_jcrw"."create_by" IS '创建者';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx_jcrw"."update_time" IS '更新时间';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx_jcrw"."update_by" IS '更新者';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx_jcrw"."del_flag" IS '删除标志（0代表存在 2代表删除）';
COMMENT ON TABLE "adp"."rsh_jcxqfx_xqxx_jcrw" IS '监测设备管理平台_监测需求分析_监测任务';

-- ----------------------------
-- Records of rsh_jcxqfx_xqxx_jcrw
-- ----------------------------

-- ----------------------------
-- Table structure for rsh_jcxqfx_xqxx_mbxx
-- ----------------------------
DROP TABLE IF EXISTS "adp"."rsh_jcxqfx_xqxx_mbxx";
CREATE TABLE "adp"."rsh_jcxqfx_xqxx_mbxx" (
  "reqnum" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "targrtnum" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "priority" varchar(5) COLLATE "pg_catalog"."default",
  "targetname" varchar(50) COLLATE "pg_catalog"."default",
  "targettype" varchar(20) COLLATE "pg_catalog"."default",
  "create_time" date,
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" date,
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "del_flag" varchar(1) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx_mbxx"."reqnum" IS '需求编号';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx_mbxx"."targrtnum" IS '目标编号';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx_mbxx"."priority" IS '优先级';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx_mbxx"."targetname" IS '目标名称';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx_mbxx"."targettype" IS '目标类型';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx_mbxx"."create_time" IS '创建时间';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx_mbxx"."create_by" IS '创建者';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx_mbxx"."update_time" IS '更新时间';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx_mbxx"."update_by" IS '更新者';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx_mbxx"."del_flag" IS '删除标志（0代表存在 2代表删除）';
COMMENT ON TABLE "adp"."rsh_jcxqfx_xqxx_mbxx" IS '空间物体合作监测管理_监测需求分析_需求信息_目标信息';

-- ----------------------------
-- Records of rsh_jcxqfx_xqxx_mbxx
-- ----------------------------

-- ----------------------------
-- Table structure for rsh_jcxqfx_xqxx_tqxx
-- ----------------------------
DROP TABLE IF EXISTS "adp"."rsh_jcxqfx_xqxx_tqxx";
CREATE TABLE "adp"."rsh_jcxqfx_xqxx_tqxx" (
  "reqnum" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "targrtnum" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "targetname" varchar(50) COLLATE "pg_catalog"."default",
  "priority" varchar(5) COLLATE "pg_catalog"."default",
  "create_time" date,
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" date,
  "del_flag" varchar(1) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx_tqxx"."create_time" IS '创建时间';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx_tqxx"."create_by" IS '创建者';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx_tqxx"."update_by" IS '更新者';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx_tqxx"."update_time" IS '更新时间';
COMMENT ON COLUMN "adp"."rsh_jcxqfx_xqxx_tqxx"."del_flag" IS '删除标志（0代表存在 2代表删除）';
COMMENT ON TABLE "adp"."rsh_jcxqfx_xqxx_tqxx" IS '空间物体合作监测管理_监测需求分析_需求信息_天区信息';

-- ----------------------------
-- Records of rsh_jcxqfx_xqxx_tqxx
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS "adp"."sys_config";
CREATE TABLE "adp"."sys_config" (
  "config_id" int8 NOT NULL DEFAULT nextval('"adp".sys_config_config_id_seq'::regclass),
  "config_name" varchar(100) COLLATE "pg_catalog"."default" DEFAULT '0'::character varying,
  "config_key" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "config_value" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "config_type" char(1) COLLATE "pg_catalog"."default" DEFAULT ''::bpchar,
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;
COMMENT ON COLUMN "adp"."sys_config"."config_id" IS '字典编码';
COMMENT ON COLUMN "adp"."sys_config"."config_name" IS '字典排序';
COMMENT ON COLUMN "adp"."sys_config"."config_key" IS '字典标签';
COMMENT ON COLUMN "adp"."sys_config"."config_value" IS '字典键值';
COMMENT ON COLUMN "adp"."sys_config"."config_type" IS '字典类型';
COMMENT ON COLUMN "adp"."sys_config"."create_by" IS '创建者';
COMMENT ON COLUMN "adp"."sys_config"."create_time" IS '创建时间';
COMMENT ON COLUMN "adp"."sys_config"."update_by" IS '更新者';
COMMENT ON COLUMN "adp"."sys_config"."update_time" IS '更新时间';
COMMENT ON COLUMN "adp"."sys_config"."remark" IS '备注';
COMMENT ON TABLE "adp"."sys_config" IS '参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO "adp"."sys_config" VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2020-11-10 11:28:03.367571', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO "adp"."sys_config" VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2020-11-10 11:28:03.369571', '', NULL, '初始化密码 123456');
INSERT INTO "adp"."sys_config" VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2020-11-10 11:28:03.370571', '', NULL, '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
INSERT INTO "adp"."sys_config" VALUES (4, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2020-11-10 11:28:03.371571', '', NULL, '是否开启注册用户功能');
INSERT INTO "adp"."sys_config" VALUES (5, '用户管理-密码字符范围', 'sys.account.chrtype', '0', 'Y', 'admin', '2020-11-10 11:28:03.371571', '', NULL, '默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数字和特殊字符（目前支持的特殊字符包括：~!@#$%^&*()-=_+）');
INSERT INTO "adp"."sys_config" VALUES (6, '用户管理-初始密码修改策略', 'sys.account.initPasswordModify', '0', 'Y', 'admin', '2020-11-10 11:28:03.372571', '', NULL, '0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框');
INSERT INTO "adp"."sys_config" VALUES (7, '用户管理-账号密码更新周期', 'sys.account.passwordValidateDays', '0', 'Y', 'admin', '2020-11-10 11:28:03.373571', '', NULL, '密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框');
INSERT INTO "adp"."sys_config" VALUES (8, '主框架页-菜单导航显示风格', 'sys.index.menuStyle', 'default', 'Y', 'admin', '2020-11-10 11:28:03.374571', '', NULL, '菜单导航显示风格（default为左侧导航菜单，topnav为顶部导航菜单）');
INSERT INTO "adp"."sys_config" VALUES (9, '主框架页-是否开启页脚', 'sys.index.ignoreFooter', 'true', 'Y', 'admin', '2020-11-10 11:28:03.375571', '', NULL, '是否开启底部页脚显示（true显示，false隐藏）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS "adp"."sys_dept";
CREATE TABLE "adp"."sys_dept" (
  "dept_id" int8 NOT NULL DEFAULT nextval('"adp".sys_dept_dept_id_seq'::regclass),
  "parent_id" int8 DEFAULT 0,
  "ancestors" varchar(50) COLLATE "pg_catalog"."default",
  "dept_name" varchar(30) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "order_num" int4 DEFAULT 0,
  "leader" varchar(20) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "phone" varchar(20) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "email" varchar(20) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "del_flag" char(1) COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "adp"."sys_dept"."dept_id" IS '部门id';
COMMENT ON COLUMN "adp"."sys_dept"."parent_id" IS '父部门id';
COMMENT ON COLUMN "adp"."sys_dept"."ancestors" IS '祖级列表';
COMMENT ON COLUMN "adp"."sys_dept"."dept_name" IS '部门名称';
COMMENT ON COLUMN "adp"."sys_dept"."order_num" IS '显示顺序';
COMMENT ON COLUMN "adp"."sys_dept"."leader" IS '负责人';
COMMENT ON COLUMN "adp"."sys_dept"."phone" IS '联系电话';
COMMENT ON COLUMN "adp"."sys_dept"."email" IS '邮箱';
COMMENT ON COLUMN "adp"."sys_dept"."status" IS '部门状态:0正常,1停用';
COMMENT ON COLUMN "adp"."sys_dept"."del_flag" IS '删除标志（0代表存在 2代表删除）';
COMMENT ON COLUMN "adp"."sys_dept"."create_by" IS '创建者';
COMMENT ON COLUMN "adp"."sys_dept"."create_time" IS '创建时间';
COMMENT ON COLUMN "adp"."sys_dept"."update_by" IS '更新者';
COMMENT ON COLUMN "adp"."sys_dept"."update_time" IS '更新时间';
COMMENT ON TABLE "adp"."sys_dept" IS '部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO "adp"."sys_dept" VALUES (109, 102, '0,100,102', '财务部门', 2, '刘德华', '15888888888', '111@qq.com', '0', '0', 'admin', '2020-11-10 11:28:02.963548', '', NULL);
INSERT INTO "adp"."sys_dept" VALUES (100, 0, '0', '神舟通用', 0, '张学友', '15888888888', '222@qq.com', '0', '0', 'admin', '2020-11-10 11:28:02.956547', '', NULL);
INSERT INTO "adp"."sys_dept" VALUES (101, 100, '0,100', '天津总公司', 1, '郭富城', '15888888888', '333@qq.com', '0', '0', 'admin', '2020-11-10 11:28:02.958548', '', NULL);
INSERT INTO "adp"."sys_dept" VALUES (102, 100, '0,100', '北京分公司', 2, '黎明', '15888888888', '444@qq.com', '0', '0', 'admin', '2020-11-10 11:28:02.959548', '', NULL);
INSERT INTO "adp"."sys_dept" VALUES (103, 101, '0,100,101', '研发部门', 1, '张三', '15888888888', '555@qq.com', '0', '0', 'admin', '2020-11-10 11:28:02.959548', '', NULL);
INSERT INTO "adp"."sys_dept" VALUES (104, 101, '0,100,101', '市场部门', 2, '李四', '15888888888', '666@qq.com', '0', '0', 'admin', '2020-11-10 11:28:02.960548', '', NULL);
INSERT INTO "adp"."sys_dept" VALUES (105, 101, '0,100,101', '测试部门', 3, '王五', '15888888888', '777@qq.com', '0', '0', 'admin', '2020-11-10 11:28:02.961548', '', NULL);
INSERT INTO "adp"."sys_dept" VALUES (106, 101, '0,100,101', '财务部门', 4, '赵六', '15888888888', '888@qq.com', '0', '0', 'admin', '2020-11-10 11:28:02.961548', '', NULL);
INSERT INTO "adp"."sys_dept" VALUES (107, 101, '0,100,101', '运维部门', 5, '孙七', '15888888888', '999@qq.com', '0', '0', 'admin', '2020-11-10 11:28:02.962548', '', NULL);
INSERT INTO "adp"."sys_dept" VALUES (108, 102, '0,100,102', '市场部门', 1, '周八', '15888888888', '000@qq.com', '0', '0', 'admin', '2020-11-10 11:28:02.963548', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS "adp"."sys_dict_data";
CREATE TABLE "adp"."sys_dict_data" (
  "dict_code" int8 NOT NULL DEFAULT nextval('"adp".sys_dict_data_dict_code_seq'::regclass),
  "dict_sort" int4 DEFAULT 0,
  "dict_label" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "dict_value" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "dict_type" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "css_class" varchar(100) COLLATE "pg_catalog"."default",
  "list_class" varchar(100) COLLATE "pg_catalog"."default",
  "is_default" char(1) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;
COMMENT ON COLUMN "adp"."sys_dict_data"."dict_code" IS '字典编码';
COMMENT ON COLUMN "adp"."sys_dict_data"."dict_sort" IS '字典排序';
COMMENT ON COLUMN "adp"."sys_dict_data"."dict_label" IS '字典标签';
COMMENT ON COLUMN "adp"."sys_dict_data"."dict_value" IS '字典键值';
COMMENT ON COLUMN "adp"."sys_dict_data"."dict_type" IS '字典类型';
COMMENT ON COLUMN "adp"."sys_dict_data"."css_class" IS '样式属性（其他样式扩展）';
COMMENT ON COLUMN "adp"."sys_dict_data"."list_class" IS '表格回显样式';
COMMENT ON COLUMN "adp"."sys_dict_data"."is_default" IS '是否默认（Y是 N否）';
COMMENT ON COLUMN "adp"."sys_dict_data"."status" IS '状态（0正常 1禁用）';
COMMENT ON COLUMN "adp"."sys_dict_data"."create_by" IS '创建者';
COMMENT ON COLUMN "adp"."sys_dict_data"."create_time" IS '创建时间';
COMMENT ON COLUMN "adp"."sys_dict_data"."update_by" IS '更新者';
COMMENT ON COLUMN "adp"."sys_dict_data"."update_time" IS '更新时间';
COMMENT ON COLUMN "adp"."sys_dict_data"."remark" IS '备注';
COMMENT ON TABLE "adp"."sys_dict_data" IS '字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO "adp"."sys_dict_data" VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2020-11-10 11:28:03.324568', '', NULL, '性别男');
INSERT INTO "adp"."sys_dict_data" VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2020-11-10 11:28:03.326569', '', NULL, '性别女');
INSERT INTO "adp"."sys_dict_data" VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2020-11-10 11:28:03.326569', '', NULL, '性别未知');
INSERT INTO "adp"."sys_dict_data" VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2020-11-10 11:28:03.327569', '', NULL, '显示菜单');
INSERT INTO "adp"."sys_dict_data" VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2020-11-10 11:28:03.327569', '', NULL, '隐藏菜单');
INSERT INTO "adp"."sys_dict_data" VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2020-11-10 11:28:03.328569', '', NULL, '正常状态');
INSERT INTO "adp"."sys_dict_data" VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2020-11-10 11:28:03.329569', '', NULL, '停用状态');
INSERT INTO "adp"."sys_dict_data" VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2020-11-10 11:28:03.329569', '', NULL, '正常状态');
INSERT INTO "adp"."sys_dict_data" VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2020-11-10 11:28:03.330569', '', NULL, '停用状态');
INSERT INTO "adp"."sys_dict_data" VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2020-11-10 11:28:03.331569', '', NULL, '默认分组');
INSERT INTO "adp"."sys_dict_data" VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2020-11-10 11:28:03.332569', '', NULL, '系统分组');
INSERT INTO "adp"."sys_dict_data" VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2020-11-10 11:28:03.333569', '', NULL, '系统默认是');
INSERT INTO "adp"."sys_dict_data" VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2020-11-10 11:28:03.333569', '', NULL, '系统默认否');
INSERT INTO "adp"."sys_dict_data" VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2020-11-10 11:28:03.334569', '', NULL, '通知');
INSERT INTO "adp"."sys_dict_data" VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2020-11-10 11:28:03.335569', '', NULL, '公告');
INSERT INTO "adp"."sys_dict_data" VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2020-11-10 11:28:03.336569', '', NULL, '正常状态');
INSERT INTO "adp"."sys_dict_data" VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2020-11-10 11:28:03.337569', '', NULL, '关闭状态');
INSERT INTO "adp"."sys_dict_data" VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2020-11-10 11:28:03.337569', '', NULL, '其他操作');
INSERT INTO "adp"."sys_dict_data" VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2020-11-10 11:28:03.338569', '', NULL, '新增操作');
INSERT INTO "adp"."sys_dict_data" VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2020-11-10 11:28:03.339569', '', NULL, '修改操作');
INSERT INTO "adp"."sys_dict_data" VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2020-11-10 11:28:03.340569', '', NULL, '删除操作');
INSERT INTO "adp"."sys_dict_data" VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2020-11-10 11:28:03.340569', '', NULL, '授权操作');
INSERT INTO "adp"."sys_dict_data" VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2020-11-10 11:28:03.341569', '', NULL, '导出操作');
INSERT INTO "adp"."sys_dict_data" VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2020-11-10 11:28:03.34257', '', NULL, '导入操作');
INSERT INTO "adp"."sys_dict_data" VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2020-11-10 11:28:03.34257', '', NULL, '强退操作');
INSERT INTO "adp"."sys_dict_data" VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2020-11-10 11:28:03.34357', '', NULL, '生成操作');
INSERT INTO "adp"."sys_dict_data" VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2020-11-10 11:28:03.34457', '', NULL, '清空操作');
INSERT INTO "adp"."sys_dict_data" VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2020-11-10 11:28:03.34557', '', NULL, '正常状态');
INSERT INTO "adp"."sys_dict_data" VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2020-11-10 11:28:03.34657', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS "adp"."sys_dict_type";
CREATE TABLE "adp"."sys_dict_type" (
  "dict_id" int8 NOT NULL DEFAULT nextval('"adp".sys_dict_type_dict_id_seq'::regclass),
  "dict_name" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "dict_type" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;
COMMENT ON COLUMN "adp"."sys_dict_type"."dict_id" IS '字典主键';
COMMENT ON COLUMN "adp"."sys_dict_type"."dict_name" IS '字典名称';
COMMENT ON COLUMN "adp"."sys_dict_type"."dict_type" IS '字典类型';
COMMENT ON COLUMN "adp"."sys_dict_type"."status" IS '状态（0正常 1禁用）';
COMMENT ON COLUMN "adp"."sys_dict_type"."create_by" IS '创建者';
COMMENT ON COLUMN "adp"."sys_dict_type"."create_time" IS '创建时间';
COMMENT ON COLUMN "adp"."sys_dict_type"."update_by" IS '更新者';
COMMENT ON COLUMN "adp"."sys_dict_type"."update_time" IS '更新时间';
COMMENT ON COLUMN "adp"."sys_dict_type"."remark" IS '备注';
COMMENT ON TABLE "adp"."sys_dict_type" IS '字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO "adp"."sys_dict_type" VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2020-11-10 11:28:03.281566', '', NULL, '用户性别列表');
INSERT INTO "adp"."sys_dict_type" VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2020-11-10 11:28:03.282566', '', NULL, '菜单状态列表');
INSERT INTO "adp"."sys_dict_type" VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2020-11-10 11:28:03.283566', '', NULL, '系统开关列表');
INSERT INTO "adp"."sys_dict_type" VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2020-11-10 11:28:03.284566', '', NULL, '任务状态列表');
INSERT INTO "adp"."sys_dict_type" VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2020-11-10 11:28:03.286566', '', NULL, '任务分组列表');
INSERT INTO "adp"."sys_dict_type" VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2020-11-10 11:28:03.286566', '', NULL, '系统是否列表');
INSERT INTO "adp"."sys_dict_type" VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2020-11-10 11:28:03.287566', '', NULL, '通知类型列表');
INSERT INTO "adp"."sys_dict_type" VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2020-11-10 11:28:03.288566', '', NULL, '通知状态列表');
INSERT INTO "adp"."sys_dict_type" VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2020-11-10 11:28:03.289566', '', NULL, '操作类型列表');
INSERT INTO "adp"."sys_dict_type" VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2020-11-10 11:28:03.289566', '', NULL, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS "adp"."sys_job";
CREATE TABLE "adp"."sys_job" (
  "job_id" int8 NOT NULL DEFAULT nextval('"adp".sys_job_job_id_seq'::regclass),
  "job_name" varchar(64) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "job_group" varchar(64) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "invoke_target" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
  "cron_expression" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "misfire_policy" varchar(20) COLLATE "pg_catalog"."default" DEFAULT '3'::character varying,
  "concurrent" char(1) COLLATE "pg_catalog"."default" DEFAULT '1'::bpchar,
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;
COMMENT ON COLUMN "adp"."sys_job"."job_id" IS '任务主键';
COMMENT ON COLUMN "adp"."sys_job"."job_name" IS '任务名称';
COMMENT ON COLUMN "adp"."sys_job"."job_group" IS '任务组名';
COMMENT ON COLUMN "adp"."sys_job"."invoke_target" IS '调用目标字符串';
COMMENT ON COLUMN "adp"."sys_job"."cron_expression" IS 'cron执行表达式';
COMMENT ON COLUMN "adp"."sys_job"."misfire_policy" IS '计划执行错误策略（1立即执行 2执行一次 3放弃执行）';
COMMENT ON COLUMN "adp"."sys_job"."concurrent" IS '是否并发执行（0允许 1禁止）';
COMMENT ON COLUMN "adp"."sys_job"."status" IS '状态（0正常 1暂停）';
COMMENT ON COLUMN "adp"."sys_job"."create_by" IS '创建者';
COMMENT ON COLUMN "adp"."sys_job"."create_time" IS '创建时间';
COMMENT ON COLUMN "adp"."sys_job"."update_by" IS '更新者';
COMMENT ON COLUMN "adp"."sys_job"."update_time" IS '更新时间';
COMMENT ON COLUMN "adp"."sys_job"."remark" IS '备注信息';
COMMENT ON TABLE "adp"."sys_job" IS '定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO "adp"."sys_job" VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(''ry'', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2020-11-10 11:28:03.440575', '', '2020-11-10 14:16:10.737535', '');
INSERT INTO "adp"."sys_job" VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(''ry'')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2020-11-10 11:28:03.439575', '', '2020-11-10 14:16:14.256737', '');
INSERT INTO "adp"."sys_job" VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2020-11-10 11:28:03.437575', '', '2020-11-10 14:16:18.030953', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS "adp"."sys_job_log";
CREATE TABLE "adp"."sys_job_log" (
  "job_log_id" int8 NOT NULL DEFAULT nextval('"adp".sys_job_log_job_log_id_seq'::regclass),
  "job_name" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "job_group" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "invoke_target" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
  "job_message" varchar(500) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "exception_info" varchar(2000) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6)
)
;
COMMENT ON COLUMN "adp"."sys_job_log"."job_log_id" IS '日志主键';
COMMENT ON COLUMN "adp"."sys_job_log"."job_name" IS '任务名称';
COMMENT ON COLUMN "adp"."sys_job_log"."job_group" IS '任务组名';
COMMENT ON COLUMN "adp"."sys_job_log"."invoke_target" IS '调用目标字符串';
COMMENT ON COLUMN "adp"."sys_job_log"."job_message" IS '日志信息';
COMMENT ON COLUMN "adp"."sys_job_log"."status" IS '执行状态（0正常 1失败）';
COMMENT ON COLUMN "adp"."sys_job_log"."exception_info" IS '异常信息';
COMMENT ON COLUMN "adp"."sys_job_log"."create_time" IS '创建时间';
COMMENT ON TABLE "adp"."sys_job_log" IS '定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS "adp"."sys_logininfor";
CREATE TABLE "adp"."sys_logininfor" (
  "info_id" int8 NOT NULL DEFAULT nextval('"adp".sys_logininfor_info_id_seq'::regclass),
  "login_name" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "ipaddr" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "login_location" varchar(255) COLLATE "pg_catalog"."default",
  "browser" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "os" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "msg" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "login_time" timestamp(6)
)
;
COMMENT ON COLUMN "adp"."sys_logininfor"."info_id" IS '访问ID';
COMMENT ON COLUMN "adp"."sys_logininfor"."login_name" IS '登录账号';
COMMENT ON COLUMN "adp"."sys_logininfor"."ipaddr" IS '登录IP地址';
COMMENT ON COLUMN "adp"."sys_logininfor"."login_location" IS '登录地点';
COMMENT ON COLUMN "adp"."sys_logininfor"."browser" IS '浏览器类型';
COMMENT ON COLUMN "adp"."sys_logininfor"."os" IS '操作系统';
COMMENT ON COLUMN "adp"."sys_logininfor"."status" IS '登录状态 0成功 1失败';
COMMENT ON COLUMN "adp"."sys_logininfor"."msg" IS '提示消息';
COMMENT ON COLUMN "adp"."sys_logininfor"."login_time" IS '访问时间';
COMMENT ON TABLE "adp"."sys_logininfor" IS '系统访问记录';


-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO "adp"."sys_logininfor" VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-10 13:45:21.672775');
INSERT INTO "adp"."sys_logininfor" VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-10 14:01:47.159142');
INSERT INTO "adp"."sys_logininfor" VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '退出成功', '2020-11-10 15:18:33.246595');
INSERT INTO "adp"."sys_logininfor" VALUES (160, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-10 15:18:36.725794');
INSERT INTO "adp"."sys_logininfor" VALUES (180, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '退出成功', '2020-11-10 15:30:22.549165');
INSERT INTO "adp"."sys_logininfor" VALUES (200, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-10 15:30:27.093424');
INSERT INTO "adp"."sys_logininfor" VALUES (220, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '退出成功', '2020-11-10 15:31:26.622829');
INSERT INTO "adp"."sys_logininfor" VALUES (221, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-10 15:31:33.471221');
INSERT INTO "adp"."sys_logininfor" VALUES (240, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '退出成功', '2020-11-10 15:47:01.12828');
INSERT INTO "adp"."sys_logininfor" VALUES (222, 'shentong', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-10 15:47:11.78989');
INSERT INTO "adp"."sys_logininfor" VALUES (260, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-10 16:11:46.898261');
INSERT INTO "adp"."sys_logininfor" VALUES (280, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '1', '验证码错误', '2020-11-10 16:15:42.639745');
INSERT INTO "adp"."sys_logininfor" VALUES (300, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-10 16:15:49.632145');
INSERT INTO "adp"."sys_logininfor" VALUES (320, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-10 16:18:43.15807');
INSERT INTO "adp"."sys_logininfor" VALUES (340, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-10 16:28:41.158274');
INSERT INTO "adp"."sys_logininfor" VALUES (360, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '1', '验证码错误', '2020-11-10 16:31:06.544589');
INSERT INTO "adp"."sys_logininfor" VALUES (380, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-10 16:31:09.785775');
INSERT INTO "adp"."sys_logininfor" VALUES (400, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '退出成功', '2020-11-10 16:37:01.224876');
INSERT INTO "adp"."sys_logininfor" VALUES (420, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-10 16:37:04.871084');
INSERT INTO "adp"."sys_logininfor" VALUES (440, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-10 16:58:45.03845');
INSERT INTO "adp"."sys_logininfor" VALUES (460, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-10 17:33:52.102967');
INSERT INTO "adp"."sys_logininfor" VALUES (480, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-10 17:36:20.408449');
INSERT INTO "adp"."sys_logininfor" VALUES (500, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-10 17:41:02.965611');
INSERT INTO "adp"."sys_logininfor" VALUES (520, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-10 17:59:32.049047');
INSERT INTO "adp"."sys_logininfor" VALUES (540, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-10 18:05:17.874827');
INSERT INTO "adp"."sys_logininfor" VALUES (560, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-10 18:16:22.388835');
INSERT INTO "adp"."sys_logininfor" VALUES (580, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-11 09:16:09.808068');
INSERT INTO "adp"."sys_logininfor" VALUES (600, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-11 09:45:54.39114');
INSERT INTO "adp"."sys_logininfor" VALUES (620, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-11 09:54:08.29039');
INSERT INTO "adp"."sys_logininfor" VALUES (640, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-11 10:03:39.915085');
INSERT INTO "adp"."sys_logininfor" VALUES (660, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-11 10:12:31.793507');
INSERT INTO "adp"."sys_logininfor" VALUES (680, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-11 10:31:47.925634');
INSERT INTO "adp"."sys_logininfor" VALUES (700, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-11 10:38:03.785132');
INSERT INTO "adp"."sys_logininfor" VALUES (720, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-11 13:42:39.56863');
INSERT INTO "adp"."sys_logininfor" VALUES (740, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-11 15:08:42.97296');
INSERT INTO "adp"."sys_logininfor" VALUES (760, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-11 17:27:48.491296');
INSERT INTO "adp"."sys_logininfor" VALUES (780, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-11 18:07:21.556028');
INSERT INTO "adp"."sys_logininfor" VALUES (800, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-12 09:13:50.654362');
INSERT INTO "adp"."sys_logininfor" VALUES (820, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-12 09:17:52.149175');
INSERT INTO "adp"."sys_logininfor" VALUES (840, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-12 09:27:11.87919');
INSERT INTO "adp"."sys_logininfor" VALUES (860, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-12 09:30:15.782708');
INSERT INTO "adp"."sys_logininfor" VALUES (880, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-12 09:35:29.500652');
INSERT INTO "adp"."sys_logininfor" VALUES (900, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-12 09:40:12.214822');
INSERT INTO "adp"."sys_logininfor" VALUES (920, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-12 09:44:31.912676');
INSERT INTO "adp"."sys_logininfor" VALUES (940, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-12 09:55:51.861567');
INSERT INTO "adp"."sys_logininfor" VALUES (960, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-12 10:00:22.72806');
INSERT INTO "adp"."sys_logininfor" VALUES (980, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-12 10:08:40.14051');
INSERT INTO "adp"."sys_logininfor" VALUES (1000, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-12 11:45:25.730571');
INSERT INTO "adp"."sys_logininfor" VALUES (1020, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-12 13:33:19.318839');
INSERT INTO "adp"."sys_logininfor" VALUES (1040, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-12 13:37:12.896199');
INSERT INTO "adp"."sys_logininfor" VALUES (1060, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-12 15:12:54.651608');
INSERT INTO "adp"."sys_logininfor" VALUES (1061, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '退出成功', '2020-11-12 15:13:36.513003');
INSERT INTO "adp"."sys_logininfor" VALUES (1080, 'shentong', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-12 15:13:44.836479');
INSERT INTO "adp"."sys_logininfor" VALUES (1081, 'shentong', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '退出成功', '2020-11-12 15:18:24.748489');
INSERT INTO "adp"."sys_logininfor" VALUES (1082, 'shentong', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-12 15:18:34.891069');
INSERT INTO "adp"."sys_logininfor" VALUES (1083, 'shentong', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '退出成功', '2020-11-12 15:20:38.457136');
INSERT INTO "adp"."sys_logininfor" VALUES (1084, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-12 15:20:48.216695');
INSERT INTO "adp"."sys_logininfor" VALUES (1100, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-11-13 09:06:56.959497');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS "adp"."sys_menu";
CREATE TABLE "adp"."sys_menu" (
  "menu_id" int8 NOT NULL DEFAULT nextval('"adp".sys_menu_menu_id_seq'::regclass),
  "menu_name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "parent_id" int8 DEFAULT 0,
  "order_num" varchar(32) COLLATE "pg_catalog"."default",
  "url" varchar(200) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "target" varchar(20) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "menu_type" char(1) COLLATE "pg_catalog"."default" DEFAULT ''::bpchar,
  "visible" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "perms" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "icon" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;
COMMENT ON COLUMN "adp"."sys_menu"."menu_id" IS '菜单ID';
COMMENT ON COLUMN "adp"."sys_menu"."menu_name" IS '菜单名称';
COMMENT ON COLUMN "adp"."sys_menu"."parent_id" IS '父菜单ID';
COMMENT ON COLUMN "adp"."sys_menu"."order_num" IS '显示顺序';
COMMENT ON COLUMN "adp"."sys_menu"."url" IS '请求地址';
COMMENT ON COLUMN "adp"."sys_menu"."target" IS '打开方式（menuItem页签 menuBlank新窗口）';
COMMENT ON COLUMN "adp"."sys_menu"."menu_type" IS '类型:M目录,C菜单,F按钮';
COMMENT ON COLUMN "adp"."sys_menu"."visible" IS '菜单状态:0显示,1隐藏';
COMMENT ON COLUMN "adp"."sys_menu"."perms" IS '权限标识';
COMMENT ON COLUMN "adp"."sys_menu"."icon" IS '菜单图标';
COMMENT ON COLUMN "adp"."sys_menu"."create_by" IS '创建者';
COMMENT ON COLUMN "adp"."sys_menu"."create_time" IS '创建时间';
COMMENT ON COLUMN "adp"."sys_menu"."update_by" IS '更新者';
COMMENT ON COLUMN "adp"."sys_menu"."update_time" IS '更新时间';
COMMENT ON COLUMN "adp"."sys_menu"."remark" IS '备注';
COMMENT ON TABLE "adp"."sys_menu" IS '菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO "adp"."sys_menu" VALUES (1, '系统管理', 0, '1', '#', '', 'M', '0', '', 'fa fa-gear', 'admin', '2020-11-10 11:28:03.069554', '', NULL, '系统管理目录');
INSERT INTO "adp"."sys_menu" VALUES (2, '系统监控', 0, '2', '#', '', 'M', '0', '', 'fa fa-video-camera', 'admin', '2020-11-10 11:28:03.070554', '', NULL, '系统监控目录');
INSERT INTO "adp"."sys_menu" VALUES (3, '系统工具', 0, '3', '#', '', 'M', '0', '', 'fa fa-bars', 'admin', '2020-11-10 11:28:03.071554', '', NULL, '系统工具目录');
INSERT INTO "adp"."sys_menu" VALUES (100, '用户管理', 1, '1', '/system/user', '', 'C', '0', 'system:user:view', 'fa fa-user-o', 'admin', '2020-11-10 11:28:03.073554', '', NULL, '用户管理菜单');
INSERT INTO "adp"."sys_menu" VALUES (101, '角色管理', 1, '2', '/system/role', '', 'C', '0', 'system:role:view', 'fa fa-user-secret', 'admin', '2020-11-10 11:28:03.073554', '', NULL, '角色管理菜单');
INSERT INTO "adp"."sys_menu" VALUES (102, '菜单管理', 1, '3', '/system/menu', '', 'C', '0', 'system:menu:view', 'fa fa-th-list', 'admin', '2020-11-10 11:28:03.074554', '', NULL, '菜单管理菜单');
INSERT INTO "adp"."sys_menu" VALUES (103, '部门管理', 1, '4', '/system/dept', '', 'C', '0', 'system:dept:view', 'fa fa-outdent', 'admin', '2020-11-10 11:28:03.075554', '', NULL, '部门管理菜单');
INSERT INTO "adp"."sys_menu" VALUES (104, '岗位管理', 1, '5', '/system/post', '', 'C', '0', 'system:post:view', 'fa fa-address-card-o', 'admin', '2020-11-10 11:28:03.076554', '', NULL, '岗位管理菜单');
INSERT INTO "adp"."sys_menu" VALUES (105, '字典管理', 1, '6', '/system/dict', '', 'C', '0', 'system:dict:view', 'fa fa-bookmark-o', 'admin', '2020-11-10 11:28:03.076554', '', NULL, '字典管理菜单');
INSERT INTO "adp"."sys_menu" VALUES (106, '参数设置', 1, '7', '/system/config', '', 'C', '0', 'system:config:view', 'fa fa-sun-o', 'admin', '2020-11-10 11:28:03.077554', '', NULL, '参数设置菜单');
INSERT INTO "adp"."sys_menu" VALUES (107, '通知公告', 1, '8', '/system/notice', '', 'C', '0', 'system:notice:view', 'fa fa-bullhorn', 'admin', '2020-11-10 11:28:03.078554', '', NULL, '通知公告菜单');
INSERT INTO "adp"."sys_menu" VALUES (108, '日志管理', 1, '9', '#', '', 'M', '0', '', 'fa fa-pencil-square-o', 'admin', '2020-11-10 11:28:03.079554', '', NULL, '日志管理菜单');
INSERT INTO "adp"."sys_menu" VALUES (109, '在线用户', 2, '1', '/monitor/online', '', 'C', '0', 'monitor:online:view', 'fa fa-user-circle', 'admin', '2020-11-10 11:28:03.080555', '', NULL, '在线用户菜单');
INSERT INTO "adp"."sys_menu" VALUES (110, '定时任务', 2, '2', '/monitor/job', '', 'C', '0', 'monitor:job:view', 'fa fa-tasks', 'admin', '2020-11-10 11:28:03.081555', '', NULL, '定时任务菜单');
INSERT INTO "adp"."sys_menu" VALUES (111, '数据监控', 2, '3', '/monitor/data', '', 'C', '0', 'monitor:data:view', 'fa fa-bug', 'admin', '2020-11-10 11:28:03.082555', '', NULL, '数据监控菜单');
INSERT INTO "adp"."sys_menu" VALUES (112, '服务监控', 2, '3', '/monitor/server', '', 'C', '0', 'monitor:server:view', 'fa fa-server', 'admin', '2020-11-10 11:28:03.083555', '', NULL, '服务监控菜单');
INSERT INTO "adp"."sys_menu" VALUES (113, '表单构建', 3, '1', '/tool/build', '', 'C', '0', 'tool:build:view', 'fa fa-wpforms', 'admin', '2020-11-10 11:28:03.083555', '', NULL, '表单构建菜单');
INSERT INTO "adp"."sys_menu" VALUES (114, '代码生成', 3, '2', '/tool/gen', '', 'C', '0', 'tool:gen:view', 'fa fa-code', 'admin', '2020-11-10 11:28:03.085555', '', NULL, '代码生成菜单');
INSERT INTO "adp"."sys_menu" VALUES (115, '系统接口', 3, '3', '/tool/swagger', '', 'C', '0', 'tool:swagger:view', 'fa fa-gg', 'admin', '2020-11-10 11:28:03.086555', '', NULL, '系统接口菜单');
INSERT INTO "adp"."sys_menu" VALUES (500, '操作日志', 108, '1', '/monitor/operlog', '', 'C', '0', 'monitor:operlog:view', 'fa fa-address-book', 'admin', '2020-11-10 11:28:03.086555', '', NULL, '操作日志菜单');
INSERT INTO "adp"."sys_menu" VALUES (501, '登录日志', 108, '2', '/monitor/logininfor', '', 'C', '0', 'monitor:logininfor:view', 'fa fa-file-image-o', 'admin', '2020-11-10 11:28:03.087555', '', NULL, '登录日志菜单');
INSERT INTO "adp"."sys_menu" VALUES (1000, '用户查询', 100, '1', '#', '', 'F', '0', 'system:user:list', '#', 'admin', '2020-11-10 11:28:03.088555', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1001, '用户新增', 100, '2', '#', '', 'F', '0', 'system:user:add', '#', 'admin', '2020-11-10 11:28:03.088555', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1002, '用户修改', 100, '3', '#', '', 'F', '0', 'system:user:edit', '#', 'admin', '2020-11-10 11:28:03.089555', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1003, '用户删除', 100, '4', '#', '', 'F', '0', 'system:user:remove', '#', 'admin', '2020-11-10 11:28:03.090555', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1004, '用户导出', 100, '5', '#', '', 'F', '0', 'system:user:export', '#', 'admin', '2020-11-10 11:28:03.090555', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1005, '用户导入', 100, '6', '#', '', 'F', '0', 'system:user:import', '#', 'admin', '2020-11-10 11:28:03.091555', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1006, '重置密码', 100, '7', '#', '', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2020-11-10 11:28:03.092555', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1007, '角色查询', 101, '1', '#', '', 'F', '0', 'system:role:list', '#', 'admin', '2020-11-10 11:28:03.093555', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1008, '角色新增', 101, '2', '#', '', 'F', '0', 'system:role:add', '#', 'admin', '2020-11-10 11:28:03.093555', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1009, '角色修改', 101, '3', '#', '', 'F', '0', 'system:role:edit', '#', 'admin', '2020-11-10 11:28:03.095555', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1010, '角色删除', 101, '4', '#', '', 'F', '0', 'system:role:remove', '#', 'admin', '2020-11-10 11:28:03.096555', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1011, '角色导出', 101, '5', '#', '', 'F', '0', 'system:role:export', '#', 'admin', '2020-11-10 11:28:03.096555', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1012, '菜单查询', 102, '1', '#', '', 'F', '0', 'system:menu:list', '#', 'admin', '2020-11-10 11:28:03.097555', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1013, '菜单新增', 102, '2', '#', '', 'F', '0', 'system:menu:add', '#', 'admin', '2020-11-10 11:28:03.098556', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1014, '菜单修改', 102, '3', '#', '', 'F', '0', 'system:menu:edit', '#', 'admin', '2020-11-10 11:28:03.099556', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1015, '菜单删除', 102, '4', '#', '', 'F', '0', 'system:menu:remove', '#', 'admin', '2020-11-10 11:28:03.099556', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1016, '部门查询', 103, '1', '#', '', 'F', '0', 'system:dept:list', '#', 'admin', '2020-11-10 11:28:03.100556', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1017, '部门新增', 103, '2', '#', '', 'F', '0', 'system:dept:add', '#', 'admin', '2020-11-10 11:28:03.101556', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1018, '部门修改', 103, '3', '#', '', 'F', '0', 'system:dept:edit', '#', 'admin', '2020-11-10 11:28:03.102556', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1019, '部门删除', 103, '4', '#', '', 'F', '0', 'system:dept:remove', '#', 'admin', '2020-11-10 11:28:03.103556', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1020, '岗位查询', 104, '1', '#', '', 'F', '0', 'system:post:list', '#', 'admin', '2020-11-10 11:28:03.104556', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1021, '岗位新增', 104, '2', '#', '', 'F', '0', 'system:post:add', '#', 'admin', '2020-11-10 11:28:03.104556', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1022, '岗位修改', 104, '3', '#', '', 'F', '0', 'system:post:edit', '#', 'admin', '2020-11-10 11:28:03.105556', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1023, '岗位删除', 104, '4', '#', '', 'F', '0', 'system:post:remove', '#', 'admin', '2020-11-10 11:28:03.106556', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1024, '岗位导出', 104, '5', '#', '', 'F', '0', 'system:post:export', '#', 'admin', '2020-11-10 11:28:03.107556', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1025, '字典查询', 105, '1', '#', '', 'F', '0', 'system:dict:list', '#', 'admin', '2020-11-10 11:28:03.108556', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1026, '字典新增', 105, '2', '#', '', 'F', '0', 'system:dict:add', '#', 'admin', '2020-11-10 11:28:03.108556', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1027, '字典修改', 105, '3', '#', '', 'F', '0', 'system:dict:edit', '#', 'admin', '2020-11-10 11:28:03.109556', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1028, '字典删除', 105, '4', '#', '', 'F', '0', 'system:dict:remove', '#', 'admin', '2020-11-10 11:28:03.110556', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1029, '字典导出', 105, '5', '#', '', 'F', '0', 'system:dict:export', '#', 'admin', '2020-11-10 11:28:03.110556', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1030, '参数查询', 106, '1', '#', '', 'F', '0', 'system:config:list', '#', 'admin', '2020-11-10 11:28:03.111556', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1031, '参数新增', 106, '2', '#', '', 'F', '0', 'system:config:add', '#', 'admin', '2020-11-10 11:28:03.112556', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1032, '参数修改', 106, '3', '#', '', 'F', '0', 'system:config:edit', '#', 'admin', '2020-11-10 11:28:03.113556', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1033, '参数删除', 106, '4', '#', '', 'F', '0', 'system:config:remove', '#', 'admin', '2020-11-10 11:28:03.113556', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1034, '参数导出', 106, '5', '#', '', 'F', '0', 'system:config:export', '#', 'admin', '2020-11-10 11:28:03.114556', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1035, '公告查询', 107, '1', '#', '', 'F', '0', 'system:notice:list', '#', 'admin', '2020-11-10 11:28:03.115557', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1036, '公告新增', 107, '2', '#', '', 'F', '0', 'system:notice:add', '#', 'admin', '2020-11-10 11:28:03.116557', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1037, '公告修改', 107, '3', '#', '', 'F', '0', 'system:notice:edit', '#', 'admin', '2020-11-10 11:28:03.117557', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1038, '公告删除', 107, '4', '#', '', 'F', '0', 'system:notice:remove', '#', 'admin', '2020-11-10 11:28:03.119557', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1039, '操作查询', 500, '1', '#', '', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2020-11-10 11:28:03.120557', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1040, '操作删除', 500, '2', '#', '', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2020-11-10 11:28:03.120557', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1041, '详细信息', 500, '3', '#', '', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2020-11-10 11:28:03.121557', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1042, '日志导出', 500, '4', '#', '', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2020-11-10 11:28:03.122557', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1043, '登录查询', 501, '1', '#', '', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2020-11-10 11:28:03.123557', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1044, '登录删除', 501, '2', '#', '', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2020-11-10 11:28:03.124557', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1045, '日志导出', 501, '3', '#', '', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2020-11-10 11:28:03.124557', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1046, '账户解锁', 501, '4', '#', '', 'F', '0', 'monitor:logininfor:unlock', '#', 'admin', '2020-11-10 11:28:03.125557', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1047, '在线查询', 109, '1', '#', '', 'F', '0', 'monitor:online:list', '#', 'admin', '2020-11-10 11:28:03.126557', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1048, '批量强退', 109, '2', '#', '', 'F', '0', 'monitor:online:batchForceLogout', '#', 'admin', '2020-11-10 11:28:03.127557', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1049, '单条强退', 109, '3', '#', '', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2020-11-10 11:28:03.127557', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1050, '任务查询', 110, '1', '#', '', 'F', '0', 'monitor:job:list', '#', 'admin', '2020-11-10 11:28:03.128557', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1051, '任务新增', 110, '2', '#', '', 'F', '0', 'monitor:job:add', '#', 'admin', '2020-11-10 11:28:03.129557', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1052, '任务修改', 110, '3', '#', '', 'F', '0', 'monitor:job:edit', '#', 'admin', '2020-11-10 11:28:03.130557', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1053, '任务删除', 110, '4', '#', '', 'F', '0', 'monitor:job:remove', '#', 'admin', '2020-11-10 11:28:03.131557', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1054, '状态修改', 110, '5', '#', '', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2020-11-10 11:28:03.132557', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1055, '任务详细', 110, '6', '#', '', 'F', '0', 'monitor:job:detail', '#', 'admin', '2020-11-10 11:28:03.133558', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1056, '任务导出', 110, '7', '#', '', 'F', '0', 'monitor:job:export', '#', 'admin', '2020-11-10 11:28:03.133558', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1057, '生成查询', 114, '1', '#', '', 'F', '0', 'tool:gen:list', '#', 'admin', '2020-11-10 11:28:03.135558', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1058, '生成修改', 114, '2', '#', '', 'F', '0', 'tool:gen:edit', '#', 'admin', '2020-11-10 11:28:03.135558', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1059, '生成删除', 114, '3', '#', '', 'F', '0', 'tool:gen:remove', '#', 'admin', '2020-11-10 11:28:03.136558', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1060, '预览代码', 114, '4', '#', '', 'F', '0', 'tool:gen:preview', '#', 'admin', '2020-11-10 11:28:03.137558', '', NULL, '');
INSERT INTO "adp"."sys_menu" VALUES (1061, '生成代码', 114, '5', '#', '', 'F', '0', 'tool:gen:code', '#', 'admin', '2020-11-10 11:28:03.138558', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS "adp"."sys_notice";
CREATE TABLE "adp"."sys_notice" (
  "notice_id" int8 NOT NULL DEFAULT nextval('"adp".sys_notice_notice_id_seq'::regclass),
  "notice_title" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "notice_type" char(2) COLLATE "pg_catalog"."default" NOT NULL,
  "notice_content" varchar(2000) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6),
  "remark" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "adp"."sys_notice"."notice_id" IS '公告主键';
COMMENT ON COLUMN "adp"."sys_notice"."notice_title" IS '公告标题';
COMMENT ON COLUMN "adp"."sys_notice"."notice_type" IS '公告类型（1通知 2公告）';
COMMENT ON COLUMN "adp"."sys_notice"."notice_content" IS '公告内容';
COMMENT ON COLUMN "adp"."sys_notice"."status" IS '公告状态（0正常 1关闭）';
COMMENT ON COLUMN "adp"."sys_notice"."create_by" IS '创建者';
COMMENT ON COLUMN "adp"."sys_notice"."create_time" IS '创建时间';
COMMENT ON COLUMN "adp"."sys_notice"."update_by" IS '更新者';
COMMENT ON COLUMN "adp"."sys_notice"."update_time" IS '更新时间';
COMMENT ON COLUMN "adp"."sys_notice"."remark" IS '备注';
COMMENT ON TABLE "adp"."sys_notice" IS '通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO "adp"."sys_notice" VALUES (1, '温馨提醒：2018-07-01 新版本发布', '1 ', '新版本内容', '0', 'admin', '2020-11-10 11:28:03.480577', 'shentong', '2020-11-12 15:17:19.492756', '管理员');
INSERT INTO "adp"."sys_notice" VALUES (2, '维护通知：2018-07-01 系统凌晨维护', '1 ', '维护内容', '0', 'admin', '2020-11-10 11:28:03.481577', 'shentong', '2020-11-12 15:17:26.219141', '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS "adp"."sys_oper_log";
CREATE TABLE "adp"."sys_oper_log" (
  "oper_id" int8 NOT NULL DEFAULT nextval('"adp".sys_oper_log_oper_id_seq'::regclass),
  "title" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "business_type" int4 DEFAULT 0,
  "method" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "request_method" varchar(10) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "operator_type" int4 DEFAULT 0,
  "oper_name" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "dept_name" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "oper_url" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "oper_ip" varchar(30) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "oper_location" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "oper_param" varchar(2000) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "json_result" varchar(2000) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "error_msg" varchar(2000) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "oper_time" timestamp(6)
)
;
COMMENT ON COLUMN "adp"."sys_oper_log"."oper_id" IS '日志主键';
COMMENT ON COLUMN "adp"."sys_oper_log"."title" IS '模块标题';
COMMENT ON COLUMN "adp"."sys_oper_log"."business_type" IS '业务类型（0其它 1新增 2修改 3删除）';
COMMENT ON COLUMN "adp"."sys_oper_log"."method" IS '方法名称';
COMMENT ON COLUMN "adp"."sys_oper_log"."request_method" IS '请求方式';
COMMENT ON COLUMN "adp"."sys_oper_log"."operator_type" IS '操作类别（0其它 1后台用户 2手机端用户）';
COMMENT ON COLUMN "adp"."sys_oper_log"."oper_name" IS '登录账号';
COMMENT ON COLUMN "adp"."sys_oper_log"."dept_name" IS '部门名称';
COMMENT ON COLUMN "adp"."sys_oper_log"."oper_url" IS '请求URL';
COMMENT ON COLUMN "adp"."sys_oper_log"."oper_ip" IS '主机地址';
COMMENT ON COLUMN "adp"."sys_oper_log"."oper_location" IS '操作地点';
COMMENT ON COLUMN "adp"."sys_oper_log"."oper_param" IS '请求参数';
COMMENT ON COLUMN "adp"."sys_oper_log"."json_result" IS '返回参数';
COMMENT ON COLUMN "adp"."sys_oper_log"."status" IS '操作状态（0正常 1异常）';
COMMENT ON COLUMN "adp"."sys_oper_log"."error_msg" IS '错误消息';
COMMENT ON COLUMN "adp"."sys_oper_log"."oper_time" IS '操作时间';
COMMENT ON TABLE "adp"."sys_oper_log" IS '操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO "adp"."sys_oper_log" VALUES (100, '个人信息', 2, 'com.adp.web.controller.system.SysProfileController.updateAvatar()', 'POST', 1, 'admin', '研发部门', '/adp/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{ }', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-10 14:03:00.225321');
INSERT INTO "adp"."sys_oper_log" VALUES (101, '个人信息', 2, 'com.adp.web.controller.system.SysProfileController.update()', 'POST', 1, 'admin', '研发部门', '/adp/system/user/profile/update', '127.0.0.1', '内网IP', '{
  "id" : [ "" ],
  "userName" : [ "系统管理员" ],
  "phonenumber" : [ "15888888888" ],
  "email" : [ "qwe@163.com" ],
  "sex" : [ "0" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-10 14:03:35.635346');
INSERT INTO "adp"."sys_oper_log" VALUES (102, '菜单管理', 3, 'com.adp.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/adp/system/menu/remove/4', '127.0.0.1', '内网IP', '{ }', '{
  "msg" : "菜单已分配,不允许删除",
  "code" : 301
}', '0', NULL, '2020-11-10 14:11:26.439275');
INSERT INTO "adp"."sys_oper_log" VALUES (103, '菜单管理', 3, 'com.adp.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/adp/system/menu/remove/4', '127.0.0.1', '内网IP', '{ }', '{
  "msg" : "菜单已分配,不允许删除",
  "code" : 301
}', '0', NULL, '2020-11-10 14:11:40.705091');
INSERT INTO "adp"."sys_oper_log" VALUES (104, '角色管理', 2, 'com.adp.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/adp/system/role/edit', '127.0.0.1', '内网IP', '{
  "roleId" : [ "1" ],
  "roleName" : [ "系统管理员" ],
  "roleKey" : [ "admin" ],
  "roleSort" : [ "1" ],
  "status" : [ "0" ],
  "remark" : [ "超级管理员" ],
  "menuIds" : [ "1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115" ]
}', 'null', '1', '不允许操作超级管理员角色', '2020-11-10 14:15:12.970231');
INSERT INTO "adp"."sys_oper_log" VALUES (105, '定时任务', 2, 'com.adp.quartz.controller.SysJobController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/adp/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{
  "jobId" : [ "3" ],
  "jobGroup" : [ "DEFAULT" ],
  "status" : [ "0" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-10 14:16:07.980378');
INSERT INTO "adp"."sys_oper_log" VALUES (106, '定时任务', 2, 'com.adp.quartz.controller.SysJobController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/adp/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{
  "jobId" : [ "3" ],
  "jobGroup" : [ "DEFAULT" ],
  "status" : [ "1" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-10 14:16:10.769537');
INSERT INTO "adp"."sys_oper_log" VALUES (120, '定时任务', 2, 'com.adp.quartz.controller.SysJobController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/adp/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{
  "jobId" : [ "2" ],
  "jobGroup" : [ "DEFAULT" ],
  "status" : [ "0" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-10 14:16:12.57264');
INSERT INTO "adp"."sys_oper_log" VALUES (121, '定时任务', 2, 'com.adp.quartz.controller.SysJobController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/adp/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{
  "jobId" : [ "2" ],
  "jobGroup" : [ "DEFAULT" ],
  "status" : [ "1" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-10 14:16:14.298739');
INSERT INTO "adp"."sys_oper_log" VALUES (107, '定时任务', 2, 'com.adp.quartz.controller.SysJobController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/adp/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{
  "jobId" : [ "1" ],
  "jobGroup" : [ "DEFAULT" ],
  "status" : [ "0" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-10 14:16:16.06384');
INSERT INTO "adp"."sys_oper_log" VALUES (122, '定时任务', 2, 'com.adp.quartz.controller.SysJobController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/adp/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{
  "jobId" : [ "1" ],
  "jobGroup" : [ "DEFAULT" ],
  "status" : [ "1" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-10 14:16:18.057954');
INSERT INTO "adp"."sys_oper_log" VALUES (140, '在线用户', 7, 'com.adp.web.controller.monitor.SysUserOnlineController.batchForceLogout()', 'POST', 1, 'admin', '研发部门', '/adp/monitor/online/batchForceLogout', '127.0.0.1', '内网IP', '{
  "ids" : [ "27bc5092-8615-42fa-8ce9-ece457410c9c" ]
}', '{
  "msg" : "当前登陆用户无法强退",
  "code" : 500
}', '0', NULL, '2020-11-10 15:18:14.28351');
INSERT INTO "adp"."sys_oper_log" VALUES (160, '个人信息', 2, 'com.adp.web.controller.system.SysProfileController.updateAvatar()', 'POST', 1, 'admin', '研发部门', '/adp/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{ }', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-10 15:34:20.186757');
INSERT INTO "adp"."sys_oper_log" VALUES (180, '用户管理', 2, 'com.adp.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/adp/system/user/edit', '127.0.0.1', '内网IP', '{
  "userId" : [ "2" ],
  "deptId" : [ "105" ],
  "userName" : [ "普通用户" ],
  "dept.deptName" : [ "测试部门" ],
  "phonenumber" : [ "15666666666" ],
  "email" : [ "943285022@qq.com" ],
  "loginName" : [ "shentong" ],
  "sex" : [ "0" ],
  "role" : [ "2" ],
  "remark" : [ "测试员" ],
  "status" : [ "0" ],
  "roleIds" : [ "2" ],
  "postIds" : [ "2" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-10 15:46:22.873092');
INSERT INTO "adp"."sys_oper_log" VALUES (181, '重置密码', 2, 'com.adp.web.controller.system.SysUserController.resetPwd()', 'GET', 1, 'admin', '研发部门', '/adp/system/user/resetPwd/2', '127.0.0.1', '内网IP', '{ }', '"system/user/resetPwd"', '0', NULL, '2020-11-10 15:46:34.779773');
INSERT INTO "adp"."sys_oper_log" VALUES (182, '重置密码', 2, 'com.adp.web.controller.system.SysUserController.resetPwdSave()', 'POST', 1, 'admin', '研发部门', '/adp/system/user/resetPwd', '127.0.0.1', '内网IP', '{
  "userId" : [ "2" ],
  "loginName" : [ "shentong" ],
  "password" : [ "shentong" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-10 15:46:48.415553');
INSERT INTO "adp"."sys_oper_log" VALUES (183, '重置密码', 2, 'com.adp.web.controller.system.SysUserController.resetPwd()', 'GET', 1, 'admin', '研发部门', '/adp/system/user/resetPwd/2', '127.0.0.1', '内网IP', '{ }', '"system/user/resetPwd"', '0', NULL, '2020-11-10 15:46:53.932868');
INSERT INTO "adp"."sys_oper_log" VALUES (184, '重置密码', 2, 'com.adp.web.controller.system.SysUserController.resetPwdSave()', 'POST', 1, 'admin', '研发部门', '/adp/system/user/resetPwd', '127.0.0.1', '内网IP', '{
  "userId" : [ "2" ],
  "loginName" : [ "shentong" ],
  "password" : [ "admin" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-10 15:46:58.110107');
INSERT INTO "adp"."sys_oper_log" VALUES (200, '在线用户', 7, 'com.adp.web.controller.monitor.SysUserOnlineController.batchForceLogout()', 'POST', 1, 'admin', '研发部门', '/adp/monitor/online/batchForceLogout', '127.0.0.1', '内网IP', '{
  "ids" : [ "18c81b06-d0e8-4a6a-82c9-f46aa2cec0e0" ]
}', '{
  "msg" : "当前登陆用户无法强退",
  "code" : 500
}', '0', NULL, '2020-11-10 16:37:12.687531');
INSERT INTO "adp"."sys_oper_log" VALUES (201, '用户管理', 2, 'com.adp.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/adp/system/user/edit', '127.0.0.1', '内网IP', '{
  "userId" : [ "1" ],
  "deptId" : [ "103" ],
  "userName" : [ "系统管理员" ],
  "dept.deptName" : [ "研发部门" ],
  "phonenumber" : [ "15888888888" ],
  "email" : [ "15888888888@163.com" ],
  "loginName" : [ "admin" ],
  "sex" : [ "0" ],
  "role" : [ "1" ],
  "remark" : [ "管理员" ],
  "status" : [ "0" ],
  "roleIds" : [ "1" ],
  "postIds" : [ "1" ]
}', 'null', '1', '不允许操作超级管理员用户', '2020-11-10 16:38:53.069273');
INSERT INTO "adp"."sys_oper_log" VALUES (220, '代码生成', 6, 'com.adp.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/importTable', '127.0.0.1', '内网IP', '{
  "tables" : [ "rsh_jcxqfx_xqxx_mbxx,rsh_jcxqfx_mbq,rsh_jcxqfx_xqxx,rsh_jcxqfx_xqxx_jcrw,rsh_jcxqfx_xqxx_tqxx" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-10 18:16:38.500756');
INSERT INTO "adp"."sys_oper_log" VALUES (240, '代码生成', 6, 'com.adp.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/importTable', '127.0.0.1', '内网IP', '{
  "tables" : [ "rsh_jcxqfx_xqxx_mbxx" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 09:16:44.239037');
INSERT INTO "adp"."sys_oper_log" VALUES (260, '代码生成', 6, 'com.adp.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/importTable', '127.0.0.1', '内网IP', '{
  "tables" : [ "rsh_jcxqfx_xqxx_mbxx" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 09:46:01.524548');
INSERT INTO "adp"."sys_oper_log" VALUES (280, '代码生成', 3, 'com.adp.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/remove', '127.0.0.1', '内网IP', '{
  "ids" : [ "41" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 10:51:42.755974');
INSERT INTO "adp"."sys_oper_log" VALUES (300, '代码生成', 3, 'com.adp.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/remove', '127.0.0.1', '内网IP', '{
  "ids" : [ "61" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 11:17:31.112535');
INSERT INTO "adp"."sys_oper_log" VALUES (301, '代码生成', 6, 'com.adp.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/importTable', '127.0.0.1', '内网IP', '{
  "tables" : [ "rsh_jcxqfx_xqxx_mbxx" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 11:17:40.868093');
INSERT INTO "adp"."sys_oper_log" VALUES (302, '代码生成', 3, 'com.adp.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/remove', '127.0.0.1', '内网IP', '{
  "ids" : [ "81" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 11:35:13.85232');
INSERT INTO "adp"."sys_oper_log" VALUES (320, '代码生成', 6, 'com.adp.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/importTable', '127.0.0.1', '内网IP', '{
  "tables" : [ "rsh_jcxqfx_xqxx_tqxx" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 11:35:18.7516');
INSERT INTO "adp"."sys_oper_log" VALUES (321, '代码生成', 6, 'com.adp.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/importTable', '127.0.0.1', '内网IP', '{
  "tables" : [ "rsh_jcxqfx_xqxx_mbxx,rsh_jcxqfx_xqxx_jcrw,rsh_jcxqfx_xqxx" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 11:42:18.473607');
INSERT INTO "adp"."sys_oper_log" VALUES (340, '代码生成', 6, 'com.adp.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/importTable', '127.0.0.1', '内网IP', '{
  "tables" : [ "rsh_jcxqfx_mbq" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 11:55:07.239578');
INSERT INTO "adp"."sys_oper_log" VALUES (360, '代码生成', 2, 'com.adp.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/edit', '127.0.0.1', '内网IP', '{
  "tableId" : [ "121" ],
  "tableName" : [ "rsh_jcxqfx_mbq" ],
  "tableComment" : [ "表1" ],
  "className" : [ "RshJcxqfxMbq" ],
  "functionAuthor" : [ "qubo" ],
  "remark" : [ "" ],
  "columns[0].columnId" : [ "141" ],
  "columns[0].sort" : [ "1" ],
  "columns[0].columnComment" : [ "" ],
  "columns[0].javaType" : [ "String" ],
  "columns[0].javaField" : [ "sign" ],
  "columns[0].isInsert" : [ "1" ],
  "columns[0].isEdit" : [ "1" ],
  "columns[0].isList" : [ "1" ],
  "columns[0].queryType" : [ "EQ" ],
  "columns[0].htmlType" : [ "input" ],
  "columns[0].dictType" : [ "" ],
  "columns[1].columnId" : [ "142" ],
  "columns[1].sort" : [ "2" ],
  "columns[1].columnComment" : [ "目标编号" ],
  "columns[1].javaType" : [ "String" ],
  "columns[1].javaField" : [ "targrtnum" ],
  "columns[1].isInsert" : [ "1" ],
  "columns[1].isEdit" : [ "1" ],
  "columns[1].isList" : [ "1" ],
  "columns[1].queryType" : [ "EQ" ],
  "columns[1].htmlType" : [ "input" ],
  "columns[1].dictType" : [ "" ],
  "columns[2].columnId" : [ "143" ],
  "columns[2].sort" : [ "3" ],
  "columns[2].columnComment" : [ "请求编号" ],
  "columns[2].javaType" : [ "String" ],
  "columns[2].javaField" : [ "reqnum" ],
  "columns[2].isInsert" : [ "1" ],
  "columns[2].isEdit" : [ "1" ],
  "columns[2].isList" : [ "1" ],
  "columns[2].queryType" : [ "EQ" ],
  "columns[2].htmlType" : [ "input" ],
  "columns[2].dictType" : [ "" ],
  "columns[3].columnId" : [ "144" ],
  "columns[3].sort" : [ "4" ],
  "columns[3].columnComment" : [ "" ],
  "columns[3].javaType" : [ "String" ],
  "columns[3].javaField" : [ "rshTargrtnum" ],
  "columns[3].isInsert" : [ "1" ],
  "columns[3].isEdit" : [ "1" ],
  "columns[3].isList" : [ "1" ],
  "columns[3].queryType" : [ "EQ" ],
  "columns[3].htmlType" : [ "input" ],
  "columns[3].dictType" : [ "" ],
  "columns[4].columnId" : [ "145" ],
  "columns[4].sort" : [ "5" ],
  "columns[4].columnComment" : [ "" ],
  "columns[4].javaType" : [ "String" ],
  "', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 13:56:50.406295');
INSERT INTO "adp"."sys_oper_log" VALUES (361, '代码生成', 2, 'com.adp.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/edit', '127.0.0.1', '内网IP', '{
  "tableId" : [ "121" ],
  "tableName" : [ "rsh_jcxqfx_mbq" ],
  "tableComment" : [ "表1" ],
  "className" : [ "RshJcxqfxMbq" ],
  "functionAuthor" : [ "qubo" ],
  "remark" : [ "" ],
  "columns[0].columnId" : [ "141" ],
  "columns[0].sort" : [ "1" ],
  "columns[0].columnComment" : [ "标签" ],
  "columns[0].javaType" : [ "String" ],
  "columns[0].javaField" : [ "sign" ],
  "columns[0].isInsert" : [ "1" ],
  "columns[0].isEdit" : [ "1" ],
  "columns[0].isList" : [ "1" ],
  "columns[0].queryType" : [ "EQ" ],
  "columns[0].htmlType" : [ "input" ],
  "columns[0].dictType" : [ "" ],
  "columns[1].columnId" : [ "142" ],
  "columns[1].sort" : [ "2" ],
  "columns[1].columnComment" : [ "目标编号" ],
  "columns[1].javaType" : [ "String" ],
  "columns[1].javaField" : [ "targrtnum" ],
  "columns[1].isInsert" : [ "1" ],
  "columns[1].isEdit" : [ "1" ],
  "columns[1].isList" : [ "1" ],
  "columns[1].queryType" : [ "EQ" ],
  "columns[1].isRequired" : [ "1" ],
  "columns[1].htmlType" : [ "input" ],
  "columns[1].dictType" : [ "" ],
  "columns[2].columnId" : [ "143" ],
  "columns[2].sort" : [ "3" ],
  "columns[2].columnComment" : [ "请求编号" ],
  "columns[2].javaType" : [ "String" ],
  "columns[2].javaField" : [ "reqnum" ],
  "columns[2].isInsert" : [ "1" ],
  "columns[2].isEdit" : [ "1" ],
  "columns[2].isList" : [ "1" ],
  "columns[2].queryType" : [ "EQ" ],
  "columns[2].htmlType" : [ "input" ],
  "columns[2].dictType" : [ "" ],
  "columns[3].columnId" : [ "144" ],
  "columns[3].sort" : [ "4" ],
  "columns[3].columnComment" : [ "" ],
  "columns[3].javaType" : [ "String" ],
  "columns[3].javaField" : [ "rshTargrtnum" ],
  "columns[3].isInsert" : [ "1" ],
  "columns[3].isEdit" : [ "1" ],
  "columns[3].queryType" : [ "EQ" ],
  "columns[3].htmlType" : [ "input" ],
  "columns[3].dictType" : [ "" ],
  "columns[4].columnId" : [ "145" ],
  "columns[4].sort" : [ "5" ],
  "columns[4].columnComment" : [ "" ],
  "columns[4].javaType" : [ "String" ]', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 14:16:32.315897');
INSERT INTO "adp"."sys_oper_log" VALUES (380, '代码生成', 2, 'com.adp.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/edit', '127.0.0.1', '内网IP', '{
  "tableId" : [ "102" ],
  "tableName" : [ "rsh_jcxqfx_xqxx" ],
  "tableComment" : [ "监测需求分析_需求信息" ],
  "className" : [ "RshJcxqfxXqxx" ],
  "functionAuthor" : [ "qubo" ],
  "remark" : [ "" ],
  "columns[0].columnId" : [ "70" ],
  "columns[0].sort" : [ "1" ],
  "columns[0].columnComment" : [ "需求编号" ],
  "columns[0].javaType" : [ "String" ],
  "columns[0].javaField" : [ "reqnum" ],
  "columns[0].isInsert" : [ "1" ],
  "columns[0].isEdit" : [ "1" ],
  "columns[0].isList" : [ "1" ],
  "columns[0].queryType" : [ "EQ" ],
  "columns[0].isRequired" : [ "1" ],
  "columns[0].htmlType" : [ "input" ],
  "columns[0].dictType" : [ "" ],
  "columns[1].columnId" : [ "71" ],
  "columns[1].sort" : [ "2" ],
  "columns[1].columnComment" : [ "需求名称" ],
  "columns[1].javaType" : [ "String" ],
  "columns[1].javaField" : [ "reqname" ],
  "columns[1].isInsert" : [ "1" ],
  "columns[1].isEdit" : [ "1" ],
  "columns[1].isList" : [ "1" ],
  "columns[1].isQuery" : [ "1" ],
  "columns[1].queryType" : [ "LIKE" ],
  "columns[1].htmlType" : [ "input" ],
  "columns[1].dictType" : [ "" ],
  "columns[2].columnId" : [ "72" ],
  "columns[2].sort" : [ "3" ],
  "columns[2].columnComment" : [ "需求来源" ],
  "columns[2].javaType" : [ "String" ],
  "columns[2].javaField" : [ "reqsource" ],
  "columns[2].isInsert" : [ "1" ],
  "columns[2].isEdit" : [ "1" ],
  "columns[2].isList" : [ "1" ],
  "columns[2].queryType" : [ "EQ" ],
  "columns[2].htmlType" : [ "select" ],
  "columns[2].dictType" : [ "sys_user_sex" ],
  "columns[3].columnId" : [ "73" ],
  "columns[3].sort" : [ "4" ],
  "columns[3].columnComment" : [ "需求开始时间" ],
  "columns[3].javaType" : [ "Date" ],
  "columns[3].javaField" : [ "reqstarttime" ],
  "columns[3].isInsert" : [ "1" ],
  "columns[3].isEdit" : [ "1" ],
  "columns[3].isList" : [ "1" ],
  "columns[3].queryType" : [ "EQ" ],
  "columns[3].htmlType" : [ "datetime" ],
  "columns[3].dictType" : [ "" ],
  "columns[4].columnId" : [ "74" ],
  "colum', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 14:30:46.337744');
INSERT INTO "adp"."sys_oper_log" VALUES (381, '代码生成', 2, 'com.adp.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/edit', '127.0.0.1', '内网IP', '{
  "tableId" : [ "121" ],
  "tableName" : [ "rsh_jcxqfx_mbq" ],
  "tableComment" : [ "监测需求分析_目标群" ],
  "className" : [ "RshJcxqfxMbq" ],
  "functionAuthor" : [ "qubo" ],
  "remark" : [ "" ],
  "columns[0].columnId" : [ "141" ],
  "columns[0].sort" : [ "1" ],
  "columns[0].columnComment" : [ "标签" ],
  "columns[0].javaType" : [ "String" ],
  "columns[0].javaField" : [ "sign" ],
  "columns[0].isInsert" : [ "1" ],
  "columns[0].isEdit" : [ "1" ],
  "columns[0].isList" : [ "1" ],
  "columns[0].queryType" : [ "EQ" ],
  "columns[0].htmlType" : [ "input" ],
  "columns[0].dictType" : [ "" ],
  "columns[1].columnId" : [ "142" ],
  "columns[1].sort" : [ "2" ],
  "columns[1].columnComment" : [ "目标编号" ],
  "columns[1].javaType" : [ "String" ],
  "columns[1].javaField" : [ "targrtnum" ],
  "columns[1].isInsert" : [ "1" ],
  "columns[1].isEdit" : [ "1" ],
  "columns[1].isList" : [ "1" ],
  "columns[1].queryType" : [ "EQ" ],
  "columns[1].isRequired" : [ "1" ],
  "columns[1].htmlType" : [ "input" ],
  "columns[1].dictType" : [ "" ],
  "columns[2].columnId" : [ "143" ],
  "columns[2].sort" : [ "3" ],
  "columns[2].columnComment" : [ "请求编号" ],
  "columns[2].javaType" : [ "String" ],
  "columns[2].javaField" : [ "reqnum" ],
  "columns[2].isInsert" : [ "1" ],
  "columns[2].isEdit" : [ "1" ],
  "columns[2].isList" : [ "1" ],
  "columns[2].queryType" : [ "EQ" ],
  "columns[2].htmlType" : [ "input" ],
  "columns[2].dictType" : [ "" ],
  "columns[3].columnId" : [ "144" ],
  "columns[3].sort" : [ "4" ],
  "columns[3].columnComment" : [ "" ],
  "columns[3].javaType" : [ "String" ],
  "columns[3].javaField" : [ "rshTargrtnum" ],
  "columns[3].isInsert" : [ "1" ],
  "columns[3].isEdit" : [ "1" ],
  "columns[3].queryType" : [ "EQ" ],
  "columns[3].htmlType" : [ "input" ],
  "columns[3].dictType" : [ "" ],
  "columns[4].columnId" : [ "145" ],
  "columns[4].sort" : [ "5" ],
  "columns[4].columnComment" : [ "" ],
  "columns[4].javaType" : [ "S', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 14:31:18.036557');
INSERT INTO "adp"."sys_oper_log" VALUES (382, '代码生成', 2, 'com.adp.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/edit', '127.0.0.1', '内网IP', '{
  "tableId" : [ "103" ],
  "tableName" : [ "rsh_jcxqfx_xqxx_jcrw" ],
  "tableComment" : [ "监测需求分析_监测任务" ],
  "className" : [ "RshJcxqfxXqxxJcrw" ],
  "functionAuthor" : [ "qubo" ],
  "remark" : [ "" ],
  "columns[0].columnId" : [ "95" ],
  "columns[0].sort" : [ "1" ],
  "columns[0].columnComment" : [ "需求编号" ],
  "columns[0].javaType" : [ "String" ],
  "columns[0].javaField" : [ "reqnum" ],
  "columns[0].isInsert" : [ "1" ],
  "columns[0].isEdit" : [ "1" ],
  "columns[0].isList" : [ "1" ],
  "columns[0].queryType" : [ "EQ" ],
  "columns[0].isRequired" : [ "1" ],
  "columns[0].htmlType" : [ "input" ],
  "columns[0].dictType" : [ "" ],
  "columns[1].columnId" : [ "96" ],
  "columns[1].sort" : [ "2" ],
  "columns[1].columnComment" : [ "监测目标编号" ],
  "columns[1].javaType" : [ "String" ],
  "columns[1].javaField" : [ "targrtnum" ],
  "columns[1].isInsert" : [ "1" ],
  "columns[1].isEdit" : [ "1" ],
  "columns[1].isList" : [ "1" ],
  "columns[1].queryType" : [ "EQ" ],
  "columns[1].isRequired" : [ "1" ],
  "columns[1].htmlType" : [ "input" ],
  "columns[1].dictType" : [ "" ],
  "columns[2].columnId" : [ "97" ],
  "columns[2].sort" : [ "3" ],
  "columns[2].columnComment" : [ "需求信_需求编号" ],
  "columns[2].javaType" : [ "String" ],
  "columns[2].javaField" : [ "rshReqnum" ],
  "columns[2].isInsert" : [ "1" ],
  "columns[2].isEdit" : [ "1" ],
  "columns[2].queryType" : [ "EQ" ],
  "columns[2].htmlType" : [ "input" ],
  "columns[2].dictType" : [ "" ],
  "columns[3].columnId" : [ "98" ],
  "columns[3].sort" : [ "4" ],
  "columns[3].columnComment" : [ "监测任务类型" ],
  "columns[3].javaType" : [ "String" ],
  "columns[3].javaField" : [ "tasktype" ],
  "columns[3].isInsert" : [ "1" ],
  "columns[3].isEdit" : [ "1" ],
  "columns[3].isList" : [ "1" ],
  "columns[3].isQuery" : [ "1" ],
  "columns[3].queryType" : [ "EQ" ],
  "columns[3].htmlType" : [ "select" ],
  "columns[3].dictType" : [ "sys_oper_type" ],
  "columns[4].columnId" : [ "9', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 14:42:57.827583');
INSERT INTO "adp"."sys_oper_log" VALUES (383, '代码生成', 2, 'com.adp.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/edit', '127.0.0.1', '内网IP', '{
  "tableId" : [ "121" ],
  "tableName" : [ "rsh_jcxqfx_mbq" ],
  "tableComment" : [ "监测需求分析_目标群" ],
  "className" : [ "RshJcxqfxMbq" ],
  "functionAuthor" : [ "qubo" ],
  "remark" : [ "" ],
  "columns[0].columnId" : [ "141" ],
  "columns[0].sort" : [ "1" ],
  "columns[0].columnComment" : [ "标签" ],
  "columns[0].javaType" : [ "String" ],
  "columns[0].javaField" : [ "sign" ],
  "columns[0].isInsert" : [ "1" ],
  "columns[0].isEdit" : [ "1" ],
  "columns[0].isList" : [ "1" ],
  "columns[0].queryType" : [ "EQ" ],
  "columns[0].htmlType" : [ "input" ],
  "columns[0].dictType" : [ "" ],
  "columns[1].columnId" : [ "142" ],
  "columns[1].sort" : [ "2" ],
  "columns[1].columnComment" : [ "目标编号" ],
  "columns[1].javaType" : [ "String" ],
  "columns[1].javaField" : [ "targrtnum" ],
  "columns[1].isInsert" : [ "1" ],
  "columns[1].isEdit" : [ "1" ],
  "columns[1].isList" : [ "1" ],
  "columns[1].queryType" : [ "EQ" ],
  "columns[1].isRequired" : [ "1" ],
  "columns[1].htmlType" : [ "input" ],
  "columns[1].dictType" : [ "" ],
  "columns[2].columnId" : [ "143" ],
  "columns[2].sort" : [ "3" ],
  "columns[2].columnComment" : [ "请求编号" ],
  "columns[2].javaType" : [ "String" ],
  "columns[2].javaField" : [ "reqnum" ],
  "columns[2].isInsert" : [ "1" ],
  "columns[2].isEdit" : [ "1" ],
  "columns[2].isList" : [ "1" ],
  "columns[2].queryType" : [ "EQ" ],
  "columns[2].htmlType" : [ "input" ],
  "columns[2].dictType" : [ "" ],
  "columns[3].columnId" : [ "144" ],
  "columns[3].sort" : [ "4" ],
  "columns[3].columnComment" : [ "需求信_目标编号" ],
  "columns[3].javaType" : [ "String" ],
  "columns[3].javaField" : [ "rshTargrtnum" ],
  "columns[3].isInsert" : [ "1" ],
  "columns[3].isEdit" : [ "1" ],
  "columns[3].queryType" : [ "EQ" ],
  "columns[3].htmlType" : [ "input" ],
  "columns[3].dictType" : [ "" ],
  "columns[4].columnId" : [ "145" ],
  "columns[4].sort" : [ "5" ],
  "columns[4].columnComment" : [ "创建者" ],
  "columns[4].javaT', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 14:43:45.238294');
INSERT INTO "adp"."sys_oper_log" VALUES (407, '菜单管理', 2, 'com.adp.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/adp/system/menu/edit', '127.0.0.1', '内网IP', '{
  "menuId" : [ "2050" ],
  "parentId" : [ "2020" ],
  "menuType" : [ "C" ],
  "menuName" : [ "目标群" ],
  "url" : [ "/csci/mbq" ],
  "target" : [ "menuItem" ],
  "perms" : [ "csci:mbq:view" ],
  "orderNum" : [ "1" ],
  "icon" : [ "#" ],
  "visible" : [ "0" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 15:49:03.805424');
INSERT INTO "adp"."sys_oper_log" VALUES (384, '代码生成', 2, 'com.adp.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/edit', '127.0.0.1', '内网IP', '{
  "tableId" : [ "102" ],
  "tableName" : [ "rsh_jcxqfx_xqxx" ],
  "tableComment" : [ "监测需求分析_需求信息" ],
  "className" : [ "RshJcxqfxXqxx" ],
  "functionAuthor" : [ "qubo" ],
  "remark" : [ "" ],
  "columns[0].columnId" : [ "70" ],
  "columns[0].sort" : [ "1" ],
  "columns[0].columnComment" : [ "需求编号" ],
  "columns[0].javaType" : [ "String" ],
  "columns[0].javaField" : [ "reqnum" ],
  "columns[0].isInsert" : [ "1" ],
  "columns[0].isEdit" : [ "1" ],
  "columns[0].isList" : [ "1" ],
  "columns[0].queryType" : [ "EQ" ],
  "columns[0].isRequired" : [ "1" ],
  "columns[0].htmlType" : [ "input" ],
  "columns[0].dictType" : [ "" ],
  "columns[1].columnId" : [ "71" ],
  "columns[1].sort" : [ "2" ],
  "columns[1].columnComment" : [ "需求名称" ],
  "columns[1].javaType" : [ "String" ],
  "columns[1].javaField" : [ "reqname" ],
  "columns[1].isInsert" : [ "1" ],
  "columns[1].isEdit" : [ "1" ],
  "columns[1].isList" : [ "1" ],
  "columns[1].isQuery" : [ "1" ],
  "columns[1].queryType" : [ "LIKE" ],
  "columns[1].htmlType" : [ "input" ],
  "columns[1].dictType" : [ "" ],
  "columns[2].columnId" : [ "72" ],
  "columns[2].sort" : [ "3" ],
  "columns[2].columnComment" : [ "需求来源" ],
  "columns[2].javaType" : [ "String" ],
  "columns[2].javaField" : [ "reqsource" ],
  "columns[2].isInsert" : [ "1" ],
  "columns[2].isEdit" : [ "1" ],
  "columns[2].isList" : [ "1" ],
  "columns[2].queryType" : [ "EQ" ],
  "columns[2].htmlType" : [ "select" ],
  "columns[2].dictType" : [ "sys_user_sex" ],
  "columns[3].columnId" : [ "73" ],
  "columns[3].sort" : [ "4" ],
  "columns[3].columnComment" : [ "需求开始时间" ],
  "columns[3].javaType" : [ "Date" ],
  "columns[3].javaField" : [ "reqstarttime" ],
  "columns[3].isInsert" : [ "1" ],
  "columns[3].isEdit" : [ "1" ],
  "columns[3].isList" : [ "1" ],
  "columns[3].queryType" : [ "EQ" ],
  "columns[3].htmlType" : [ "datetime" ],
  "columns[3].dictType" : [ "" ],
  "columns[4].columnId" : [ "74" ],
  "colum', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 14:45:38.560776');
INSERT INTO "adp"."sys_oper_log" VALUES (385, '代码生成', 2, 'com.adp.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/edit', '127.0.0.1', '内网IP', '{
  "tableId" : [ "104" ],
  "tableName" : [ "rsh_jcxqfx_xqxx_mbxx" ],
  "tableComment" : [ "监测需求分析_需求信息_目标信息" ],
  "className" : [ "RshJcxqfxXqxxMbxx" ],
  "functionAuthor" : [ "qubo" ],
  "remark" : [ "" ],
  "columns[0].columnId" : [ "123" ],
  "columns[0].sort" : [ "1" ],
  "columns[0].columnComment" : [ "需求编号" ],
  "columns[0].javaType" : [ "String" ],
  "columns[0].javaField" : [ "reqnum" ],
  "columns[0].isInsert" : [ "1" ],
  "columns[0].isEdit" : [ "1" ],
  "columns[0].isList" : [ "1" ],
  "columns[0].queryType" : [ "EQ" ],
  "columns[0].isRequired" : [ "1" ],
  "columns[0].htmlType" : [ "input" ],
  "columns[0].dictType" : [ "" ],
  "columns[1].columnId" : [ "124" ],
  "columns[1].sort" : [ "2" ],
  "columns[1].columnComment" : [ "目标编号" ],
  "columns[1].javaType" : [ "String" ],
  "columns[1].javaField" : [ "targrtnum" ],
  "columns[1].isInsert" : [ "1" ],
  "columns[1].isEdit" : [ "1" ],
  "columns[1].isList" : [ "1" ],
  "columns[1].queryType" : [ "EQ" ],
  "columns[1].isRequired" : [ "1" ],
  "columns[1].htmlType" : [ "input" ],
  "columns[1].dictType" : [ "" ],
  "columns[2].columnId" : [ "125" ],
  "columns[2].sort" : [ "3" ],
  "columns[2].columnComment" : [ "优先级" ],
  "columns[2].javaType" : [ "String" ],
  "columns[2].javaField" : [ "priority" ],
  "columns[2].isInsert" : [ "1" ],
  "columns[2].isEdit" : [ "1" ],
  "columns[2].isList" : [ "1" ],
  "columns[2].queryType" : [ "EQ" ],
  "columns[2].htmlType" : [ "input" ],
  "columns[2].dictType" : [ "" ],
  "columns[3].columnId" : [ "126" ],
  "columns[3].sort" : [ "4" ],
  "columns[3].columnComment" : [ "目标名称" ],
  "columns[3].javaType" : [ "String" ],
  "columns[3].javaField" : [ "targetname" ],
  "columns[3].isInsert" : [ "1" ],
  "columns[3].isEdit" : [ "1" ],
  "columns[3].isList" : [ "1" ],
  "columns[3].isQuery" : [ "1" ],
  "columns[3].queryType" : [ "LIKE" ],
  "columns[3].htmlType" : [ "input" ],
  "columns[3].dictType" : [ "" ],
  "colu', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 14:48:41.381233');
INSERT INTO "adp"."sys_oper_log" VALUES (386, '代码生成', 2, 'com.adp.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/edit', '127.0.0.1', '内网IP', '{
  "tableId" : [ "104" ],
  "tableName" : [ "rsh_jcxqfx_xqxx_mbxx" ],
  "tableComment" : [ "监测需求分析_需求信息_目标信息" ],
  "className" : [ "RshJcxqfxXqxxMbxx" ],
  "functionAuthor" : [ "qubo" ],
  "remark" : [ "" ],
  "columns[0].columnId" : [ "123" ],
  "columns[0].sort" : [ "1" ],
  "columns[0].columnComment" : [ "需求编号" ],
  "columns[0].javaType" : [ "String" ],
  "columns[0].javaField" : [ "reqnum" ],
  "columns[0].isInsert" : [ "1" ],
  "columns[0].isEdit" : [ "1" ],
  "columns[0].isList" : [ "1" ],
  "columns[0].queryType" : [ "EQ" ],
  "columns[0].isRequired" : [ "1" ],
  "columns[0].htmlType" : [ "input" ],
  "columns[0].dictType" : [ "" ],
  "columns[1].columnId" : [ "124" ],
  "columns[1].sort" : [ "2" ],
  "columns[1].columnComment" : [ "目标编号" ],
  "columns[1].javaType" : [ "String" ],
  "columns[1].javaField" : [ "targrtnum" ],
  "columns[1].isInsert" : [ "1" ],
  "columns[1].isEdit" : [ "1" ],
  "columns[1].isList" : [ "1" ],
  "columns[1].queryType" : [ "EQ" ],
  "columns[1].isRequired" : [ "1" ],
  "columns[1].htmlType" : [ "input" ],
  "columns[1].dictType" : [ "" ],
  "columns[2].columnId" : [ "125" ],
  "columns[2].sort" : [ "3" ],
  "columns[2].columnComment" : [ "优先级" ],
  "columns[2].javaType" : [ "String" ],
  "columns[2].javaField" : [ "priority" ],
  "columns[2].isInsert" : [ "1" ],
  "columns[2].isEdit" : [ "1" ],
  "columns[2].isList" : [ "1" ],
  "columns[2].queryType" : [ "EQ" ],
  "columns[2].htmlType" : [ "input" ],
  "columns[2].dictType" : [ "" ],
  "columns[3].columnId" : [ "126" ],
  "columns[3].sort" : [ "4" ],
  "columns[3].columnComment" : [ "目标名称" ],
  "columns[3].javaType" : [ "String" ],
  "columns[3].javaField" : [ "targetname" ],
  "columns[3].isInsert" : [ "1" ],
  "columns[3].isEdit" : [ "1" ],
  "columns[3].isList" : [ "1" ],
  "columns[3].isQuery" : [ "1" ],
  "columns[3].queryType" : [ "LIKE" ],
  "columns[3].htmlType" : [ "input" ],
  "columns[3].dictType" : [ "" ],
  "colu', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 14:50:58.560079');
INSERT INTO "adp"."sys_oper_log" VALUES (387, '代码生成', 2, 'com.adp.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/edit', '127.0.0.1', '内网IP', '{
  "tableId" : [ "101" ],
  "tableName" : [ "rsh_jcxqfx_xqxx_tqxx" ],
  "tableComment" : [ "监测需求分析_需求信息_天区信息" ],
  "className" : [ "RshJcxqfxXqxxTqxx" ],
  "functionAuthor" : [ "qubo" ],
  "remark" : [ "" ],
  "columns[0].columnId" : [ "61" ],
  "columns[0].sort" : [ "1" ],
  "columns[0].columnComment" : [ "需求编号" ],
  "columns[0].javaType" : [ "String" ],
  "columns[0].javaField" : [ "reqnum" ],
  "columns[0].isInsert" : [ "1" ],
  "columns[0].isList" : [ "1" ],
  "columns[0].queryType" : [ "EQ" ],
  "columns[0].isRequired" : [ "1" ],
  "columns[0].htmlType" : [ "input" ],
  "columns[0].dictType" : [ "" ],
  "columns[1].columnId" : [ "62" ],
  "columns[1].sort" : [ "2" ],
  "columns[1].columnComment" : [ "天区编号" ],
  "columns[1].javaType" : [ "String" ],
  "columns[1].javaField" : [ "targrtnum" ],
  "columns[1].isInsert" : [ "1" ],
  "columns[1].isList" : [ "1" ],
  "columns[1].queryType" : [ "EQ" ],
  "columns[1].isRequired" : [ "1" ],
  "columns[1].htmlType" : [ "input" ],
  "columns[1].dictType" : [ "" ],
  "columns[2].columnId" : [ "63" ],
  "columns[2].sort" : [ "3" ],
  "columns[2].columnComment" : [ "天区名称" ],
  "columns[2].javaType" : [ "String" ],
  "columns[2].javaField" : [ "targetname" ],
  "columns[2].isInsert" : [ "1" ],
  "columns[2].isEdit" : [ "1" ],
  "columns[2].isList" : [ "1" ],
  "columns[2].isQuery" : [ "1" ],
  "columns[2].queryType" : [ "LIKE" ],
  "columns[2].htmlType" : [ "input" ],
  "columns[2].dictType" : [ "" ],
  "columns[3].columnId" : [ "64" ],
  "columns[3].sort" : [ "4" ],
  "columns[3].columnComment" : [ "优先级" ],
  "columns[3].javaType" : [ "String" ],
  "columns[3].javaField" : [ "priority" ],
  "columns[3].isInsert" : [ "1" ],
  "columns[3].isEdit" : [ "1" ],
  "columns[3].isList" : [ "1" ],
  "columns[3].queryType" : [ "EQ" ],
  "columns[3].htmlType" : [ "input" ],
  "columns[3].dictType" : [ "" ],
  "columns[4].columnId" : [ "65" ],
  "columns[4].sort" : [ "5" ],
  "columns', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 14:54:41.341821');
INSERT INTO "adp"."sys_oper_log" VALUES (388, '代码生成', 2, 'com.adp.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/edit', '127.0.0.1', '内网IP', '{
  "tableId" : [ "121" ],
  "tableName" : [ "rsh_jcxqfx_mbq" ],
  "tableComment" : [ "监测需求分析_目标群" ],
  "className" : [ "RshJcxqfxMbq" ],
  "functionAuthor" : [ "qubo" ],
  "remark" : [ "" ],
  "columns[0].columnId" : [ "141" ],
  "columns[0].sort" : [ "1" ],
  "columns[0].columnComment" : [ "标签" ],
  "columns[0].javaType" : [ "String" ],
  "columns[0].javaField" : [ "sign" ],
  "columns[0].isInsert" : [ "1" ],
  "columns[0].isEdit" : [ "1" ],
  "columns[0].isList" : [ "1" ],
  "columns[0].queryType" : [ "EQ" ],
  "columns[0].htmlType" : [ "input" ],
  "columns[0].dictType" : [ "" ],
  "columns[1].columnId" : [ "142" ],
  "columns[1].sort" : [ "2" ],
  "columns[1].columnComment" : [ "目标编号" ],
  "columns[1].javaType" : [ "String" ],
  "columns[1].javaField" : [ "targrtnum" ],
  "columns[1].isInsert" : [ "1" ],
  "columns[1].isList" : [ "1" ],
  "columns[1].queryType" : [ "EQ" ],
  "columns[1].isRequired" : [ "1" ],
  "columns[1].htmlType" : [ "input" ],
  "columns[1].dictType" : [ "" ],
  "columns[2].columnId" : [ "143" ],
  "columns[2].sort" : [ "3" ],
  "columns[2].columnComment" : [ "请求编号" ],
  "columns[2].javaType" : [ "String" ],
  "columns[2].javaField" : [ "reqnum" ],
  "columns[2].isInsert" : [ "1" ],
  "columns[2].isEdit" : [ "1" ],
  "columns[2].isList" : [ "1" ],
  "columns[2].queryType" : [ "EQ" ],
  "columns[2].htmlType" : [ "input" ],
  "columns[2].dictType" : [ "" ],
  "columns[3].columnId" : [ "144" ],
  "columns[3].sort" : [ "4" ],
  "columns[3].columnComment" : [ "需求信_目标编号" ],
  "columns[3].javaType" : [ "String" ],
  "columns[3].javaField" : [ "rshTargrtnum" ],
  "columns[3].isInsert" : [ "1" ],
  "columns[3].isEdit" : [ "1" ],
  "columns[3].queryType" : [ "EQ" ],
  "columns[3].htmlType" : [ "input" ],
  "columns[3].dictType" : [ "" ],
  "columns[4].columnId" : [ "145" ],
  "columns[4].sort" : [ "5" ],
  "columns[4].columnComment" : [ "创建者" ],
  "columns[4].javaType" : [ "String" ],
  "columns[4', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 14:59:22.412898');
INSERT INTO "adp"."sys_oper_log" VALUES (389, '代码生成', 8, 'com.adp.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/adp/tool/gen/genCode/rsh_jcxqfx_mbq', '127.0.0.1', '内网IP', '{ }', 'null', '0', NULL, '2020-11-11 14:59:25.228059');
INSERT INTO "adp"."sys_oper_log" VALUES (390, '代码生成', 2, 'com.adp.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/edit', '127.0.0.1', '内网IP', '{
  "tableId" : [ "121" ],
  "tableName" : [ "rsh_jcxqfx_mbq" ],
  "tableComment" : [ "监测需求分析_目标群" ],
  "className" : [ "RshJcxqfxMbq" ],
  "functionAuthor" : [ "qubo" ],
  "remark" : [ "" ],
  "columns[0].columnId" : [ "141" ],
  "columns[0].sort" : [ "1" ],
  "columns[0].columnComment" : [ "标签" ],
  "columns[0].javaType" : [ "String" ],
  "columns[0].javaField" : [ "sign" ],
  "columns[0].isInsert" : [ "1" ],
  "columns[0].isEdit" : [ "1" ],
  "columns[0].isList" : [ "1" ],
  "columns[0].queryType" : [ "EQ" ],
  "columns[0].htmlType" : [ "input" ],
  "columns[0].dictType" : [ "" ],
  "columns[1].columnId" : [ "142" ],
  "columns[1].sort" : [ "2" ],
  "columns[1].columnComment" : [ "目标编号" ],
  "columns[1].javaType" : [ "String" ],
  "columns[1].javaField" : [ "targrtnum" ],
  "columns[1].isInsert" : [ "1" ],
  "columns[1].isList" : [ "1" ],
  "columns[1].queryType" : [ "EQ" ],
  "columns[1].isRequired" : [ "1" ],
  "columns[1].htmlType" : [ "input" ],
  "columns[1].dictType" : [ "" ],
  "columns[2].columnId" : [ "143" ],
  "columns[2].sort" : [ "3" ],
  "columns[2].columnComment" : [ "请求编号" ],
  "columns[2].javaType" : [ "String" ],
  "columns[2].javaField" : [ "reqnum" ],
  "columns[2].isInsert" : [ "1" ],
  "columns[2].isEdit" : [ "1" ],
  "columns[2].isList" : [ "1" ],
  "columns[2].queryType" : [ "EQ" ],
  "columns[2].htmlType" : [ "input" ],
  "columns[2].dictType" : [ "" ],
  "columns[3].columnId" : [ "144" ],
  "columns[3].sort" : [ "4" ],
  "columns[3].columnComment" : [ "需求信_目标编号" ],
  "columns[3].javaType" : [ "String" ],
  "columns[3].javaField" : [ "rshTargrtnum" ],
  "columns[3].isInsert" : [ "1" ],
  "columns[3].isEdit" : [ "1" ],
  "columns[3].queryType" : [ "EQ" ],
  "columns[3].htmlType" : [ "input" ],
  "columns[3].dictType" : [ "" ],
  "columns[4].columnId" : [ "145" ],
  "columns[4].sort" : [ "5" ],
  "columns[4].columnComment" : [ "创建者" ],
  "columns[4].javaType" : [ "String" ],
  "columns[4', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 15:00:35.036052');
INSERT INTO "adp"."sys_oper_log" VALUES (391, '代码生成', 8, 'com.adp.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/adp/tool/gen/genCode/rsh_jcxqfx_mbq', '127.0.0.1', '内网IP', '{ }', 'null', '0', NULL, '2020-11-11 15:00:37.713205');
INSERT INTO "adp"."sys_oper_log" VALUES (362, '代码生成', 2, 'com.adp.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/edit', '127.0.0.1', '内网IP', '{
  "tableId" : [ "101" ],
  "tableName" : [ "rsh_jcxqfx_xqxx_tqxx" ],
  "tableComment" : [ "监测需求分析_需求信息_天区信息" ],
  "className" : [ "RshJcxqfxXqxxTqxx" ],
  "functionAuthor" : [ "qubo" ],
  "remark" : [ "" ],
  "columns[0].columnId" : [ "61" ],
  "columns[0].sort" : [ "1" ],
  "columns[0].columnComment" : [ "需求编号" ],
  "columns[0].javaType" : [ "String" ],
  "columns[0].javaField" : [ "reqnum" ],
  "columns[0].isInsert" : [ "1" ],
  "columns[0].isList" : [ "1" ],
  "columns[0].queryType" : [ "EQ" ],
  "columns[0].isRequired" : [ "1" ],
  "columns[0].htmlType" : [ "input" ],
  "columns[0].dictType" : [ "" ],
  "columns[1].columnId" : [ "62" ],
  "columns[1].sort" : [ "2" ],
  "columns[1].columnComment" : [ "天区编号" ],
  "columns[1].javaType" : [ "String" ],
  "columns[1].javaField" : [ "targrtnum" ],
  "columns[1].isInsert" : [ "1" ],
  "columns[1].isList" : [ "1" ],
  "columns[1].queryType" : [ "EQ" ],
  "columns[1].isRequired" : [ "1" ],
  "columns[1].htmlType" : [ "input" ],
  "columns[1].dictType" : [ "" ],
  "columns[2].columnId" : [ "63" ],
  "columns[2].sort" : [ "3" ],
  "columns[2].columnComment" : [ "天区名称" ],
  "columns[2].javaType" : [ "String" ],
  "columns[2].javaField" : [ "targetname" ],
  "columns[2].isInsert" : [ "1" ],
  "columns[2].isEdit" : [ "1" ],
  "columns[2].isList" : [ "1" ],
  "columns[2].isQuery" : [ "1" ],
  "columns[2].queryType" : [ "LIKE" ],
  "columns[2].htmlType" : [ "input" ],
  "columns[2].dictType" : [ "" ],
  "columns[3].columnId" : [ "64" ],
  "columns[3].sort" : [ "4" ],
  "columns[3].columnComment" : [ "优先级" ],
  "columns[3].javaType" : [ "String" ],
  "columns[3].javaField" : [ "priority" ],
  "columns[3].isInsert" : [ "1" ],
  "columns[3].isEdit" : [ "1" ],
  "columns[3].isList" : [ "1" ],
  "columns[3].queryType" : [ "EQ" ],
  "columns[3].htmlType" : [ "input" ],
  "columns[3].dictType" : [ "" ],
  "columns[4].columnId" : [ "65" ],
  "columns[4].sort" : [ "5" ],
  "columns', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 14:53:44.194553');
INSERT INTO "adp"."sys_oper_log" VALUES (363, '代码生成', 2, 'com.adp.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/edit', '127.0.0.1', '内网IP', '{
  "tableId" : [ "121" ],
  "tableName" : [ "rsh_jcxqfx_mbq" ],
  "tableComment" : [ "监测需求分析_目标群" ],
  "className" : [ "RshJcxqfxMbq" ],
  "functionAuthor" : [ "qubo" ],
  "remark" : [ "" ],
  "columns[0].columnId" : [ "141" ],
  "columns[0].sort" : [ "1" ],
  "columns[0].columnComment" : [ "标签" ],
  "columns[0].javaType" : [ "String" ],
  "columns[0].javaField" : [ "sign" ],
  "columns[0].isInsert" : [ "1" ],
  "columns[0].isEdit" : [ "1" ],
  "columns[0].isList" : [ "1" ],
  "columns[0].queryType" : [ "EQ" ],
  "columns[0].htmlType" : [ "input" ],
  "columns[0].dictType" : [ "" ],
  "columns[1].columnId" : [ "142" ],
  "columns[1].sort" : [ "2" ],
  "columns[1].columnComment" : [ "目标编号" ],
  "columns[1].javaType" : [ "String" ],
  "columns[1].javaField" : [ "targrtnum" ],
  "columns[1].isInsert" : [ "1" ],
  "columns[1].isList" : [ "1" ],
  "columns[1].queryType" : [ "EQ" ],
  "columns[1].isRequired" : [ "1" ],
  "columns[1].htmlType" : [ "input" ],
  "columns[1].dictType" : [ "" ],
  "columns[2].columnId" : [ "143" ],
  "columns[2].sort" : [ "3" ],
  "columns[2].columnComment" : [ "请求编号" ],
  "columns[2].javaType" : [ "String" ],
  "columns[2].javaField" : [ "reqnum" ],
  "columns[2].isInsert" : [ "1" ],
  "columns[2].isEdit" : [ "1" ],
  "columns[2].isList" : [ "1" ],
  "columns[2].queryType" : [ "EQ" ],
  "columns[2].htmlType" : [ "input" ],
  "columns[2].dictType" : [ "" ],
  "columns[3].columnId" : [ "144" ],
  "columns[3].sort" : [ "4" ],
  "columns[3].columnComment" : [ "需求信_目标编号" ],
  "columns[3].javaType" : [ "String" ],
  "columns[3].javaField" : [ "rshTargrtnum" ],
  "columns[3].isInsert" : [ "1" ],
  "columns[3].isEdit" : [ "1" ],
  "columns[3].queryType" : [ "EQ" ],
  "columns[3].htmlType" : [ "input" ],
  "columns[3].dictType" : [ "" ],
  "columns[4].columnId" : [ "145" ],
  "columns[4].sort" : [ "5" ],
  "columns[4].columnComment" : [ "创建者" ],
  "columns[4].javaType" : [ "String" ],
  "columns[4', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 14:54:00.633493');
INSERT INTO "adp"."sys_oper_log" VALUES (364, '代码生成', 2, 'com.adp.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/edit', '127.0.0.1', '内网IP', '{
  "tableId" : [ "103" ],
  "tableName" : [ "rsh_jcxqfx_xqxx_jcrw" ],
  "tableComment" : [ "监测需求分析_监测任务" ],
  "className" : [ "RshJcxqfxXqxxJcrw" ],
  "functionAuthor" : [ "qubo" ],
  "remark" : [ "" ],
  "columns[0].columnId" : [ "95" ],
  "columns[0].sort" : [ "1" ],
  "columns[0].columnComment" : [ "需求编号" ],
  "columns[0].javaType" : [ "String" ],
  "columns[0].javaField" : [ "reqnum" ],
  "columns[0].isInsert" : [ "1" ],
  "columns[0].isList" : [ "1" ],
  "columns[0].queryType" : [ "EQ" ],
  "columns[0].isRequired" : [ "1" ],
  "columns[0].htmlType" : [ "input" ],
  "columns[0].dictType" : [ "" ],
  "columns[1].columnId" : [ "96" ],
  "columns[1].sort" : [ "2" ],
  "columns[1].columnComment" : [ "监测目标编号" ],
  "columns[1].javaType" : [ "String" ],
  "columns[1].javaField" : [ "targrtnum" ],
  "columns[1].isInsert" : [ "1" ],
  "columns[1].isList" : [ "1" ],
  "columns[1].queryType" : [ "EQ" ],
  "columns[1].isRequired" : [ "1" ],
  "columns[1].htmlType" : [ "input" ],
  "columns[1].dictType" : [ "" ],
  "columns[2].columnId" : [ "97" ],
  "columns[2].sort" : [ "3" ],
  "columns[2].columnComment" : [ "需求信_需求编号" ],
  "columns[2].javaType" : [ "String" ],
  "columns[2].javaField" : [ "rshReqnum" ],
  "columns[2].isInsert" : [ "1" ],
  "columns[2].isEdit" : [ "1" ],
  "columns[2].queryType" : [ "EQ" ],
  "columns[2].htmlType" : [ "input" ],
  "columns[2].dictType" : [ "" ],
  "columns[3].columnId" : [ "98" ],
  "columns[3].sort" : [ "4" ],
  "columns[3].columnComment" : [ "监测任务类型" ],
  "columns[3].javaType" : [ "String" ],
  "columns[3].javaField" : [ "tasktype" ],
  "columns[3].isInsert" : [ "1" ],
  "columns[3].isEdit" : [ "1" ],
  "columns[3].isList" : [ "1" ],
  "columns[3].isQuery" : [ "1" ],
  "columns[3].queryType" : [ "EQ" ],
  "columns[3].htmlType" : [ "select" ],
  "columns[3].dictType" : [ "sys_oper_type" ],
  "columns[4].columnId" : [ "99" ],
  "columns[4].sort" : [ "5" ],
  "columns[4].columnComment" ', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 14:54:24.195841');
INSERT INTO "adp"."sys_oper_log" VALUES (365, '代码生成', 2, 'com.adp.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/edit', '127.0.0.1', '内网IP', '{
  "tableId" : [ "104" ],
  "tableName" : [ "rsh_jcxqfx_xqxx_mbxx" ],
  "tableComment" : [ "监测需求分析_需求信息_目标信息" ],
  "className" : [ "RshJcxqfxXqxxMbxx" ],
  "functionAuthor" : [ "qubo" ],
  "remark" : [ "" ],
  "columns[0].columnId" : [ "123" ],
  "columns[0].sort" : [ "1" ],
  "columns[0].columnComment" : [ "需求编号" ],
  "columns[0].javaType" : [ "String" ],
  "columns[0].javaField" : [ "reqnum" ],
  "columns[0].isInsert" : [ "1" ],
  "columns[0].isList" : [ "1" ],
  "columns[0].queryType" : [ "EQ" ],
  "columns[0].isRequired" : [ "1" ],
  "columns[0].htmlType" : [ "input" ],
  "columns[0].dictType" : [ "" ],
  "columns[1].columnId" : [ "124" ],
  "columns[1].sort" : [ "2" ],
  "columns[1].columnComment" : [ "目标编号" ],
  "columns[1].javaType" : [ "String" ],
  "columns[1].javaField" : [ "targrtnum" ],
  "columns[1].isInsert" : [ "1" ],
  "columns[1].isList" : [ "1" ],
  "columns[1].queryType" : [ "EQ" ],
  "columns[1].isRequired" : [ "1" ],
  "columns[1].htmlType" : [ "input" ],
  "columns[1].dictType" : [ "" ],
  "columns[2].columnId" : [ "125" ],
  "columns[2].sort" : [ "3" ],
  "columns[2].columnComment" : [ "优先级" ],
  "columns[2].javaType" : [ "String" ],
  "columns[2].javaField" : [ "priority" ],
  "columns[2].isInsert" : [ "1" ],
  "columns[2].isEdit" : [ "1" ],
  "columns[2].isList" : [ "1" ],
  "columns[2].queryType" : [ "EQ" ],
  "columns[2].htmlType" : [ "input" ],
  "columns[2].dictType" : [ "" ],
  "columns[3].columnId" : [ "126" ],
  "columns[3].sort" : [ "4" ],
  "columns[3].columnComment" : [ "目标名称" ],
  "columns[3].javaType" : [ "String" ],
  "columns[3].javaField" : [ "targetname" ],
  "columns[3].isInsert" : [ "1" ],
  "columns[3].isEdit" : [ "1" ],
  "columns[3].isList" : [ "1" ],
  "columns[3].isQuery" : [ "1" ],
  "columns[3].queryType" : [ "LIKE" ],
  "columns[3].htmlType" : [ "input" ],
  "columns[3].dictType" : [ "" ],
  "columns[4].columnId" : [ "127" ],
  "columns[4].sort" : [ "5" ],
  "co', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 14:54:30.768217');
INSERT INTO "adp"."sys_oper_log" VALUES (366, '代码生成', 2, 'com.adp.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/edit', '127.0.0.1', '内网IP', '{
  "tableId" : [ "104" ],
  "tableName" : [ "rsh_jcxqfx_xqxx_mbxx" ],
  "tableComment" : [ "监测需求分析_需求信息_目标信息" ],
  "className" : [ "RshJcxqfxXqxxMbxx" ],
  "functionAuthor" : [ "qubo" ],
  "remark" : [ "" ],
  "columns[0].columnId" : [ "123" ],
  "columns[0].sort" : [ "1" ],
  "columns[0].columnComment" : [ "需求编号" ],
  "columns[0].javaType" : [ "String" ],
  "columns[0].javaField" : [ "reqnum" ],
  "columns[0].isInsert" : [ "1" ],
  "columns[0].isList" : [ "1" ],
  "columns[0].queryType" : [ "EQ" ],
  "columns[0].isRequired" : [ "1" ],
  "columns[0].htmlType" : [ "input" ],
  "columns[0].dictType" : [ "" ],
  "columns[1].columnId" : [ "124" ],
  "columns[1].sort" : [ "2" ],
  "columns[1].columnComment" : [ "目标编号" ],
  "columns[1].javaType" : [ "String" ],
  "columns[1].javaField" : [ "targrtnum" ],
  "columns[1].isInsert" : [ "1" ],
  "columns[1].isList" : [ "1" ],
  "columns[1].queryType" : [ "EQ" ],
  "columns[1].isRequired" : [ "1" ],
  "columns[1].htmlType" : [ "input" ],
  "columns[1].dictType" : [ "" ],
  "columns[2].columnId" : [ "125" ],
  "columns[2].sort" : [ "3" ],
  "columns[2].columnComment" : [ "优先级" ],
  "columns[2].javaType" : [ "String" ],
  "columns[2].javaField" : [ "priority" ],
  "columns[2].isInsert" : [ "1" ],
  "columns[2].isEdit" : [ "1" ],
  "columns[2].isList" : [ "1" ],
  "columns[2].queryType" : [ "EQ" ],
  "columns[2].htmlType" : [ "input" ],
  "columns[2].dictType" : [ "" ],
  "columns[3].columnId" : [ "126" ],
  "columns[3].sort" : [ "4" ],
  "columns[3].columnComment" : [ "目标名称" ],
  "columns[3].javaType" : [ "String" ],
  "columns[3].javaField" : [ "targetname" ],
  "columns[3].isInsert" : [ "1" ],
  "columns[3].isEdit" : [ "1" ],
  "columns[3].isList" : [ "1" ],
  "columns[3].isQuery" : [ "1" ],
  "columns[3].queryType" : [ "LIKE" ],
  "columns[3].htmlType" : [ "input" ],
  "columns[3].dictType" : [ "" ],
  "columns[4].columnId" : [ "127" ],
  "columns[4].sort" : [ "5" ],
  "co', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 14:54:34.392424');
INSERT INTO "adp"."sys_oper_log" VALUES (367, '代码生成', 8, 'com.adp.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/adp/tool/gen/genCode/rsh_jcxqfx_mbq', '127.0.0.1', '内网IP', '{ }', 'null', '0', NULL, '2020-11-11 14:55:53.917973');
INSERT INTO "adp"."sys_oper_log" VALUES (368, '代码生成', 2, 'com.adp.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/edit', '127.0.0.1', '内网IP', '{
  "tableId" : [ "121" ],
  "tableName" : [ "rsh_jcxqfx_mbq" ],
  "tableComment" : [ "监测需求分析_目标群" ],
  "className" : [ "RshJcxqfxMbq" ],
  "functionAuthor" : [ "qubo" ],
  "remark" : [ "" ],
  "columns[0].columnId" : [ "141" ],
  "columns[0].sort" : [ "1" ],
  "columns[0].columnComment" : [ "标签" ],
  "columns[0].javaType" : [ "String" ],
  "columns[0].javaField" : [ "sign" ],
  "columns[0].isInsert" : [ "1" ],
  "columns[0].isEdit" : [ "1" ],
  "columns[0].isList" : [ "1" ],
  "columns[0].queryType" : [ "EQ" ],
  "columns[0].htmlType" : [ "input" ],
  "columns[0].dictType" : [ "" ],
  "columns[1].columnId" : [ "142" ],
  "columns[1].sort" : [ "2" ],
  "columns[1].columnComment" : [ "目标编号" ],
  "columns[1].javaType" : [ "String" ],
  "columns[1].javaField" : [ "targrtnum" ],
  "columns[1].isInsert" : [ "1" ],
  "columns[1].isList" : [ "1" ],
  "columns[1].queryType" : [ "EQ" ],
  "columns[1].isRequired" : [ "1" ],
  "columns[1].htmlType" : [ "input" ],
  "columns[1].dictType" : [ "" ],
  "columns[2].columnId" : [ "143" ],
  "columns[2].sort" : [ "3" ],
  "columns[2].columnComment" : [ "请求编号" ],
  "columns[2].javaType" : [ "String" ],
  "columns[2].javaField" : [ "reqnum" ],
  "columns[2].isInsert" : [ "1" ],
  "columns[2].isEdit" : [ "1" ],
  "columns[2].isList" : [ "1" ],
  "columns[2].queryType" : [ "EQ" ],
  "columns[2].htmlType" : [ "input" ],
  "columns[2].dictType" : [ "" ],
  "columns[3].columnId" : [ "144" ],
  "columns[3].sort" : [ "4" ],
  "columns[3].columnComment" : [ "需求信_目标编号" ],
  "columns[3].javaType" : [ "String" ],
  "columns[3].javaField" : [ "rshTargrtnum" ],
  "columns[3].isInsert" : [ "1" ],
  "columns[3].isEdit" : [ "1" ],
  "columns[3].queryType" : [ "EQ" ],
  "columns[3].htmlType" : [ "input" ],
  "columns[3].dictType" : [ "" ],
  "columns[4].columnId" : [ "145" ],
  "columns[4].sort" : [ "5" ],
  "columns[4].columnComment" : [ "创建者" ],
  "columns[4].javaType" : [ "String" ],
  "columns[4', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 15:01:33.667405');
INSERT INTO "adp"."sys_oper_log" VALUES (369, '代码生成', 2, 'com.adp.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/edit', '127.0.0.1', '内网IP', '{
  "tableId" : [ "102" ],
  "tableName" : [ "rsh_jcxqfx_xqxx" ],
  "tableComment" : [ "监测需求分析_需求信息" ],
  "className" : [ "RshJcxqfxXqxx" ],
  "functionAuthor" : [ "qubo" ],
  "remark" : [ "" ],
  "columns[0].columnId" : [ "70" ],
  "columns[0].sort" : [ "1" ],
  "columns[0].columnComment" : [ "需求编号" ],
  "columns[0].javaType" : [ "String" ],
  "columns[0].javaField" : [ "reqnum" ],
  "columns[0].isInsert" : [ "1" ],
  "columns[0].isEdit" : [ "1" ],
  "columns[0].isList" : [ "1" ],
  "columns[0].queryType" : [ "EQ" ],
  "columns[0].isRequired" : [ "1" ],
  "columns[0].htmlType" : [ "input" ],
  "columns[0].dictType" : [ "" ],
  "columns[1].columnId" : [ "71" ],
  "columns[1].sort" : [ "2" ],
  "columns[1].columnComment" : [ "需求名称" ],
  "columns[1].javaType" : [ "String" ],
  "columns[1].javaField" : [ "reqname" ],
  "columns[1].isInsert" : [ "1" ],
  "columns[1].isEdit" : [ "1" ],
  "columns[1].isList" : [ "1" ],
  "columns[1].isQuery" : [ "1" ],
  "columns[1].queryType" : [ "LIKE" ],
  "columns[1].htmlType" : [ "input" ],
  "columns[1].dictType" : [ "" ],
  "columns[2].columnId" : [ "72" ],
  "columns[2].sort" : [ "3" ],
  "columns[2].columnComment" : [ "需求来源" ],
  "columns[2].javaType" : [ "String" ],
  "columns[2].javaField" : [ "reqsource" ],
  "columns[2].isInsert" : [ "1" ],
  "columns[2].isEdit" : [ "1" ],
  "columns[2].isList" : [ "1" ],
  "columns[2].queryType" : [ "EQ" ],
  "columns[2].htmlType" : [ "select" ],
  "columns[2].dictType" : [ "sys_user_sex" ],
  "columns[3].columnId" : [ "73" ],
  "columns[3].sort" : [ "4" ],
  "columns[3].columnComment" : [ "需求开始时间" ],
  "columns[3].javaType" : [ "Date" ],
  "columns[3].javaField" : [ "reqstarttime" ],
  "columns[3].isInsert" : [ "1" ],
  "columns[3].isEdit" : [ "1" ],
  "columns[3].isList" : [ "1" ],
  "columns[3].queryType" : [ "EQ" ],
  "columns[3].htmlType" : [ "datetime" ],
  "columns[3].dictType" : [ "" ],
  "columns[4].columnId" : [ "74" ],
  "colum', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 15:01:48.386247');
INSERT INTO "adp"."sys_oper_log" VALUES (370, '代码生成', 2, 'com.adp.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/edit', '127.0.0.1', '内网IP', '{
  "tableId" : [ "104" ],
  "tableName" : [ "rsh_jcxqfx_xqxx_mbxx" ],
  "tableComment" : [ "监测需求分析_需求信息_目标信息" ],
  "className" : [ "RshJcxqfxXqxxMbxx" ],
  "functionAuthor" : [ "qubo" ],
  "remark" : [ "" ],
  "columns[0].columnId" : [ "123" ],
  "columns[0].sort" : [ "1" ],
  "columns[0].columnComment" : [ "需求编号" ],
  "columns[0].javaType" : [ "String" ],
  "columns[0].javaField" : [ "reqnum" ],
  "columns[0].isInsert" : [ "1" ],
  "columns[0].isList" : [ "1" ],
  "columns[0].queryType" : [ "EQ" ],
  "columns[0].isRequired" : [ "1" ],
  "columns[0].htmlType" : [ "input" ],
  "columns[0].dictType" : [ "" ],
  "columns[1].columnId" : [ "124" ],
  "columns[1].sort" : [ "2" ],
  "columns[1].columnComment" : [ "目标编号" ],
  "columns[1].javaType" : [ "String" ],
  "columns[1].javaField" : [ "targrtnum" ],
  "columns[1].isInsert" : [ "1" ],
  "columns[1].isList" : [ "1" ],
  "columns[1].queryType" : [ "EQ" ],
  "columns[1].isRequired" : [ "1" ],
  "columns[1].htmlType" : [ "input" ],
  "columns[1].dictType" : [ "" ],
  "columns[2].columnId" : [ "125" ],
  "columns[2].sort" : [ "3" ],
  "columns[2].columnComment" : [ "优先级" ],
  "columns[2].javaType" : [ "String" ],
  "columns[2].javaField" : [ "priority" ],
  "columns[2].isInsert" : [ "1" ],
  "columns[2].isEdit" : [ "1" ],
  "columns[2].isList" : [ "1" ],
  "columns[2].queryType" : [ "EQ" ],
  "columns[2].htmlType" : [ "input" ],
  "columns[2].dictType" : [ "" ],
  "columns[3].columnId" : [ "126" ],
  "columns[3].sort" : [ "4" ],
  "columns[3].columnComment" : [ "目标名称" ],
  "columns[3].javaType" : [ "String" ],
  "columns[3].javaField" : [ "targetname" ],
  "columns[3].isInsert" : [ "1" ],
  "columns[3].isEdit" : [ "1" ],
  "columns[3].isList" : [ "1" ],
  "columns[3].isQuery" : [ "1" ],
  "columns[3].queryType" : [ "LIKE" ],
  "columns[3].htmlType" : [ "input" ],
  "columns[3].dictType" : [ "" ],
  "columns[4].columnId" : [ "127" ],
  "columns[4].sort" : [ "5" ],
  "co', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 15:01:59.646891');
INSERT INTO "adp"."sys_oper_log" VALUES (371, '代码生成', 2, 'com.adp.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/edit', '127.0.0.1', '内网IP', '{
  "tableId" : [ "101" ],
  "tableName" : [ "rsh_jcxqfx_xqxx_tqxx" ],
  "tableComment" : [ "监测需求分析_需求信息_天区信息" ],
  "className" : [ "RshJcxqfxXqxxTqxx" ],
  "functionAuthor" : [ "qubo" ],
  "remark" : [ "" ],
  "columns[0].columnId" : [ "61" ],
  "columns[0].sort" : [ "1" ],
  "columns[0].columnComment" : [ "需求编号" ],
  "columns[0].javaType" : [ "String" ],
  "columns[0].javaField" : [ "reqnum" ],
  "columns[0].isInsert" : [ "1" ],
  "columns[0].isList" : [ "1" ],
  "columns[0].queryType" : [ "EQ" ],
  "columns[0].isRequired" : [ "1" ],
  "columns[0].htmlType" : [ "input" ],
  "columns[0].dictType" : [ "" ],
  "columns[1].columnId" : [ "62" ],
  "columns[1].sort" : [ "2" ],
  "columns[1].columnComment" : [ "天区编号" ],
  "columns[1].javaType" : [ "String" ],
  "columns[1].javaField" : [ "targrtnum" ],
  "columns[1].isInsert" : [ "1" ],
  "columns[1].isList" : [ "1" ],
  "columns[1].queryType" : [ "EQ" ],
  "columns[1].isRequired" : [ "1" ],
  "columns[1].htmlType" : [ "input" ],
  "columns[1].dictType" : [ "" ],
  "columns[2].columnId" : [ "63" ],
  "columns[2].sort" : [ "3" ],
  "columns[2].columnComment" : [ "天区名称" ],
  "columns[2].javaType" : [ "String" ],
  "columns[2].javaField" : [ "targetname" ],
  "columns[2].isInsert" : [ "1" ],
  "columns[2].isEdit" : [ "1" ],
  "columns[2].isList" : [ "1" ],
  "columns[2].isQuery" : [ "1" ],
  "columns[2].queryType" : [ "LIKE" ],
  "columns[2].htmlType" : [ "input" ],
  "columns[2].dictType" : [ "" ],
  "columns[3].columnId" : [ "64" ],
  "columns[3].sort" : [ "4" ],
  "columns[3].columnComment" : [ "优先级" ],
  "columns[3].javaType" : [ "String" ],
  "columns[3].javaField" : [ "priority" ],
  "columns[3].isInsert" : [ "1" ],
  "columns[3].isEdit" : [ "1" ],
  "columns[3].isList" : [ "1" ],
  "columns[3].queryType" : [ "EQ" ],
  "columns[3].htmlType" : [ "input" ],
  "columns[3].dictType" : [ "" ],
  "columns[4].columnId" : [ "65" ],
  "columns[4].sort" : [ "5" ],
  "columns', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 15:02:22.033171');
INSERT INTO "adp"."sys_oper_log" VALUES (372, '代码生成', 8, 'com.adp.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/adp/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{
  "tables" : [ "rsh_jcxqfx_mbq,rsh_jcxqfx_xqxx,rsh_jcxqfx_xqxx_mbxx,rsh_jcxqfx_xqxx_jcrw,rsh_jcxqfx_xqxx_tqxx" ]
}', 'null', '0', NULL, '2020-11-11 15:03:11.923025');
INSERT INTO "adp"."sys_oper_log" VALUES (392, '代码生成', 2, 'com.adp.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/edit', '127.0.0.1', '内网IP', '{
  "tableId" : [ "103" ],
  "tableName" : [ "rsh_jcxqfx_xqxx_jcrw" ],
  "tableComment" : [ "监测需求分析_监测任务" ],
  "className" : [ "RshJcxqfxXqxxJcrw" ],
  "functionAuthor" : [ "qubo" ],
  "remark" : [ "" ],
  "columns[0].columnId" : [ "95" ],
  "columns[0].sort" : [ "1" ],
  "columns[0].columnComment" : [ "需求编号" ],
  "columns[0].javaType" : [ "String" ],
  "columns[0].javaField" : [ "reqnum" ],
  "columns[0].isInsert" : [ "1" ],
  "columns[0].isList" : [ "1" ],
  "columns[0].queryType" : [ "EQ" ],
  "columns[0].isRequired" : [ "1" ],
  "columns[0].htmlType" : [ "input" ],
  "columns[0].dictType" : [ "" ],
  "columns[1].columnId" : [ "96" ],
  "columns[1].sort" : [ "2" ],
  "columns[1].columnComment" : [ "监测目标编号" ],
  "columns[1].javaType" : [ "String" ],
  "columns[1].javaField" : [ "targrtnum" ],
  "columns[1].isInsert" : [ "1" ],
  "columns[1].isList" : [ "1" ],
  "columns[1].queryType" : [ "EQ" ],
  "columns[1].isRequired" : [ "1" ],
  "columns[1].htmlType" : [ "input" ],
  "columns[1].dictType" : [ "" ],
  "columns[2].columnId" : [ "97" ],
  "columns[2].sort" : [ "3" ],
  "columns[2].columnComment" : [ "需求信_需求编号" ],
  "columns[2].javaType" : [ "String" ],
  "columns[2].javaField" : [ "rshReqnum" ],
  "columns[2].isInsert" : [ "1" ],
  "columns[2].isEdit" : [ "1" ],
  "columns[2].queryType" : [ "EQ" ],
  "columns[2].htmlType" : [ "input" ],
  "columns[2].dictType" : [ "" ],
  "columns[3].columnId" : [ "98" ],
  "columns[3].sort" : [ "4" ],
  "columns[3].columnComment" : [ "监测任务类型" ],
  "columns[3].javaType" : [ "String" ],
  "columns[3].javaField" : [ "tasktype" ],
  "columns[3].isInsert" : [ "1" ],
  "columns[3].isEdit" : [ "1" ],
  "columns[3].isList" : [ "1" ],
  "columns[3].isQuery" : [ "1" ],
  "columns[3].queryType" : [ "EQ" ],
  "columns[3].htmlType" : [ "select" ],
  "columns[3].dictType" : [ "sys_oper_type" ],
  "columns[4].columnId" : [ "99" ],
  "columns[4].sort" : [ "5" ],
  "columns[4].columnComment" ', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 15:02:40.049202');
INSERT INTO "adp"."sys_oper_log" VALUES (400, '菜单管理', 1, 'com.adp.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/adp/system/menu/add', '127.0.0.1', '内网IP', '{
  "parentId" : [ "0" ],
  "menuType" : [ "M" ],
  "menuName" : [ "监测管理" ],
  "url" : [ "" ],
  "target" : [ "menuItem" ],
  "perms" : [ "" ],
  "orderNum" : [ "1" ],
  "icon" : [ "fa fa-space-shuttle" ],
  "visible" : [ "0" ]
}', 'null', '1', '
### Error updating database.  Cause: org.postgresql.util.PSQLException: ERROR: column "order_num" is of type integer but expression is of type character varying
  建议：You will need to rewrite or cast the expression.
  位置：182
### The error may involve com.adp.system.mapper.SysMenuMapper.insertMenu-Inline
### The error occurred while setting parameters
### SQL: insert into sys_menu(            menu_name,     order_num,         target,     menu_type,     visible,         icon,         create_by,    create_time   )values(            ?,     ?,         ?,     ?,     ?,         ?,         ?,    now()   )
### Cause: org.postgresql.util.PSQLException: ERROR: column "order_num" is of type integer but expression is of type character varying
  建议：You will need to rewrite or cast the expression.
  位置：182
; bad SQL grammar []; nested exception is org.postgresql.util.PSQLException: ERROR: column "order_num" is of type integer but expression is of type character varying
  建议：You will need to rewrite or cast the expression.
  位置：182', '2020-11-11 15:18:26.279323');
INSERT INTO "adp"."sys_oper_log" VALUES (401, '菜单管理', 1, 'com.adp.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/adp/system/menu/add', '127.0.0.1', '内网IP', '{
  "parentId" : [ "0" ],
  "menuType" : [ "M" ],
  "menuName" : [ "监测管理" ],
  "url" : [ "" ],
  "target" : [ "menuItem" ],
  "perms" : [ "" ],
  "orderNum" : [ "1" ],
  "icon" : [ "fa fa-space-shuttle" ],
  "visible" : [ "0" ]
}', 'null', '1', '
### Error updating database.  Cause: org.postgresql.util.PSQLException: ERROR: column "order_num" is of type integer but expression is of type character varying
  建议：You will need to rewrite or cast the expression.
  位置：182
### The error may involve com.adp.system.mapper.SysMenuMapper.insertMenu-Inline
### The error occurred while setting parameters
### SQL: insert into sys_menu(            menu_name,     order_num,         target,     menu_type,     visible,         icon,         create_by,    create_time   )values(            ?,     ?,         ?,     ?,     ?,         ?,         ?,    now()   )
### Cause: org.postgresql.util.PSQLException: ERROR: column "order_num" is of type integer but expression is of type character varying
  建议：You will need to rewrite or cast the expression.
  位置：182
; bad SQL grammar []; nested exception is org.postgresql.util.PSQLException: ERROR: column "order_num" is of type integer but expression is of type character varying
  建议：You will need to rewrite or cast the expression.
  位置：182', '2020-11-11 15:19:02.279382');
INSERT INTO "adp"."sys_oper_log" VALUES (402, '菜单管理', 1, 'com.adp.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/adp/system/menu/add', '127.0.0.1', '内网IP', '{
  "parentId" : [ "0" ],
  "menuType" : [ "M" ],
  "menuName" : [ "监测管理" ],
  "url" : [ "" ],
  "target" : [ "menuItem" ],
  "perms" : [ "" ],
  "orderNum" : [ "1" ],
  "icon" : [ "fa fa-space-shuttle" ],
  "visible" : [ "0" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 15:20:59.196069');
INSERT INTO "adp"."sys_oper_log" VALUES (403, '菜单管理', 2, 'com.adp.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/adp/system/menu/edit', '127.0.0.1', '内网IP', '{
  "menuId" : [ "2000" ],
  "parentId" : [ "2020" ],
  "menuType" : [ "C" ],
  "menuName" : [ "检测需求分析-监测任务" ],
  "url" : [ "/csci/jcrw" ],
  "target" : [ "menuItem" ],
  "perms" : [ "csci:jcrw:view" ],
  "orderNum" : [ "1" ],
  "icon" : [ "#" ],
  "visible" : [ "0" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 15:23:27.610558');
INSERT INTO "adp"."sys_oper_log" VALUES (420, '菜单管理', 2, 'com.adp.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/adp/system/menu/edit', '127.0.0.1', '内网IP', '{
  "menuId" : [ "2000" ],
  "parentId" : [ "2020" ],
  "menuType" : [ "C" ],
  "menuName" : [ "监测任务" ],
  "url" : [ "/csci/jcrw" ],
  "target" : [ "menuItem" ],
  "perms" : [ "csci:jcrw:view" ],
  "orderNum" : [ "1" ],
  "icon" : [ "#" ],
  "visible" : [ "0" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 15:26:30.043993');
INSERT INTO "adp"."sys_oper_log" VALUES (421, '菜单管理', 2, 'com.adp.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/adp/system/menu/edit', '127.0.0.1', '内网IP', '{
  "menuId" : [ "2006" ],
  "parentId" : [ "2000" ],
  "menuType" : [ "C" ],
  "menuName" : [ "目标群" ],
  "url" : [ "/mbq/mbq" ],
  "target" : [ "menuItem" ],
  "perms" : [ "mbq:mbq:view" ],
  "orderNum" : [ "1" ],
  "icon" : [ "#" ],
  "visible" : [ "0" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 15:32:49.049671');
INSERT INTO "adp"."sys_oper_log" VALUES (422, '菜单管理', 2, 'com.adp.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/adp/system/menu/edit', '127.0.0.1', '内网IP', '{
  "menuId" : [ "2006" ],
  "parentId" : [ "2020" ],
  "menuType" : [ "C" ],
  "menuName" : [ "目标群" ],
  "url" : [ "/mbq/mbq" ],
  "target" : [ "menuItem" ],
  "perms" : [ "mbq:mbq:view" ],
  "orderNum" : [ "1" ],
  "icon" : [ "#" ],
  "visible" : [ "0" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 15:33:07.785742');
INSERT INTO "adp"."sys_oper_log" VALUES (404, '代码生成', 2, 'com.adp.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/edit', '127.0.0.1', '内网IP', '{
  "tableId" : [ "121" ],
  "tableName" : [ "rsh_jcxqfx_mbq" ],
  "tableComment" : [ "监测需求分析_目标群" ],
  "className" : [ "RshJcxqfxMbq" ],
  "functionAuthor" : [ "qubo" ],
  "remark" : [ "" ],
  "columns[0].columnId" : [ "141" ],
  "columns[0].sort" : [ "1" ],
  "columns[0].columnComment" : [ "标签" ],
  "columns[0].javaType" : [ "String" ],
  "columns[0].javaField" : [ "sign" ],
  "columns[0].isInsert" : [ "1" ],
  "columns[0].isEdit" : [ "1" ],
  "columns[0].isList" : [ "1" ],
  "columns[0].queryType" : [ "EQ" ],
  "columns[0].htmlType" : [ "input" ],
  "columns[0].dictType" : [ "" ],
  "columns[1].columnId" : [ "142" ],
  "columns[1].sort" : [ "2" ],
  "columns[1].columnComment" : [ "目标编号" ],
  "columns[1].javaType" : [ "String" ],
  "columns[1].javaField" : [ "targrtnum" ],
  "columns[1].isInsert" : [ "1" ],
  "columns[1].isList" : [ "1" ],
  "columns[1].queryType" : [ "EQ" ],
  "columns[1].isRequired" : [ "1" ],
  "columns[1].htmlType" : [ "input" ],
  "columns[1].dictType" : [ "" ],
  "columns[2].columnId" : [ "143" ],
  "columns[2].sort" : [ "3" ],
  "columns[2].columnComment" : [ "请求编号" ],
  "columns[2].javaType" : [ "String" ],
  "columns[2].javaField" : [ "reqnum" ],
  "columns[2].isInsert" : [ "1" ],
  "columns[2].isEdit" : [ "1" ],
  "columns[2].isList" : [ "1" ],
  "columns[2].queryType" : [ "EQ" ],
  "columns[2].htmlType" : [ "input" ],
  "columns[2].dictType" : [ "" ],
  "columns[3].columnId" : [ "144" ],
  "columns[3].sort" : [ "4" ],
  "columns[3].columnComment" : [ "需求信_目标编号" ],
  "columns[3].javaType" : [ "String" ],
  "columns[3].javaField" : [ "rshTargrtnum" ],
  "columns[3].isInsert" : [ "1" ],
  "columns[3].isEdit" : [ "1" ],
  "columns[3].queryType" : [ "EQ" ],
  "columns[3].htmlType" : [ "input" ],
  "columns[3].dictType" : [ "" ],
  "columns[4].columnId" : [ "145" ],
  "columns[4].sort" : [ "5" ],
  "columns[4].columnComment" : [ "创建者" ],
  "columns[4].javaType" : [ "String" ],
  "columns[4', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 15:44:26.966589');
INSERT INTO "adp"."sys_oper_log" VALUES (405, '代码生成', 8, 'com.adp.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/adp/tool/gen/genCode/rsh_jcxqfx_mbq', '127.0.0.1', '内网IP', '{ }', 'null', '0', NULL, '2020-11-11 15:44:32.106883');
INSERT INTO "adp"."sys_oper_log" VALUES (406, '菜单管理', 3, 'com.adp.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/adp/system/menu/remove/2006', '127.0.0.1', '内网IP', '{ }', '{
  "msg" : "存在子菜单,不允许删除",
  "code" : 301
}', '0', NULL, '2020-11-11 15:45:46.844158');
INSERT INTO "adp"."sys_oper_log" VALUES (601, '菜单管理', 3, 'com.adp.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/adp/system/menu/remove/2012', '127.0.0.1', '内网IP', '{ }', '{
  "msg" : "存在子菜单,不允许删除",
  "code" : 301
}', '0', NULL, '2020-11-13 09:20:40.163582');
INSERT INTO "adp"."sys_oper_log" VALUES (440, '检测需求分析-目标群', 1, 'com.adp.csci.web.controller.csci.RshJcxqfxMbqController.addSave()', 'POST', 1, 'admin', '研发部门', '/adp/csci/mbq/add', '127.0.0.1', '内网IP', '{
  "sign" : [ "asdfasdf" ],
  "targrtnum" : [ "1111" ],
  "reqnum" : [ "122222" ],
  "rshTargrtnum" : [ "333333333" ]
}', 'null', '1', '
### Error updating database.  Cause: org.postgresql.util.PSQLException: ERROR: insert or update on table "rsh_jcxqfx_mbq" violates foreign key constraint "fk_rsh_jcxq_reference_rsh_jcxq"
  详细：Key (reqnum, rsh_targrtnum)=(122222, 333333333) is not present in table "rsh_jcxqfx_xqxx_mbxx".
### The error may involve com.adp.csci.mbq.mapper.RshJcxqfxMbqMapper.insertRshJcxqfxMbq-Inline
### The error occurred while setting parameters
### SQL: insert into rsh_jcxqfx_mbq          ( sign,             targrtnum,             reqnum,             rsh_targrtnum,                          create_time )           values ( ?,             ?,             ?,             ?,                          ? )
### Cause: org.postgresql.util.PSQLException: ERROR: insert or update on table "rsh_jcxqfx_mbq" violates foreign key constraint "fk_rsh_jcxq_reference_rsh_jcxq"
  详细：Key (reqnum, rsh_targrtnum)=(122222, 333333333) is not present in table "rsh_jcxqfx_xqxx_mbxx".
; ERROR: insert or update on table "rsh_jcxqfx_mbq" violates foreign key constraint "fk_rsh_jcxq_reference_rsh_jcxq"
  详细：Key (reqnum, rsh_targrtnum)=(122222, 333333333) is not present in table "rsh_jcxqfx_xqxx_mbxx".; nested exception is org.postgresql.util.PSQLException: ERROR: insert or update on table "rsh_jcxqfx_mbq" violates foreign key constraint "fk_rsh_jcxq_reference_rsh_jcxq"
  详细：Key (reqnum, rsh_targrtnum)=(122222, 333333333) is not present in table "rsh_jcxqfx_xqxx_mbxx".', '2020-11-11 16:12:37.966309');
INSERT INTO "adp"."sys_oper_log" VALUES (460, '监测需求分析_需求信息', 1, 'com.adp.csci.web.controller.csci.RshJcxqfxXqxxController.addSave()', 'POST', 1, 'admin', '研发部门', '/adp/csci/xqxx/add', '127.0.0.1', '内网IP', '{
  "reqnum" : [ "1" ],
  "reqname" : [ "1" ],
  "reqsource" : [ "1" ],
  "reqstarttime" : [ "2020-11-11" ],
  "reqendtime" : [ "2020-11-12" ],
  "reqtype" : [ "1" ],
  "reqpriority" : [ "1" ],
  "reqstate" : [ "0" ],
  "recievetime" : [ "2020-11-11" ],
  "issynergy" : [ "Y" ],
  "circletime" : [ "1" ],
  "precision" : [ "1" ],
  "isimaging" : [ "Y" ],
  "minarclength" : [ "1" ],
  "obstimes" : [ "1" ],
  "exposuretime" : [ "1" ],
  "exposureinterval" : [ "1" ],
  "photoframe" : [ "1" ],
  "cameraincrease" : [ "1" ],
  "workmode" : [ "1" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 16:25:00.255766');
INSERT INTO "adp"."sys_oper_log" VALUES (480, '监测需求分析_需求信息', 3, 'com.adp.csci.web.controller.csci.RshJcxqfxXqxxController.remove()', 'POST', 1, 'admin', '研发部门', '/adp/csci/xqxx/remove', '127.0.0.1', '内网IP', '{
  "ids" : [ "1" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 17:49:30.864788');
INSERT INTO "adp"."sys_oper_log" VALUES (481, '监测需求分析_需求信息', 1, 'com.adp.csci.web.controller.csci.RshJcxqfxXqxxController.addSave()', 'POST', 1, 'admin', '研发部门', '/adp/csci/xqxx/add', '127.0.0.1', '内网IP', '{
  "reqnum" : [ "10086" ],
  "reqname" : [ "测试需求信息" ],
  "reqsource" : [ "0" ],
  "reqstarttime" : [ "2020-11-11" ],
  "reqendtime" : [ "2020-11-12" ],
  "reqtype" : [ "2" ],
  "reqpriority" : [ "高" ],
  "reqstate" : [ "0" ],
  "recievetime" : [ "2020-11-11" ],
  "issynergy" : [ "Y" ],
  "circletime" : [ "1" ],
  "precision" : [ "1" ],
  "isimaging" : [ "Y" ],
  "minarclength" : [ "1" ],
  "obstimes" : [ "1" ],
  "exposuretime" : [ "1" ],
  "exposureinterval" : [ "1" ],
  "photoframe" : [ "1" ],
  "cameraincrease" : [ "1" ],
  "workmode" : [ "1" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-11 17:50:28.707096');
INSERT INTO "adp"."sys_oper_log" VALUES (500, '代码生成', 3, 'com.adp.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/remove', '127.0.0.1', '内网IP', '{
  "ids" : [ "121,102,104,103,101" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-12 09:41:22.760857');
INSERT INTO "adp"."sys_oper_log" VALUES (520, '代码生成', 6, 'com.adp.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/importTable', '127.0.0.1', '内网IP', '{
  "tables" : [ "rsh_jcxqfx_xqxx_tqxx,rsh_jcxqfx_xqxx_mbxx,rsh_jcxqfx_xqxx_jcrw,rsh_jcxqfx_xqxx" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-12 09:41:37.161681');
INSERT INTO "adp"."sys_oper_log" VALUES (501, '代码生成', 6, 'com.adp.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/importTable', '127.0.0.1', '内网IP', '{
  "tables" : [ "rsh_jcxqfx_xqxx_tqxx,rsh_jcxqfx_xqxx_mbxx,rsh_jcxqfx_xqxx_jcrw,rsh_jcxqfx_xqxx" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-12 09:42:26.743517');
INSERT INTO "adp"."sys_oper_log" VALUES (540, '代码生成', 6, 'com.adp.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/importTable', '127.0.0.1', '内网IP', '{
  "tables" : [ "rsh_jcxqfx_mbq" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-12 09:44:39.67812');
INSERT INTO "adp"."sys_oper_log" VALUES (560, '代码生成', 3, 'com.adp.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/remove', '127.0.0.1', '内网IP', '{
  "ids" : [ "181" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-12 09:44:46.161491');
INSERT INTO "adp"."sys_oper_log" VALUES (561, '代码生成', 6, 'com.adp.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/adp/tool/gen/importTable', '127.0.0.1', '内网IP', '{
  "tables" : [ "rsh_jcxqfx_mbq" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-12 09:44:58.755211');
INSERT INTO "adp"."sys_oper_log" VALUES (580, '个人信息', 2, 'com.adp.web.controller.system.SysProfileController.update()', 'POST', 1, 'admin', '研发部门', '/adp/system/user/profile/update', '127.0.0.1', '内网IP', '{
  "id" : [ "" ],
  "userName" : [ "系统管理员" ],
  "phonenumber" : [ "15888888888" ],
  "email" : [ "adp@163.com" ],
  "sex" : [ "0" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-12 15:13:12.041603');
INSERT INTO "adp"."sys_oper_log" VALUES (581, '个人信息', 2, 'com.adp.web.controller.system.SysProfileController.update()', 'POST', 1, 'shentong', '测试部门', '/adp/system/user/profile/update', '127.0.0.1', '内网IP', '{
  "id" : [ "" ],
  "userName" : [ "普通用户" ],
  "phonenumber" : [ "15666666666" ],
  "email" : [ "st@qq.com" ],
  "sex" : [ "0" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-12 15:14:01.513433');
INSERT INTO "adp"."sys_oper_log" VALUES (582, '个人信息', 2, 'com.adp.web.controller.system.SysProfileController.updateAvatar()', 'POST', 1, 'shentong', '测试部门', '/adp/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{ }', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-12 15:16:26.795742');
INSERT INTO "adp"."sys_oper_log" VALUES (583, '通知公告', 2, 'com.adp.web.controller.system.SysNoticeController.editSave()', 'POST', 1, 'shentong', '测试部门', '/adp/system/notice/edit', '127.0.0.1', '内网IP', '{
  "noticeId" : [ "1" ],
  "noticeTitle" : [ "温馨提醒：2018-07-01 新版本发布" ],
  "noticeType" : [ "1" ],
  "noticeContent" : [ "新版本内容" ],
  "status" : [ "0" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-12 15:17:19.519758');
INSERT INTO "adp"."sys_oper_log" VALUES (584, '通知公告', 2, 'com.adp.web.controller.system.SysNoticeController.editSave()', 'POST', 1, 'shentong', '测试部门', '/adp/system/notice/edit', '127.0.0.1', '内网IP', '{
  "noticeId" : [ "2" ],
  "noticeTitle" : [ "维护通知：2018-07-01 系统凌晨维护" ],
  "noticeType" : [ "1" ],
  "noticeContent" : [ "维护内容" ],
  "status" : [ "0" ]
}', '{
  "msg" : "操作成功",
  "code" : 0
}', '0', NULL, '2020-11-12 15:17:26.237142');
INSERT INTO "adp"."sys_oper_log" VALUES (600, '菜单管理', 3, 'com.adp.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/adp/system/menu/remove/2020', '127.0.0.1', '内网IP', '{ }', '{
  "msg" : "存在子菜单,不允许删除",
  "code" : 301
}', '0', NULL, '2020-11-13 09:20:28.376908');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS "adp"."sys_post";
CREATE TABLE "adp"."sys_post" (
  "post_id" int8 NOT NULL DEFAULT nextval('"adp".sys_post_post_id_seq'::regclass),
  "post_code" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "post_name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "post_sort" int4 NOT NULL,
  "status" char(1) COLLATE "pg_catalog"."default" NOT NULL,
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;
COMMENT ON COLUMN "adp"."sys_post"."post_id" IS '岗位ID';
COMMENT ON COLUMN "adp"."sys_post"."post_code" IS '岗位编码';
COMMENT ON COLUMN "adp"."sys_post"."post_name" IS '岗位名称';
COMMENT ON COLUMN "adp"."sys_post"."post_sort" IS '显示顺序';
COMMENT ON COLUMN "adp"."sys_post"."status" IS '状态（0正常 1停用）';
COMMENT ON COLUMN "adp"."sys_post"."create_by" IS '创建者';
COMMENT ON COLUMN "adp"."sys_post"."create_time" IS '创建时间';
COMMENT ON COLUMN "adp"."sys_post"."update_by" IS '更新者';
COMMENT ON COLUMN "adp"."sys_post"."update_time" IS '更新时间';
COMMENT ON COLUMN "adp"."sys_post"."remark" IS '备注';
COMMENT ON TABLE "adp"."sys_post" IS '岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO "adp"."sys_post" VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2020-11-10 11:28:03.018551', '', '2020-11-10 11:28:03.018551', '');
INSERT INTO "adp"."sys_post" VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2020-11-10 11:28:03.020551', '', '2020-11-10 11:28:03.020551', '');
INSERT INTO "adp"."sys_post" VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2020-11-10 11:28:03.021551', '', '2020-11-10 11:28:03.021551', '');
INSERT INTO "adp"."sys_post" VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2020-11-10 11:28:03.021551', '', '2020-11-10 11:28:03.021551', '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS "adp"."sys_role";
CREATE TABLE "adp"."sys_role" (
  "role_id" int8 NOT NULL DEFAULT nextval('"adp".sys_role_role_id_seq'::regclass),
  "role_name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "role_key" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "role_sort" int4,
  "data_scope" char(1) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "del_flag" char(1) COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;
COMMENT ON COLUMN "adp"."sys_role"."role_id" IS '角色ID';
COMMENT ON COLUMN "adp"."sys_role"."role_name" IS '角色名称';
COMMENT ON COLUMN "adp"."sys_role"."role_key" IS '角色权限字符串';
COMMENT ON COLUMN "adp"."sys_role"."role_sort" IS '显示顺序';
COMMENT ON COLUMN "adp"."sys_role"."data_scope" IS '数据范围（1：全部数据权限 2：自定数据权限）';
COMMENT ON COLUMN "adp"."sys_role"."status" IS '角色状态（0正常 1停用）';
COMMENT ON COLUMN "adp"."sys_role"."del_flag" IS '删除标志（0代表存在 2代表删除）';
COMMENT ON COLUMN "adp"."sys_role"."create_by" IS '创建者';
COMMENT ON COLUMN "adp"."sys_role"."create_time" IS '创建时间';
COMMENT ON COLUMN "adp"."sys_role"."update_by" IS '更新者';
COMMENT ON COLUMN "adp"."sys_role"."update_time" IS '更新时间';
COMMENT ON COLUMN "adp"."sys_role"."remark" IS '备注';
COMMENT ON TABLE "adp"."sys_role" IS '角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO "adp"."sys_role" VALUES (1, '超级管理员', 'admin', 1, '1', '0', '0', 'admin', '2020-11-10 11:28:03.043552', '', NULL, '超级管理员');
INSERT INTO "adp"."sys_role" VALUES (2, '普通角色', 'common', 2, '2', '0', '0', 'admin', '2020-11-10 11:28:03.045553', '', NULL, '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS "adp"."sys_role_dept";
CREATE TABLE "adp"."sys_role_dept" (
  "role_id" int8 NOT NULL,
  "dept_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "adp"."sys_role_dept"."role_id" IS '用户ID';
COMMENT ON COLUMN "adp"."sys_role_dept"."dept_id" IS '岗位ID';
COMMENT ON TABLE "adp"."sys_role_dept" IS '角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO "adp"."sys_role_dept" VALUES (2, 100);
INSERT INTO "adp"."sys_role_dept" VALUES (2, 101);
INSERT INTO "adp"."sys_role_dept" VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS "adp"."sys_role_menu";
CREATE TABLE "adp"."sys_role_menu" (
  "role_id" int8 NOT NULL,
  "menu_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "adp"."sys_role_menu"."role_id" IS '角色ID';
COMMENT ON COLUMN "adp"."sys_role_menu"."menu_id" IS '菜单ID';
COMMENT ON TABLE "adp"."sys_role_menu" IS '角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 2);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 3);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 4);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 100);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 101);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 102);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 103);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 104);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 105);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 106);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 107);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 108);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 109);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 110);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 111);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 112);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 113);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 114);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 115);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 500);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 501);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1000);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1001);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1002);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1003);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1004);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1005);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1006);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1007);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1008);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1009);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1010);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1011);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1012);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1013);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1014);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1015);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1016);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1017);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1018);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1019);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1020);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1021);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1022);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1023);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1024);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1025);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1026);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1027);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1028);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1029);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1030);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1031);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1032);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1033);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1034);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1035);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1036);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1037);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1038);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1039);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1040);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1041);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1042);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1043);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1044);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1045);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1046);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1047);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1048);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1049);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1050);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1051);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1052);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1053);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1054);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1055);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1056);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1057);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1058);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1059);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1060);
INSERT INTO "adp"."sys_role_menu" VALUES (2, 1061);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS "adp"."sys_user";
CREATE TABLE "adp"."sys_user" (
  "user_id" int8 NOT NULL DEFAULT nextval('"adp".sys_user_user_id_seq'::regclass),
  "dept_id" int8,
  "login_name" varchar(30) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "user_name" varchar(30) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "user_type" varchar(2) COLLATE "pg_catalog"."default" DEFAULT '00'::character varying,
  "email" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "phonenumber" varchar(20) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "sex" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "avatar" varchar(100) COLLATE "pg_catalog"."default",
  "password" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "salt" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "del_flag" char(1) COLLATE "pg_catalog"."default" DEFAULT ''::bpchar,
  "login_ip" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "login_date" timestamp(6),
  "pwd_update_date" timestamp(6),
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "adp"."sys_user"."user_id" IS '用户ID';
COMMENT ON COLUMN "adp"."sys_user"."dept_id" IS '部门ID';
COMMENT ON COLUMN "adp"."sys_user"."login_name" IS '登录账号';
COMMENT ON COLUMN "adp"."sys_user"."user_name" IS '用户昵称';
COMMENT ON COLUMN "adp"."sys_user"."user_type" IS '类型:Y默认用户,N非默认用户';
COMMENT ON COLUMN "adp"."sys_user"."email" IS '用户邮箱';
COMMENT ON COLUMN "adp"."sys_user"."phonenumber" IS '手机号码';
COMMENT ON COLUMN "adp"."sys_user"."sex" IS '用户性别（0男 1女 2未知）';
COMMENT ON COLUMN "adp"."sys_user"."avatar" IS '头像路径';
COMMENT ON COLUMN "adp"."sys_user"."password" IS '密码';
COMMENT ON COLUMN "adp"."sys_user"."salt" IS '盐加密';
COMMENT ON COLUMN "adp"."sys_user"."status" IS '帐号状态:0正常,1禁用';
COMMENT ON COLUMN "adp"."sys_user"."del_flag" IS '拒绝登录描述';
COMMENT ON COLUMN "adp"."sys_user"."login_ip" IS '最后登录IP';
COMMENT ON COLUMN "adp"."sys_user"."login_date" IS '最后登录时间';
COMMENT ON COLUMN "adp"."sys_user"."pwd_update_date" IS '密码最后更新时间';
COMMENT ON COLUMN "adp"."sys_user"."create_by" IS '创建者';
COMMENT ON COLUMN "adp"."sys_user"."create_time" IS '创建时间';
COMMENT ON COLUMN "adp"."sys_user"."update_by" IS '更新者';
COMMENT ON COLUMN "adp"."sys_user"."update_time" IS '更新时间';
COMMENT ON COLUMN "adp"."sys_user"."remark" IS '备注';
COMMENT ON TABLE "adp"."sys_user" IS '用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO "adp"."sys_user" VALUES (2, 105, 'shentong', '普通用户', '00', 'st@qq.com', '15666666666', '0', '/profile/avatar/2020/11/12/ecf660f23865e5b64829f2b5d2e3c19b.png', '34e18ff251a3f17ef94fe737fcdb7e38', '313ead', '0', '0', '127.0.0.1', '2020-11-12 15:18:34.871', '2020-11-10 11:28:02.99555', 'admin', '2020-11-10 11:28:02.99555', 'admin', '2020-11-12 15:18:34.873068', '测试员');
INSERT INTO "adp"."sys_user" VALUES (1, 103, 'admin', '系统管理员', '00', 'adp@163.com', '15888888888', '0', '/profile/avatar/2020/11/10/e842b301b3ea7cb887a0efa3264d412a.png', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2020-11-13 09:06:56.935', '2020-11-10 11:28:02.99455', 'admin', '2020-11-10 11:28:02.99455', '', '2020-11-13 09:06:56.940496', '管理员');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS "adp"."sys_user_online";
CREATE TABLE "adp"."sys_user_online" (
  "sessionid" varchar(50) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "login_name" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "dept_name" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "ipaddr" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "login_location" varchar(255) COLLATE "pg_catalog"."default",
  "browser" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "os" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "status" varchar(10) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "start_timestamp" timestamp(6),
  "last_access_time" timestamp(6),
  "expire_time" int4 DEFAULT 0
)
;
COMMENT ON COLUMN "adp"."sys_user_online"."sessionid" IS '用户会话id';
COMMENT ON COLUMN "adp"."sys_user_online"."login_name" IS '登录账号';
COMMENT ON COLUMN "adp"."sys_user_online"."dept_name" IS '部门名称';
COMMENT ON COLUMN "adp"."sys_user_online"."ipaddr" IS '登录IP地址';
COMMENT ON COLUMN "adp"."sys_user_online"."login_location" IS '登录地点';
COMMENT ON COLUMN "adp"."sys_user_online"."browser" IS '浏览器类型';
COMMENT ON COLUMN "adp"."sys_user_online"."os" IS '操作系统';
COMMENT ON COLUMN "adp"."sys_user_online"."status" IS '在线状态on_line在线off_line离线';
COMMENT ON COLUMN "adp"."sys_user_online"."start_timestamp" IS 'session创建时间';
COMMENT ON COLUMN "adp"."sys_user_online"."last_access_time" IS 'session最后访问时间';
COMMENT ON COLUMN "adp"."sys_user_online"."expire_time" IS '超时时间，单位为分钟';
COMMENT ON TABLE "adp"."sys_user_online" IS '在线用户记录';

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO "adp"."sys_user_online" VALUES ('8fc53020-4b8a-4c11-9108-0f229eaae7e0', 'admin', '研发部门', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', 'on_line', '2020-11-13 09:06:54.146', '2020-11-13 09:21:49.641', 1800000);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS "adp"."sys_user_post";
CREATE TABLE "adp"."sys_user_post" (
  "user_id" int8 NOT NULL,
  "post_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "adp"."sys_user_post"."user_id" IS '用户ID';
COMMENT ON COLUMN "adp"."sys_user_post"."post_id" IS '岗位ID';
COMMENT ON TABLE "adp"."sys_user_post" IS '用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO "adp"."sys_user_post" VALUES (1, 1);
INSERT INTO "adp"."sys_user_post" VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS "adp"."sys_user_role";
CREATE TABLE "adp"."sys_user_role" (
  "user_id" int8 NOT NULL,
  "role_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "adp"."sys_user_role"."user_id" IS '用户ID';
COMMENT ON COLUMN "adp"."sys_user_role"."role_id" IS '角色ID';
COMMENT ON TABLE "adp"."sys_user_role" IS '用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO "adp"."sys_user_role" VALUES (1, 1);
INSERT INTO "adp"."sys_user_role" VALUES (2, 2);

-- ----------------------------
-- Function structure for find_in_set
-- ----------------------------
DROP FUNCTION IF EXISTS "adp"."find_in_set"(int8, varchar);
CREATE OR REPLACE FUNCTION "adp"."find_in_set"(int8, varchar)
  RETURNS "pg_catalog"."bool" AS $BODY$
DECLARE
  STR ALIAS FOR $1;
  STRS ALIAS FOR $2;
  POS INTEGER;
  STATUS BOOLEAN;
BEGIN
	SELECT POSITION( ','||STR||',' IN ','||STRS||',') INTO POS;
	IF POS >= 0 THEN
	  STATUS = TRUE;
	ELSE
	  STATUS = FALSE;
	END IF;
	RETURN STATUS;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- View structure for view_self_table_columns
-- ----------------------------
DROP VIEW IF EXISTS "adp"."view_self_table_columns";
CREATE VIEW "adp"."view_self_table_columns" AS  SELECT columns.table_catalog,
    columns.table_schema,
    columns.table_name,
    columns.ordinal_position AS sort,
    columns.column_name,
    columns.data_type AS typename,
        CASE
            WHEN (((columns.is_nullable)::text = 'no'::text) AND (c.contype <> 'p'::"char")) THEN '1'::text
            ELSE NULL::text
        END AS is_required,
        CASE
            WHEN (c.contype = 'p'::"char") THEN '1'::text
            ELSE '0'::text
        END AS is_pk,
    COALESCE((columns.character_maximum_length)::integer, (columns.numeric_precision)::integer, '-1'::integer) AS length,
    columns.numeric_scale AS scale,
        CASE columns.is_nullable
            WHEN 'NO'::text THEN 0
            ELSE 1
        END AS cannull,
    columns.column_default AS defaultval,
        CASE
            WHEN ("position"((columns.column_default)::text, 'nextval'::text) > 0) THEN 1
            ELSE 0
        END AS isidentity,
        CASE
            WHEN ("position"((columns.column_default)::text, 'nextval'::text) > 0) THEN 1
            ELSE 0
        END AS is_increment,
    c.detext AS column_comment,
    c.typname AS column_type,
    c.contype,
    columns.ordinal_position
   FROM (information_schema.columns
     LEFT JOIN ( SELECT pg_database.datname,
            pg_get_userbyid(pg_class.relowner) AS tableowner,
            pg_ns.nspname,
            pg_class.relname,
            pg_attr.attname,
            pg_desc.description AS detext,
            pg_type.typname,
            pg_cons.contype
           FROM ((((((pg_class
             LEFT JOIN pg_attribute pg_attr ON ((pg_attr.attrelid = pg_class.oid)))
             LEFT JOIN pg_description pg_desc ON (((pg_desc.objoid = pg_attr.attrelid) AND (pg_desc.objsubid = pg_attr.attnum))))
             LEFT JOIN pg_namespace pg_ns ON ((pg_ns.oid = pg_class.relnamespace)))
             LEFT JOIN pg_database ON ((pg_class.relowner = pg_database.datdba)))
             LEFT JOIN pg_type ON ((pg_attr.atttypid = pg_type.oid)))
             LEFT JOIN ( SELECT pg_con.oid,
                    pg_con.conname,
                    pg_con.connamespace,
                    pg_con.contype,
                    pg_con.condeferrable,
                    pg_con.condeferred,
                    pg_con.convalidated,
                    pg_con.conrelid,
                    pg_con.contypid,
                    pg_con.conindid,
                    pg_con.conparentid,
                    pg_con.confrelid,
                    pg_con.confupdtype,
                    pg_con.confdeltype,
                    pg_con.confmatchtype,
                    pg_con.conislocal,
                    pg_con.coninhcount,
                    pg_con.connoinherit,
                    pg_con.conkey,
                    pg_con.confkey,
                    pg_con.conpfeqop,
                    pg_con.conppeqop,
                    pg_con.conffeqop,
                    pg_con.conexclop,
                    pg_con.conbin,
                    unnest(pg_con.conkey) AS conkey_new
                   FROM pg_constraint pg_con) pg_cons ON (((pg_attr.attrelid = pg_class.oid) AND (pg_attr.attnum = pg_cons.conkey_new) AND (pg_cons.conrelid = pg_class.oid))))
          WHERE ((pg_attr.attnum > 0) AND (pg_attr.attrelid = pg_class.oid))) c ON ((((columns.table_catalog)::name = c.datname) AND ((columns.table_schema)::name = c.nspname) AND ((columns.table_name)::name = c.relname) AND ((columns.column_name)::name = c.attname))));

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'transforms', 6, 'specific_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_type', 13, 'typelem', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_database', 15, 'temp_bytes', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 15);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'view_self_table_columns', 4, 'sort', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_class', 16, 'relpersistence', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 16);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'triggers', 3, 'trigger_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_sys_indexes', 2, 'indexrelid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_index', 13, 'indislive', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_sys_tables', 8, 'n_tup_ins', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'constraint_column_usage', 3, 'table_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'usage_privileges', 2, 'grantee', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_all_tables', 6, 'idx_blks_read', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_blob_triggers', 1, 'sched_name', 'character varying', NULL, '0', 120, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'f', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_blob_triggers', 1, 'sched_name', 'character varying', NULL, '1', 120, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'p', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_user_indexes', 4, 'relname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_attribute', 3, 'atttypid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_shseclabel', 4, 'label', 'text', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'text', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', '_pg_foreign_tables', 1, 'foreign_table_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domain_constraints', 3, 'constraint_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stats_ext', 8, 'n_distinct', 'pg_ndistinct', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'pg_ndistinct', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_attribute', 14, 'atthasdef', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_database', 12, 'datminmxid', 'xid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'xid', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_amproc', 5, 'amprocnum', 'smallint', NULL, '0', 16, 0, 0, NULL, 0, 0, NULL, 'int2', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_vacuum', 11, 'num_dead_tuples', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 74, 'result_cast_interval_precision', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 74);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'attributes', 26, 'scope_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 26);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'view_self_table_columns', 16, 'column_type', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 16);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_class', 4, 'reltype', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stats', 11, 'correlation', 'real', NULL, '0', 24, NULL, 1, NULL, 0, 0, NULL, 'float4', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'foreign_data_wrapper_options', 2, 'foreign_data_wrapper_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'attributes', 25, 'attribute_udt_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 25);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table', 5, 'sub_table_fk_name', 'character varying', NULL, '0', 64, NULL, 1, 'NULL::character varying', 0, 0, '子表关联的外键名', 'varchar', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_logininfor', 9, 'login_time', 'timestamp without time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, '访问时间', 'timestamp', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_settings', 12, 'enumvals', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_text', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 41, 'parameter_style', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 41);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'triggers', 14, 'action_reference_new_table', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_bgwriter', 8, 'buffers_backend', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_dept', 13, 'update_by', 'character varying', NULL, '0', 64, NULL, 1, '''''::character varying', 0, 0, '更新者', 'varchar', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 6, 'routine_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_user_online', 10, 'last_access_time', 'timestamp without time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, 'session最后访问时间', 'timestamp', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_default_acl', 5, 'defaclacl', 'ARRAY', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, '_aclitem', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_slru', 1, 'name', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'column_udt_usage', 6, 'table_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_activity', 20, 'query', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 20);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx', 9, 'recievetime', 'date', NULL, '0', -1, NULL, 1, NULL, 0, 0, '需求下达时间', 'date', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_menu', 4, 'order_num', 'character varying', NULL, '0', 32, NULL, 1, NULL, 0, 0, '显示顺序', 'varchar', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'sql_features', 6, 'is_verified_by', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'udt_privileges', 1, 'grantor', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_mbxx', 1, 'reqnum', 'character varying', NULL, '0', 20, NULL, 0, NULL, 0, 0, '需求编号', 'varchar', 'f', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_mbxx', 1, 'reqnum', 'character varying', NULL, '1', 20, NULL, 0, NULL, 0, 0, '需求编号', 'varchar', 'p', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_post', 5, 'status', 'character', NULL, '0', 1, NULL, 0, NULL, 0, 0, '状态（0正常 1停用）', 'bpchar', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_largeobject', 3, 'data', 'bytea', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bytea', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_database', 21, 'stats_reset', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 21);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_job', 8, 'status', 'character', NULL, '0', 1, NULL, 1, '''0''::bpchar', 0, 0, '状态（0正常 1暂停）', 'bpchar', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_user_mappings', 5, 'usename', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'parameters', 29, 'scope_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 29);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_roles', 1, 'rolname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_ts_config', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_cast', 6, 'castmethod', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_user', 9, 'avatar', 'character varying', NULL, '0', 100, NULL, 1, NULL, 0, 0, '头像路径', 'varchar', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_enum', 2, 'enumtypid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_user_tables', 5, 'seq_tup_read', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stats', 12, 'most_common_elems', 'anyarray', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'anyarray', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_simprop_triggers', 1, 'sched_name', 'character varying', NULL, '0', 120, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'f', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_simprop_triggers', 1, 'sched_name', 'character varying', NULL, '1', 120, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'p', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 9, 'character_maximum_length', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_database', 11, 'datfrozenxid', 'xid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'xid', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'applicable_roles', 2, 'role_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'view_self_table', 5, 'table_comment', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'varchar', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'user_defined_types', 13, 'data_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_all_tables', 1, 'relid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_seclabels', 2, 'classoid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_dict_type', 8, 'update_time', 'timestamp without time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, '更新时间', 'timestamp', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_all_tables', 22, 'analyze_count', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 22);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_rewrite', 8, 'ev_action', 'pg_node_tree', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'pg_node_tree', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'view_column_usage', 7, 'column_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_depend', 4, 'refclassid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_settings', 11, 'max_val', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_job_details', 2, 'job_name', 'character varying', NULL, '1', 200, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'p', 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', '_pg_foreign_servers', 6, 'foreign_data_wrapper_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'user_defined_types', 19, 'collation_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 19);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'element_types', 21, 'domain_default', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 21);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'parameters', 28, 'scope_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 28);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'parameters', 30, 'maximum_cardinality', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 30);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'view_self_table_columns', 14, 'is_increment', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'int4', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_locks', 5, 'tuple', 'smallint', NULL, '0', 16, 0, 1, NULL, 0, 0, NULL, 'int2', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_attribute', 16, 'attidentity', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 16);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_replication', 8, 'backend_start', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_class', 3, 'relnamespace', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_sequence', 8, 'seqcycle', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'triggers', 16, 'action_reference_new_row', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 16);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_hba_file_rules', 7, 'auth_method', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'view_table_usage', 1, 'view_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_slru', 9, 'stats_reset', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_shseclabel', 3, 'provider', 'text', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'text', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domain_constraints', 4, 'domain_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'view_routine_usage', 2, 'table_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'parameters', 8, 'parameter_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_archiver', 7, 'stats_reset', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_user_indexes', 3, 'schemaname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_attribute', 4, 'attstattarget', 'integer', NULL, '0', 32, 0, 0, NULL, 0, 0, NULL, 'int4', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_logininfor', 1, 'info_id', 'bigint', NULL, '1', 64, 0, 0, 'nextval(''adp.sys_logininfor_info_id_seq''::regclass)', 1, 1, '访问ID', 'int8', 'p', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_wal_receiver', 13, 'sender_host', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_class', 14, 'relhasindex', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_tables', 1, 'schemaname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_largeobject_metadata', 2, 'lomowner', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'constraint_column_usage', 4, 'column_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'triggers', 4, 'event_manipulation', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'view_self_table_columns', 3, 'table_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_activity', 12, 'xact_start', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_roles', 9, 'rolpassword', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 80, 'result_cast_scope_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 80);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_depend', 3, 'objsubid', 'integer', NULL, '0', 32, 0, 0, NULL, 0, 0, NULL, 'int4', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_user', 1, 'user_id', 'bigint', NULL, '1', 64, 0, 0, 'nextval(''adp.sys_user_user_id_seq''::regclass)', 1, 1, '用户ID', 'int8', 'p', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx', 22, 'create_by', 'character varying', NULL, '0', 64, NULL, 1, NULL, 0, 0, '创建者', 'varchar', NULL, 22);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_fired_triggers', 6, 'fired_time', 'bigint', NULL, '0', 64, 0, 0, NULL, 0, 0, NULL, 'int8', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'attributes', 17, 'numeric_precision', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 17);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'foreign_tables', 1, 'foreign_table_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_menu', 14, 'update_time', 'timestamp without time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, '更新时间', 'timestamp', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_mbxx', 9, 'update_by', 'character varying', NULL, '0', 64, NULL, 1, NULL, 0, 0, '更新者', 'varchar', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'element_types', 15, 'numeric_precision', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 15);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_policy', 5, 'polpermissive', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_policies', 7, 'qual', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_jcrw', 2, 'targrtnum', 'character varying', NULL, '1', 10, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'p', 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx', 1, 'reqnum', 'character varying', NULL, '1', 20, NULL, 0, NULL, 0, 0, '需求编号', 'varchar', 'p', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'table_constraints', 10, 'enforced', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_foreign_server', 7, 'srvacl', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_aclitem', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_jcrw', 18, 'cameraincrease', 'character varying', NULL, '0', 20, NULL, 1, NULL, 0, 0, NULL, 'varchar', NULL, 18);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_views', 2, 'viewname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_udt_grants', 7, 'is_grantable', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 22, 'collation_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 22);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_type', 19, 'typmodin', 'regproc', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'regproc', NULL, 19);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'user_mappings', 3, 'foreign_server_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_index', 19, 'indexprs', 'pg_node_tree', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'pg_node_tree', NULL, 19);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'sql_parts', 5, 'comments', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_trigger', 15, 'tgattr', 'ARRAY', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'int2vector', NULL, 15);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_activity', 11, 'backend_start', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 1, 'table_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_all_tables', 9, 'n_tup_upd', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 62, 'result_cast_char_octet_length', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 62);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_menu', 3, 'parent_id', 'bigint', NULL, '0', 64, 0, 1, '0', 0, 0, '父菜单ID', 'int8', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_role', 8, 'create_by', 'character varying', NULL, '0', 64, NULL, 1, '''''::character varying', 0, 0, '创建者', 'varchar', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domains', 8, 'character_set_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'referential_constraints', 5, 'unique_constraint_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_simprop_triggers', 9, 'long_prop_1', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_role', 7, 'del_flag', 'character', NULL, '0', 1, NULL, 1, NULL, 0, 0, '删除标志（0代表存在 2代表删除）', 'bpchar', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_notice', 10, 'remark', 'character varying', NULL, '0', 255, NULL, 1, NULL, 0, 0, '备注', 'varchar', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domains', 7, 'character_set_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_wal_receiver', 2, 'status', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_all_tables', 6, 'idx_scan', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_event_trigger', 4, 'evtowner', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'tables', 4, 'table_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_activity', 5, 'usesysid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_subscription', 6, 'last_msg_send_time', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'enabled_roles', 1, 'role_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_auth_members', 3, 'grantor', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_user_tables', 2, 'schemaname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_role_dept', 1, 'role_id', 'bigint', NULL, '1', 64, 0, 0, NULL, 0, 0, '用户ID', 'int8', 'p', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_job_log', 1, 'job_log_id', 'bigint', NULL, '1', 64, 0, 0, 'nextval(''adp.sys_job_log_job_log_id_seq''::regclass)', 1, 1, '日志主键', 'int8', 'p', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_mbq', 5, 'create_by', 'character varying', NULL, '0', 64, NULL, 1, NULL, 0, 0, '创建者', 'varchar', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_attrdef', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_sys_tables', 6, 'idx_blks_read', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'attributes', 21, 'interval_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 21);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_foreign_server', 8, 'srvoptions', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_text', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'table_privileges', 4, 'table_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_policies', 8, 'with_check', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_seclabel', 5, 'label', 'text', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'text', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'collations', 3, 'collation_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_user_tables', 20, 'vacuum_count', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 20);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_aggregate', 1, 'aggfnoid', 'regproc', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'regproc', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_ts_template', 3, 'tmplnamespace', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table_column', 22, 'update_time', 'timestamp without time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, '更新时间', 'timestamp', NULL, 22);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_sequences', 4, 'data_type', 'regtype', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'regtype', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_create_index', 15, 'partitions_total', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 15);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_proc', 22, 'proargmodes', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_char', NULL, 22);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table_column', 1, 'column_id', 'bigint', NULL, '0', 64, 0, 0, 'nextval(''adp.gen_table_column_column_id_seq''::regclass)', 1, 1, '编号', 'int8', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_locks', 12, 'pid', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'int4', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_proc', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_authid', 3, 'rolsuper', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'key_column_usage', 2, 'constraint_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_shmem_allocations', 3, 'size', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'sql_sizing', 1, 'sizing_id', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_oper_log', 1, 'oper_id', 'bigint', NULL, '1', 64, 0, 0, 'nextval(''adp.sys_oper_log_oper_id_seq''::regclass)', 1, 1, '日志主键', 'int8', 'p', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_aggregate', 22, 'aggminitval', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 22);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'check_constraints', 3, 'constraint_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_dict_data', 3, 'dict_label', 'character varying', NULL, '0', 100, NULL, 1, '''''::character varying', 0, 0, '字典标签', 'varchar', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'column_column_usage', 4, 'column_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'attributes', 15, 'collation_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 15);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_scheduler_state', 2, 'instance_name', 'character varying', NULL, '1', 200, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'p', 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_file_settings', 6, 'applied', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_replication_slots', 6, 'temporary', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'element_types', 17, 'numeric_scale', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 17);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_tablespace', 5, 'spcoptions', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_text', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_constraint', 9, 'contypid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_timezone_abbrevs', 2, 'utc_offset', 'interval', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'interval', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_hba_file_rules', 8, 'options', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_text', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'parameters', 7, 'as_locator', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_database_conflicts', 1, 'datid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_user', 1, 'usename', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', '_pg_foreign_data_wrappers', 1, 'oid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_sequence', 7, 'seqcache', 'bigint', NULL, '0', 64, 0, 0, NULL, 0, 0, NULL, 'int8', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'foreign_data_wrappers', 3, 'authorization_identifier', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table', 20, 'remark', 'character varying', NULL, '0', 500, NULL, 1, 'NULL::character varying', 0, 0, '备注', 'varchar', NULL, 20);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_shdepend', 4, 'objsubid', 'integer', NULL, '0', 32, 0, 0, NULL, 0, 0, NULL, 'int4', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic', 9, 'stakind3', 'smallint', NULL, '0', 16, 0, 0, NULL, 0, 0, NULL, 'int2', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_replication', 7, 'client_port', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'int4', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_description', 1, 'objoid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_operator', 9, 'oprright', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_jcrw', 13, 'minarclength', 'character varying', NULL, '0', 10, NULL, 1, NULL, 0, 0, NULL, 'varchar', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_dict_data', 14, 'remark', 'character varying', NULL, '0', 500, NULL, 1, '''''::character varying', 0, 0, '备注', 'varchar', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'collation_character_set_applicability', 1, 'collation_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_trigger', 17, 'tgqual', 'pg_node_tree', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'pg_node_tree', NULL, 17);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_table_grants', 2, 'grantee', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'foreign_servers', 5, 'foreign_server_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_locks', 11, 'virtualtransaction', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_sys_indexes', 2, 'indexrelid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_indexes', 5, 'indexdef', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_database', 17, 'checksum_failures', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 17);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'check_constraints', 4, 'check_clause', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_rewrite', 7, 'ev_qual', 'pg_node_tree', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'pg_node_tree', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_shmem_allocations', 4, 'allocated_size', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_dict_type', 7, 'update_by', 'character varying', NULL, '0', 64, NULL, 1, '''''::character varying', 0, 0, '更新者', 'varchar', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_language', 2, 'lanname', 'name', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_settings', 5, 'short_desc', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_authid', 4, 'rolinherit', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_index', 18, 'indoption', 'ARRAY', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'int2vector', NULL, 18);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_transform', 5, 'trftosql', 'regproc', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'regproc', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_type', 18, 'typsend', 'regproc', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'regproc', NULL, 18);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_user_tables', 11, 'n_tup_hot_upd', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_sequences', 3, 'sequenceowner', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table', 12, 'function_author', 'character varying', NULL, '0', 50, NULL, 1, NULL, 0, 0, '生成功能作者', 'varchar', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_jcrw', 19, 'pointangle', 'character varying', NULL, '0', 20, NULL, 1, NULL, 0, 0, NULL, 'varchar', NULL, 19);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_database', 5, 'datcollate', 'name', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'name', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_ts_template', 4, 'tmplinit', 'regproc', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'regproc', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'parameters', 23, 'interval_precision', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 23);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_dept', 2, 'parent_id', 'bigint', NULL, '0', 64, 0, 1, '0', 0, 0, '父部门id', 'int8', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'collations', 4, 'pad_attribute', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_collation', 5, 'collprovider', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_simple_triggers', 2, 'trigger_name', 'character varying', NULL, '0', 200, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'f', 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_simple_triggers', 2, 'trigger_name', 'character varying', NULL, '1', 200, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'p', 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'table_privileges', 3, 'table_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_ts_parser', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_analyze', 6, 'sample_blks_total', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_oper_log', 9, 'oper_url', 'character varying', NULL, '0', 255, NULL, 1, '''''::character varying', 0, 0, '请求URL', 'varchar', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_job', 7, 'concurrent', 'character', NULL, '0', 1, NULL, 1, '''1''::bpchar', 0, 0, '是否并发执行（0允许 1禁止）', 'bpchar', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table_column', 9, 'is_increment', 'character', NULL, '0', 1, NULL, 1, NULL, 0, 0, '是否自增（1是）', 'bpchar', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_type', 2, 'typname', 'name', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'data_type_privileges', 1, 'object_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_proc', 9, 'prosupport', 'regproc', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'regproc', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_index', 2, 'indrelid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_auth_members', 4, 'admin_option', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 75, 'result_cast_type_udt_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 75);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'element_types', 25, 'scope_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 25);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_sys_tables', 6, 'idx_scan', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'element_types', 26, 'scope_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 26);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_event_trigger', 3, 'evtevent', 'name', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'tables', 3, 'table_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_aggregate', 9, 'aggmtransfn', 'regproc', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'regproc', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_user', 9, 'useconfig', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_text', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'user_defined_types', 2, 'user_defined_type_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domains', 23, 'scope_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 23);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_publication_rel', 3, 'prrelid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_column_grants', 5, 'table_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_bgwriter', 7, 'maxwritten_clean', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_constraint', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_vacuum', 5, 'phase', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_constraint', 22, 'conppeqop', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_oid', NULL, 22);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_shdepend', 3, 'objid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_cron_triggers', 5, 'time_zone_id', 'character varying', NULL, '0', 80, NULL, 1, NULL, 0, 0, NULL, 'varchar', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table', 11, 'function_name', 'character varying', NULL, '0', 50, NULL, 1, NULL, 0, 0, '生成功能名', 'varchar', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_user_tables', 12, 'n_live_tup', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stats', 5, 'null_frac', 'real', NULL, '0', 24, NULL, 1, NULL, 0, 0, NULL, 'float4', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'foreign_data_wrappers', 4, 'library_name', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_available_extensions', 1, 'name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_user_functions', 6, 'self_time', 'double precision', NULL, '0', 53, NULL, 1, NULL, 0, 0, NULL, 'float8', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stats_ext', 7, 'kinds', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_char', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'character_sets', 2, 'character_set_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_operator', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic', 22, 'stanumbers1', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_float4', NULL, 22);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_sys_tables', 7, 'idx_tup_fetch', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic', 1, 'starelid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 44, 'is_null_call', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 44);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'column_column_usage', 3, 'table_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_dict_data', 4, 'dict_value', 'character varying', NULL, '0', 100, NULL, 1, '''''::character varying', 0, 0, '字典键值', 'varchar', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'user_defined_types', 18, 'character_set_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 18);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_triggers', 6, 'description', 'character varying', NULL, '0', 250, NULL, 1, NULL, 0, 0, NULL, 'varchar', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_constraint', 11, 'conparentid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'foreign_data_wrappers', 2, 'foreign_data_wrapper_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_default_acl', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_slru', 5, 'blks_written', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 37, 'identity_start', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 37);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_basebackup', 6, 'tablespaces_streamed', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic', 31, 'stavalues5', 'anyarray', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'anyarray', NULL, 31);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'column_privileges', 7, 'privilege_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_proc', 27, 'probin', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 27);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_table_grants', 3, 'table_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'column_domain_usage', 7, 'column_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table', 1, 'table_id', 'bigint', NULL, '0', 64, 0, 0, 'nextval(''adp.gen_table_table_id_seq''::regclass)', 1, 1, '编号', 'int8', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_amproc', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'user_defined_types', 4, 'user_defined_type_category', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_db_role_setting', 1, 'setdatabase', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'table_constraints', 8, 'is_deferrable', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic_ext', 6, 'stxstattarget', 'integer', NULL, '0', 32, 0, 0, NULL, 0, 0, NULL, 'int4', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', '_pg_foreign_tables', 5, 'foreign_server_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_user_indexes', 6, 'idx_scan', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_dict_data', 2, 'dict_sort', 'integer', NULL, '0', 32, 0, 1, '0', 0, 0, '字典排序', 'int4', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_operator', 11, 'oprcom', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_triggers', 15, 'misfire_instr', 'smallint', NULL, '0', 16, 0, 1, NULL, 0, 0, NULL, 'int2', NULL, 15);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_locks', 9, 'objid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_scheduler_state', 3, 'last_checkin_time', 'bigint', NULL, '0', 64, 0, 0, NULL, 0, 0, NULL, 'int8', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_menu', 13, 'update_by', 'character varying', NULL, '0', 64, NULL, 1, '''''::character varying', 0, 0, '更新者', 'varchar', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_sys_tables', 21, 'autovacuum_count', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 21);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_role_menu', 2, 'menu_id', 'bigint', NULL, '1', 64, 0, 0, NULL, 0, 0, '菜单ID', 'int8', 'p', 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_attribute', 19, 'attislocal', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 19);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_notice', 7, 'create_time', 'timestamp without time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, '创建时间', 'timestamp', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_role', 10, 'update_by', 'character varying', NULL, '0', 64, NULL, 1, '''''::character varying', 0, 0, '更新者', 'varchar', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domains', 10, 'collation_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 71, 'result_cast_numeric_scale', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 71);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_timezone_abbrevs', 3, 'is_dst', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'character_sets', 4, 'character_repertoire', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic', 11, 'stakind5', 'smallint', NULL, '0', 16, 0, 0, NULL, 0, 0, NULL, 'int2', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'user_defined_types', 16, 'character_set_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 16);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_user_tables', 22, 'analyze_count', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 22);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_dept', 4, 'dept_name', 'character varying', NULL, '0', 30, NULL, 1, '''''::character varying', 0, 0, '部门名称', 'varchar', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'collations', 2, 'collation_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routine_privileges', 6, 'routine_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_ts_template', 2, 'tmplname', 'name', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_proc', 20, 'proargtypes', 'ARRAY', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oidvector', NULL, 20);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_constraint', 12, 'confrelid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table_column', 20, 'create_time', 'timestamp without time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, '创建时间', 'timestamp', NULL, 20);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_tqxx', 6, 'create_by', 'character varying', NULL, '0', 64, NULL, 1, NULL, 0, 0, '创建者', 'varchar', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_class', 13, 'reltoastrelid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_type', 16, 'typoutput', 'regproc', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'regproc', NULL, 16);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_index', 16, 'indcollation', 'ARRAY', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oidvector', NULL, 16);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_language', 4, 'lanispl', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_all_tables', 5, 'seq_tup_read', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_replication', 10, 'state', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_wal_receiver', 14, 'sender_port', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'int4', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_authid', 2, 'rolname', 'name', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'view_self_table', 1, 'table_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_aggregate', 20, 'aggmtransspace', 'integer', NULL, '0', 32, 0, 0, NULL, 0, 0, NULL, 'int4', NULL, 20);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'key_column_usage', 3, 'constraint_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_user_tables', 1, 'relid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_shmem_allocations', 2, 'off', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 38, 'identity_increment', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 38);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_simprop_triggers', 5, 'str_prop_2', 'character varying', NULL, '0', 512, NULL, 1, NULL, 0, 0, NULL, 'varchar', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_sys_indexes', 4, 'relname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'referential_constraints', 9, 'delete_rule', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'check_constraints', 2, 'constraint_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_wal_receiver', 3, 'receive_start_lsn', 'pg_lsn', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'pg_lsn', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_extension', 6, 'extversion', 'text', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'text', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_roles', 5, 'rolcreatedb', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_foreign_data_wrapper', 6, 'fdwacl', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_aclitem', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_ts_config', 5, 'cfgparser', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_sys_tables', 15, 'n_ins_since_vacuum', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 15);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'parameters', 10, 'character_maximum_length', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_operator', 12, 'oprnegate', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_auth_members', 2, 'member', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_user_mappings', 1, 'umid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 17, 'character_set_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 17);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_index', 4, 'indnkeyatts', 'smallint', NULL, '0', 16, 0, 0, NULL, 0, 0, NULL, 'int2', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic', 12, 'staop1', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_user_tables', 3, 'relname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_amop', 8, 'amopmethod', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_post', 1, 'post_id', 'bigint', NULL, '1', 64, 0, 0, 'nextval(''adp.sys_post_post_id_seq''::regclass)', 1, 1, '岗位ID', 'int8', 'p', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_type', 4, 'typowner', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_available_extension_versions', 6, 'relocatable', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'view_self_table_columns', 13, 'isidentity', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'int4', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'udt_privileges', 5, 'udt_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_mbxx', 5, 'targettype', 'character varying', NULL, '0', 20, NULL, 1, NULL, 0, 0, '目标类型', 'varchar', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_simple_triggers', 4, 'repeat_count', 'bigint', NULL, '0', 64, 0, 0, NULL, 0, 0, NULL, 'int8', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 26, 'datetime_precision', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 26);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'character_sets', 3, 'character_set_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_tables', 5, 'hasindexes', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 25, 'numeric_scale', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 25);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_scheduler_state', 4, 'checkin_interval', 'bigint', NULL, '0', 64, 0, 0, NULL, 0, 0, NULL, 'int8', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'sequences', 6, 'numeric_precision_radix', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table', 9, 'module_name', 'character varying', NULL, '0', 30, NULL, 1, NULL, 0, 0, '生成模块名', 'varchar', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic', 20, 'stacoll4', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 20);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'user_defined_types', 14, 'character_maximum_length', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_logininfor', 5, 'browser', 'character varying', NULL, '0', 50, NULL, 1, '''''::character varying', 0, 0, '浏览器类型', 'varchar', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_job', 10, 'create_time', 'timestamp without time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, '创建时间', 'timestamp', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_paused_trigger_grps', 2, 'trigger_group', 'character varying', NULL, '1', 200, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'p', 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'column_column_usage', 2, 'table_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'view_table_usage', 5, 'table_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_subscription', 6, 'subconninfo', 'text', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'text', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'attributes', 6, 'attribute_default', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_routine_grants', 6, 'routine_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'user_defined_types', 3, 'user_defined_type_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_aggregate', 12, 'aggfinalextra', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_publication', 7, 'pubdelete', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_publication_rel', 2, 'prpubid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_table_grants', 4, 'table_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table_column', 12, 'is_edit', 'character', NULL, '0', 1, NULL, 1, NULL, 0, 0, '是否编辑字段（1是）', 'bpchar', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_constraint', 20, 'confkey', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_int2', NULL, 20);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_shdepend', 2, 'classid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_usage_grants', 8, 'is_grantable', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_locks', 1, 'locktype', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_proc', 12, 'proleakproof', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_opclass', 8, 'opcdefault', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_class', 19, 'relchecks', 'smallint', NULL, '0', 16, 0, 0, NULL, 0, 0, NULL, 'int2', NULL, 19);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_oper_log', 12, 'oper_param', 'character varying', NULL, '0', 2000, NULL, 1, '''''::character varying', 0, 0, '请求参数', 'varchar', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_user_tables', 9, 'n_tup_upd', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_ssl', 6, 'compression', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'table_privileges', 2, 'grantee', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_simple_triggers', 3, 'trigger_group', 'character varying', NULL, '0', 200, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'f', 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_simple_triggers', 3, 'trigger_group', 'character varying', NULL, '1', 200, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'p', 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'referential_constraints', 1, 'constraint_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_dept', 14, 'update_time', 'timestamp without time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, '更新时间', 'timestamp', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 5, 'ordinal_position', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_type', 3, 'typnamespace', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_sys_tables', 10, 'n_tup_del', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'sql_parts', 1, 'feature_id', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_index', 3, 'indnatts', 'smallint', NULL, '0', 16, 0, 0, NULL, 0, 0, NULL, 'int2', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_user_tables', 4, 'seq_scan', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'triggers', 13, 'action_reference_old_table', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_user_tables', 6, 'idx_blks_read', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic', 27, 'stavalues1', 'anyarray', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'anyarray', NULL, 27);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_replication_origin', 1, 'roident', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_event_trigger', 2, 'evtname', 'name', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'tables', 2, 'table_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_wal_receiver', 4, 'receive_start_tli', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'int4', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_attribute', 13, 'attnotnull', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stats_ext', 10, 'most_common_vals', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_text', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_sys_indexes', 3, 'schemaname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_all_indexes', 6, 'idx_blks_read', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'triggered_update_columns', 6, 'event_object_table', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'views', 6, 'is_updatable', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'key_column_usage', 4, 'table_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_conversion', 8, 'condefault', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx', 5, 'reqendtime', 'date', NULL, '0', -1, NULL, 1, NULL, 0, 0, '需求结束时间', 'date', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_language', 3, 'lanowner', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_aggregate', 11, 'aggmfinalfn', 'regproc', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'regproc', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_post', 9, 'update_time', 'timestamp without time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, '更新时间', 'timestamp', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_policy', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'foreign_tables', 5, 'foreign_server_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_oper_log', 11, 'oper_location', 'character varying', NULL, '0', 255, NULL, 1, '''''::character varying', 0, 0, '操作地点', 'varchar', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_partitioned_table', 7, 'partcollation', 'ARRAY', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oidvector', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_bgwriter', 10, 'buffers_alloc', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_sequences', 2, 'sequencename', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_proc', 11, 'prosecdef', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_index', 14, 'indisreplident', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_create_index', 6, 'command', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_type', 14, 'typarray', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table_column', 11, 'is_insert', 'character', NULL, '0', 1, NULL, 1, NULL, 0, 0, '是否为插入字段（1是）', 'bpchar', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_user', 5, 'user_type', 'character varying', NULL, '0', 2, NULL, 1, '''00''::character varying', 0, 0, '类型:Y默认用户,N非默认用户', 'varchar', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_dept', 3, 'ancestors', 'character varying', NULL, '0', 50, NULL, 1, NULL, 0, 0, '祖级列表', 'varchar', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_user_online', 8, 'status', 'character varying', NULL, '0', 10, NULL, 1, '''''::character varying', 0, 0, '在线状态on_line在线off_line离线', 'varchar', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_collation', 9, 'collctype', 'name', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'name', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'element_types', 6, 'data_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_enum', 3, 'enumsortorder', 'real', NULL, '0', 24, NULL, 0, NULL, 0, 0, NULL, 'float4', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_oper_log', 5, 'request_method', 'character varying', NULL, '0', 10, NULL, 1, '''''::character varying', 0, 0, '请求方式', 'varchar', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_user_online', 7, 'os', 'character varying', NULL, '0', 50, NULL, 1, '''''::character varying', 0, 0, '操作系统', 'varchar', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_jcrw', 4, 'tasktype', 'character varying', NULL, '0', 10, NULL, 1, NULL, 0, 0, NULL, 'varchar', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table_column', 5, 'column_type', 'character varying', NULL, '0', 100, NULL, 1, NULL, 0, 0, '列类型', 'varchar', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_user', 11, 'salt', 'character varying', NULL, '0', 100, NULL, 1, '''''::character varying', 0, 0, '盐加密', 'varchar', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 31, 'scope_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 31);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_partitioned_table', 8, 'partexprs', 'pg_node_tree', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'pg_node_tree', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'applicable_roles', 3, 'is_grantable', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_proc', 5, 'prolang', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_seclabels', 3, 'objsubid', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'int4', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_all_tables', 20, 'vacuum_count', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 20);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx', 11, 'circletime', 'character varying', NULL, '0', 10, NULL, 1, NULL, 0, 0, '监测圈次', 'varchar', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_seclabel', 1, 'objoid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_conversion', 7, 'conproc', 'regproc', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'regproc', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_aggregate', 5, 'aggfinalfn', 'regproc', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'regproc', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domains', 24, 'scope_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 24);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_jcrw', 16, 'exposureinterval', 'character varying', NULL, '0', 50, NULL, 1, NULL, 0, 0, NULL, 'varchar', NULL, 16);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_trigger', 6, 'tgtype', 'smallint', NULL, '0', 16, 0, 0, NULL, 0, 0, NULL, 'int2', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_settings', 9, 'source', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_matviews', 7, 'definition', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_mbq', 1, 'sign', 'character varying', NULL, '0', 20, NULL, 1, NULL, 0, 0, '标签', 'varchar', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_job_log', 5, 'job_message', 'character varying', NULL, '0', 500, NULL, 1, NULL, 0, 0, '日志信息', 'varchar', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_largeobject', 2, 'pageno', 'integer', NULL, '0', 32, 0, 0, NULL, 0, 0, NULL, 'int4', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 68, 'result_cast_collation_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 68);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_range', 6, 'rngsubdiff', 'regproc', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'regproc', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_views', 4, 'definition', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_database', 9, 'datconnlimit', 'integer', NULL, '0', 32, 0, 0, NULL, 0, 0, NULL, 'int4', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 11, 'numeric_precision', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_activity', 1, 'datid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domain_udt_usage', 6, 'domain_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_cluster', 6, 'phase', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_user', 12, 'status', 'character', NULL, '0', 1, NULL, 1, '''0''::bpchar', 0, 0, '帐号状态:0正常,1禁用', 'bpchar', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'collation_character_set_applicability', 5, 'character_set_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_attribute', 18, 'attisdropped', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 18);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_opclass', 7, 'opcintype', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'foreign_data_wrapper_options', 3, 'option_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'foreign_servers', 1, 'foreign_server_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_usage_grants', 7, 'privilege_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_publication', 8, 'pubtruncate', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_job_details', 4, 'description', 'character varying', NULL, '0', 250, NULL, 1, NULL, 0, 0, NULL, 'varchar', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx', 12, 'precision', 'character varying', NULL, '0', 10, NULL, 1, NULL, 0, 0, '监测精度', 'varchar', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'parameters', 32, 'parameter_default', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 32);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_user', 5, 'userepl', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_sys_indexes', 3, 'schemaname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'triggers', 2, 'trigger_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', '_pg_foreign_data_wrappers', 5, 'foreign_data_wrapper_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_database_conflicts', 5, 'confl_snapshot', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'constraint_column_usage', 2, 'table_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'usage_privileges', 3, 'object_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_tablespace', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_shadow', 6, 'usebypassrls', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 12, 'numeric_precision_radix', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_vacuum', 9, 'index_vacuum_count', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 65, 'result_cast_char_set_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 65);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_attribute', 2, 'attname', 'name', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'view_routine_usage', 4, 'specific_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domain_constraints', 2, 'constraint_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'parameters', 24, 'udt_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 24);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_user_mapping', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stats', 9, 'most_common_freqs', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_float4', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_config', 1, 'name', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_amop', 7, 'amopopr', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_views', 3, 'viewowner', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'user_mappings', 2, 'foreign_server_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_jcrw', 14, 'obstimes', 'character varying', NULL, '0', 10, NULL, 1, NULL, 0, 0, NULL, 'varchar', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 20, 'collation_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 20);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_dict_data', 13, 'update_time', 'timestamp without time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, '更新时间', 'timestamp', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'data_type_privileges', 5, 'dtd_identifier', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_all_indexes', 6, 'idx_scan', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_roles', 11, 'rolbypassrls', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_collation', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_menu', 2, 'menu_name', 'character varying', NULL, '0', 50, NULL, 0, NULL, 0, 0, '菜单名称', 'varchar', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_ts_parser', 5, 'prstoken', 'regproc', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'regproc', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_all_tables', 11, 'n_tup_hot_upd', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx', 20, 'workmode', 'character varying', NULL, '0', 20, NULL, 1, NULL, 0, 0, '工作模式', 'varchar', NULL, 20);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_depend', 2, 'objid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_database', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_activity', 9, 'client_hostname', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_simprop_triggers', 11, 'dec_prop_1', 'numeric', NULL, '0', 13, 4, 1, NULL, 0, 0, NULL, 'numeric', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_transform', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_seclabels', 4, 'objtype', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_settings', 1, 'name', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_mbq', 9, 'del_flag', 'character varying', NULL, '0', 1, NULL, 1, NULL, 0, 0, '删除标志（0代表存在 2代表删除）', 'varchar', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_user', 20, 'update_time', 'timestamp without time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, '更新时间', 'timestamp', NULL, 20);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_config', 6, 'create_by', 'character varying', NULL, '0', 64, NULL, 1, '''''::character varying', 0, 0, '创建者', 'varchar', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_jcrw', 3, 'rsh_reqnum', 'character varying', NULL, '0', 20, NULL, 1, NULL, 0, 0, NULL, 'varchar', 'f', 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_indexes', 1, 'schemaname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 21, 'collation_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 21);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_enum', 4, 'enumlabel', 'name', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'name', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'schemata', 6, 'default_character_set_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_notice', 8, 'update_by', 'character varying', NULL, '0', 64, NULL, 1, '''''::character varying', 0, 0, '更新者', 'varchar', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_shseclabel', 2, 'classoid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_class', 18, 'relnatts', 'smallint', NULL, '0', 16, 0, 0, NULL, 0, 0, NULL, 'int2', NULL, 18);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'view_routine_usage', 3, 'table_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic', 5, 'stawidth', 'integer', NULL, '0', 32, 0, 0, NULL, 0, 0, NULL, 'int4', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_user_indexes', 2, 'indexrelid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', '_pg_user_mappings', 6, 'foreign_server_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_operator', 5, 'oprkind', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_largeobject_metadata', 3, 'lomacl', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_aclitem', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 27, 'udt_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 27);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_database', 6, 'blks_read', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'usage_privileges', 4, 'object_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_sys_indexes', 4, 'relname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_roles', 12, 'rolconfig', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_text', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'view_self_table_columns', 2, 'table_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 47, 'max_dynamic_result_sets', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 47);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_sys_tables', 17, 'last_autovacuum', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 17);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'view_self_table_columns', 18, 'ordinal_position', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 18);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 77, 'result_cast_type_udt_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 77);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_simprop_triggers', 12, 'dec_prop_2', 'numeric', NULL, '0', 13, 4, 1, NULL, 0, 0, NULL, 'numeric', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_job_details', 3, 'job_group', 'character varying', NULL, '1', 200, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'p', 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'table_constraints', 7, 'constraint_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stats', 1, 'schemaname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_vacuum', 1, 'pid', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'int4', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 15, 'character_maximum_length', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 15);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_cron_triggers', 1, 'sched_name', 'character varying', NULL, '0', 120, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'f', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_cron_triggers', 1, 'sched_name', 'character varying', NULL, '1', 120, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'p', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_all_tables', 12, 'n_live_tup', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'foreign_data_wrapper_options', 4, 'option_value', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_constraint', 5, 'condeferrable', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_column_grants', 1, 'grantor', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'column_privileges', 8, 'is_grantable', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 56, 'last_altered', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'time_stamp', NULL, 56);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_class', 2, 'relname', 'name', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_sys_tables', 1, 'relid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_sequences', 8, 'increment_by', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 81, 'result_cast_maximum_cardinality', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 81);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_user_online', 2, 'login_name', 'character varying', NULL, '0', 50, NULL, 1, '''''::character varying', 0, 0, '登录账号', 'varchar', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_policies', 4, 'permissive', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'attributes', 27, 'scope_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 27);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_ts_parser', 6, 'prsend', 'regproc', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'regproc', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_analyze', 1, 'pid', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'int4', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_ts_dict', 2, 'dictname', 'name', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_conversion', 2, 'conname', 'name', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'view_column_usage', 3, 'view_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_sys_tables', 22, 'analyze_count', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 22);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_user_functions', 2, 'schemaname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_all_indexes', 5, 'indexrelname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_cursors', 3, 'is_holdable', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_matviews', 2, 'matviewname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_subscription', 9, 'latest_end_time', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'tables', 8, 'user_defined_type_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_all_tables', 9, 'n_tup_upd', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'table_privileges', 8, 'with_hierarchy', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_foreign_server', 4, 'srvfdw', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'administrable_role_authorizations', 3, 'is_grantable', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_sys_tables', 9, 'toast_blks_hit', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_class', 23, 'relrowsecurity', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 23);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_config', 5, 'config_type', 'character', NULL, '0', 1, NULL, 1, '''''::bpchar', 0, 0, '字典类型', 'bpchar', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_user_tables', 15, 'n_ins_since_vacuum', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 15);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_udt_grants', 4, 'udt_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic_ext_data', 4, 'stxdmcv', 'pg_mcv_list', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'pg_mcv_list', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', '_pg_user_mappings', 5, 'foreign_server_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_opclass', 2, 'opcmethod', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic', 6, 'stadistinct', 'real', NULL, '0', 24, NULL, 0, NULL, 0, 0, NULL, 'float4', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_usage_grants', 2, 'grantee', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_triggers', 1, 'sched_name', 'character varying', NULL, '0', 120, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'f', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_triggers', 1, 'sched_name', 'character varying', NULL, '1', 120, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'p', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'schemata', 5, 'default_character_set_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_settings', 17, 'pending_restart', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 17);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 67, 'result_cast_collation_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 67);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'attributes', 20, 'datetime_precision', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 20);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_user_functions', 1, 'funcid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_database', 5, 'xact_rollback', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_operator', 6, 'oprcanmerge', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'constraint_column_usage', 7, 'constraint_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_gssapi', 4, 'encrypted', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_user_tables', 21, 'autovacuum_count', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 21);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'triggers', 7, 'event_object_table', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domain_constraints', 7, 'is_deferrable', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_hba_file_rules', 4, 'user_name', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_text', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table', 15, 'options', 'character varying', NULL, '0', 1000, NULL, 1, NULL, 0, 0, '其它生成选项', 'varchar', NULL, 15);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_constraint', 6, 'condeferred', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_replication_slots', 9, 'xmin', 'xid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'xid', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_archiver', 4, 'failed_count', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_attribute', 7, 'attndims', 'integer', NULL, '0', 32, 0, 0, NULL, 0, 0, NULL, 'int4', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_udt_grants', 3, 'udt_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_amop', 2, 'amopfamily', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_type', 24, 'typnotnull', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 24);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_proc', 6, 'procost', 'real', NULL, '0', 24, NULL, 0, NULL, 0, 0, NULL, 'float4', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_create_index', 11, 'blocks_total', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table_column', 6, 'java_type', 'character varying', NULL, '0', 500, NULL, 1, NULL, 0, 0, 'JAVA类型', 'varchar', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_analyze', 9, 'ext_stats_computed', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_oper_log', 6, 'operator_type', 'integer', NULL, '0', 32, 0, 1, '0', 0, 0, '操作类别（0其它 1后台用户 2手机端用户）', 'int4', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 44, 'is_updatable', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 44);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'element_types', 5, 'collection_type_identifier', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_foreign_server', 3, 'srvowner', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_aggregate', 6, 'aggcombinefn', 'regproc', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'regproc', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_menu', 7, 'menu_type', 'character', NULL, '0', 1, NULL, 1, '''''::bpchar', 0, 0, '类型:M目录,C菜单,F按钮', 'bpchar', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_sys_tables', 9, 'n_tup_upd', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_job_log', 6, 'status', 'character', NULL, '0', 1, NULL, 1, '''0''::bpchar', 0, 0, '执行状态（0正常 1失败）', 'bpchar', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_cursors', 4, 'is_binary', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_range', 5, 'rngcanonical', 'regproc', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'regproc', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_authid', 8, 'rolreplication', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'attributes', 12, 'character_set_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'view_column_usage', 4, 'table_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_trigger', 5, 'tgfoid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_depend', 7, 'deptype', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_sys_tables', 1, 'relid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_user_tables', 11, 'tidx_blks_hit', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_policies', 3, 'policyname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_all_tables', 1, 'relid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domain_udt_usage', 5, 'domain_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_job_details', 10, 'job_data', 'bytea', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bytea', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'check_constraint_routine_usage', 2, 'constraint_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'sequences', 12, 'cycle_option', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_attribute', 23, 'attoptions', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_text', NULL, 23);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_subscription', 1, 'subid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_user_indexes', 7, 'idx_blks_hit', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_archiver', 3, 'last_archived_time', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'collation_character_set_applicability', 6, 'character_set_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_hba_file_rules', 3, 'database', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_text', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'sql_implementation_info', 2, 'implementation_info_name', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_create_index', 12, 'blocks_done', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_cluster', 5, 'command', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'attributes', 31, 'is_derived_reference_attribute', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 31);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_triggers', 9, 'priority', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'int4', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'view_self_table_columns', 7, 'is_required', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_locks', 15, 'fastpath', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 15);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_dict_data', 8, 'is_default', 'character', NULL, '0', 1, NULL, 1, NULL, 0, 0, '是否默认（Y是 N否）', 'bpchar', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_gssapi', 3, 'principal', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_activity', 17, 'state', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 17);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_shadow', 5, 'userepl', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_file_settings', 1, 'sourcefile', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_group', 1, 'groname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_replication_slots', 1, 'slot_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'attributes', 11, 'character_set_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'user_mapping_options', 5, 'option_value', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_user', 6, 'usebypassrls', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_rules', 2, 'tablename', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', '_pg_foreign_data_wrappers', 6, 'authorization_identifier', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 48, 'is_user_defined_cast', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 48);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_database_conflicts', 6, 'confl_bufferpin', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_jcrw', 10, 'circletime', 'character varying', NULL, '0', 10, NULL, 1, NULL, 0, 0, NULL, 'varchar', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_replication_origin_status', 1, 'local_id', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'user_defined_types', 24, 'numeric_scale', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 24);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'table_constraints', 2, 'constraint_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_class', 7, 'relam', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'sequences', 11, 'increment', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_inherits', 1, 'inhrelid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic_ext_data', 3, 'stxddependencies', 'pg_dependencies', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'pg_dependencies', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'sequences', 5, 'numeric_precision', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'parameters', 14, 'character_set_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_tables', 6, 'hasrules', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_replication', 3, 'usename', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'column_privileges', 2, 'grantee', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_class', 8, 'relfilenode', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_sequence', 3, 'seqstart', 'bigint', NULL, '0', 64, 0, 0, NULL, 0, 0, NULL, 'int8', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_ts_config_map', 4, 'mapdict', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_user_sequences', 1, 'relid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_activity', 21, 'backend_type', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 21);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'constraint_table_usage', 4, 'constraint_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'attributes', 5, 'ordinal_position', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_subscription', 5, 'subenabled', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_trigger', 12, 'tgdeferrable', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 9, 'module_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'view_table_usage', 6, 'table_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_bgwriter', 4, 'checkpoint_sync_time', 'double precision', NULL, '0', 53, NULL, 1, NULL, 0, 0, NULL, 'float8', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_database', 20, 'blk_write_time', 'double precision', NULL, '0', 53, NULL, 1, NULL, 0, 0, NULL, 'float8', NULL, 20);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_logininfor', 6, 'os', 'character varying', NULL, '0', 50, NULL, 1, '''''::character varying', 0, 0, '操作系统', 'varchar', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'column_domain_usage', 2, 'domain_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_all_tables', 9, 'toast_blks_hit', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_user_tables', 10, 'n_tup_del', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_class', 30, 'relminmxid', 'xid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'xid', NULL, 30);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_sys_tables', 4, 'seq_scan', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_class', 28, 'relrewrite', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 28);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_dict_data', 7, 'list_class', 'character varying', NULL, '0', 100, NULL, 1, NULL, 0, 0, '表格回显样式', 'varchar', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'view_self_table_columns', 8, 'is_pk', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_routine_grants', 5, 'specific_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_wal_receiver', 10, 'latest_end_lsn', 'pg_lsn', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'pg_lsn', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_notice', 2, 'notice_title', 'character varying', NULL, '0', 50, NULL, 0, NULL, 0, 0, '公告标题', 'varchar', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stats_ext', 4, 'statistics_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_replication', 14, 'replay_lsn', 'pg_lsn', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'pg_lsn', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', '_pg_foreign_servers', 1, 'oid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'element_types', 12, 'collation_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'parameters', 3, 'specific_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_init_privs', 4, 'privtype', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_foreign_table', 1, 'ftrelid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_cluster', 11, 'heap_blks_scanned', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'foreign_server_options', 4, 'option_value', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_sys_sequences', 5, 'blks_hit', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 6, 'column_default', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_ssl', 5, 'bits', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'int4', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 41, 'identity_cycle', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 41);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_rewrite', 4, 'ev_type', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'column_options', 4, 'column_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 61, 'result_cast_char_max_length', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 61);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_user_tables', 5, 'heap_blks_hit', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_dict_type', 4, 'status', 'character', NULL, '0', 1, NULL, 1, '''0''::bpchar', 0, 0, '状态（0正常 1禁用）', 'bpchar', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_activity', 15, 'wait_event_type', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 15);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_trigger', 11, 'tgconstraint', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domains', 14, 'numeric_precision_radix', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_authid', 7, 'rolcanlogin', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_timezone_names', 1, 'name', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_prepared_xacts', 2, 'gid', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_role', 3, 'role_key', 'character varying', NULL, '0', 100, NULL, 0, NULL, 0, 0, '角色权限字符串', 'varchar', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_menu', 8, 'visible', 'character', NULL, '0', 1, NULL, 1, '''0''::bpchar', 0, 0, '菜单状态:0显示,1隐藏', 'bpchar', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domains', 3, 'domain_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx', 6, 'reqtype', 'character varying', NULL, '0', 20, NULL, 1, NULL, 0, 0, '需求类型', 'varchar', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_namespace', 2, 'nspname', 'name', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'triggered_update_columns', 5, 'event_object_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'views', 5, 'check_option', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_all_indexes', 5, 'indexrelname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_user', 6, 'email', 'character varying', NULL, '0', 100, NULL, 1, '''''::character varying', 0, 0, '用户邮箱', 'varchar', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_create_index', 5, 'index_relid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_cluster', 12, 'index_rebuild_count', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_prepared_statements', 3, 'prepare_time', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'element_types', 11, 'character_set_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_job', 4, 'invoke_target', 'character varying', NULL, '0', 500, NULL, 0, NULL, 0, 0, '调用目标字符串', 'varchar', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_fired_triggers', 1, 'sched_name', 'character varying', NULL, '1', 120, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'p', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_attribute', 8, 'attcacheoff', 'integer', NULL, '0', 32, 0, 0, NULL, 0, 0, NULL, 'int4', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_basebackup', 5, 'tablespaces_total', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'parameters', 4, 'ordinal_position', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_init_privs', 3, 'objsubid', 'integer', NULL, '0', 32, 0, 0, NULL, 0, 0, NULL, 'int4', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domain_constraints', 8, 'initially_deferred', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_slru', 6, 'blks_exists', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'column_udt_usage', 1, 'udt_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 1, 'specific_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stats_ext', 3, 'statistics_schemaname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 58, 'is_udt_dependent', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 58);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'element_types', 27, 'scope_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 27);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 49, 'is_implicitly_invocable', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 49);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'triggers', 8, 'action_order', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 22, 'collation_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 22);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_type', 10, 'typisdefined', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_sys_tables', 3, 'relname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_index', 10, 'indisvalid', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_replication', 16, 'flush_lag', 'interval', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'interval', NULL, 16);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_all_sequences', 5, 'blks_hit', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_publication', 2, 'pubname', 'name', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_bgwriter', 3, 'checkpoint_write_time', 'double precision', NULL, '0', 53, NULL, 1, NULL, 0, 0, NULL, 'float8', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 60, 'result_cast_as_locator', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 60);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 45, 'sql_path', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 45);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', '_pg_foreign_servers', 9, 'authorization_identifier', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic_ext', 5, 'stxowner', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', '_pg_foreign_tables', 6, 'foreign_server_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'parameters', 16, 'collation_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 16);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_database', 11, 'tup_updated', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_dept', 10, 'del_flag', 'character', NULL, '0', 1, NULL, 1, NULL, 0, 0, '删除标志（0代表存在 2代表删除）', 'bpchar', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_user_indexes', 5, 'indexrelname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'constraint_table_usage', 3, 'table_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_sequence', 4, 'seqincrement', 'bigint', NULL, '0', 64, 0, 0, NULL, 0, 0, NULL, 'int8', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'transforms', 1, 'udt_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_ts_config_map', 3, 'mapseqno', 'integer', NULL, '0', 32, 0, 0, NULL, 0, 0, NULL, 'int4', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_replication', 4, 'application_name', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_all_tables', 1, 'relid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_user_tables', 17, 'last_autovacuum', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 17);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_shdepend', 7, 'deptype', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_job', 3, 'job_group', 'character varying', NULL, '1', 64, NULL, 0, '''''::character varying', 0, 0, '任务组名', 'varchar', 'p', 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_tqxx', 5, 'create_time', 'date', NULL, '0', -1, NULL, 1, NULL, 0, 0, '创建时间', 'date', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_prepared_statements', 4, 'parameter_types', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_regtype', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routine_privileges', 5, 'specific_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'element_types', 20, 'interval_precision', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 20);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'table_privileges', 7, 'is_grantable', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_opfamily', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_settings', 15, 'sourcefile', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 15);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_simprop_triggers', 6, 'str_prop_3', 'character varying', NULL, '0', 512, NULL, 1, NULL, 0, 0, NULL, 'varchar', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_event_trigger', 7, 'evttags', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_text', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'tables', 7, 'user_defined_type_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_role', 4, 'role_sort', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, '显示顺序', 'int4', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domains', 4, 'data_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_all_tables', 6, 'idx_scan', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'foreign_table_options', 2, 'foreign_table_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_dict_type', 3, 'dict_type', 'character varying', NULL, '0', 100, NULL, 1, '''''::character varying', 0, 0, '字典类型', 'varchar', 'u', 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_am', 2, 'amname', 'name', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_database', 12, 'tup_deleted', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_fired_triggers', 9, 'state', 'character varying', NULL, '0', 16, NULL, 0, NULL, 0, 0, NULL, 'varchar', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_cast', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_extension', 5, 'extrelocatable', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_rewrite', 3, 'ev_class', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_roles', 6, 'rolcanlogin', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'column_options', 3, 'table_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_foreign_data_wrapper', 5, 'fdwvalidator', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domains', 16, 'datetime_precision', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 16);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_jcrw', 24, 'create_time', 'date', NULL, '0', -1, NULL, 1, NULL, 0, 0, '创建时间', 'date', NULL, 24);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'user_defined_types', 10, 'ordering_routine_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table', 17, 'create_time', 'timestamp without time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, '创建时间', 'timestamp', NULL, 17);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_class', 29, 'relfrozenxid', 'xid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'xid', NULL, 29);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_available_extension_versions', 5, 'trusted', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'udt_privileges', 6, 'privilege_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_mbxx', 6, 'create_time', 'date', NULL, '0', -1, NULL, 1, NULL, 0, 0, '创建时间', 'date', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_calendars', 3, 'calendar', 'bytea', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bytea', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'foreign_server_options', 3, 'option_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_sequences', 7, 'max_value', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'sql_features', 1, 'feature_id', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_partitioned_table', 2, 'partstrat', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'foreign_table_options', 4, 'option_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_settings', 6, 'extra_desc', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_prepared_xacts', 3, 'prepared', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_wal_receiver', 7, 'received_tli', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'int4', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_jcrw', 28, 'del_flag', 'character varying', NULL, '0', 1, NULL, 1, NULL, 0, 0, '删除标志（0代表存在 2代表删除）', 'varchar', NULL, 28);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_trigger', 9, 'tgconstrrelid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'user_defined_types', 23, 'numeric_precision_radix', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 23);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_role', 2, 'role_name', 'character varying', NULL, '0', 30, NULL, 0, NULL, 0, 0, '角色名称', 'varchar', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domains', 2, 'domain_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_config', 1, 'config_id', 'bigint', NULL, '1', 64, 0, 0, 'nextval(''adp.sys_config_config_id_seq''::regclass)', 1, 1, '字典编码', 'int8', 'p', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_namespace', 3, 'nspowner', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 12, 'udt_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_all_tables', 15, 'n_ins_since_vacuum', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 15);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic', 17, 'stacoll1', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 17);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_dict_data', 10, 'create_by', 'character varying', NULL, '0', 64, NULL, 1, '''''::character varying', 0, 0, '创建者', 'varchar', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_database', 6, 'datctype', 'name', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'name', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_prepared_statements', 2, 'statement', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_user_tables', 7, 'idx_tup_fetch', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_locks', 1, 'sched_name', 'character varying', NULL, '1', 120, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'p', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_partitioned_table', 4, 'partdefid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_all_indexes', 1, 'relid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_jcrw', 8, 'endtime', 'date', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'date', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_analyze', 5, 'phase', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 64, 'result_cast_char_set_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 64);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_constraint', 17, 'coninhcount', 'integer', NULL, '0', 32, 0, 0, NULL, 0, 0, NULL, 'int4', NULL, 17);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_collation', 6, 'collisdeterministic', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'element_types', 9, 'character_set_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_proc', 25, 'protrftypes', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_oid', NULL, 25);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'key_column_usage', 7, 'column_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domains', 18, 'interval_precision', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 18);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_sys_tables', 5, 'seq_tup_read', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_proc', 26, 'prosrc', 'text', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'text', NULL, 26);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_am', 4, 'amtype', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_column_grants', 6, 'column_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_shadow', 9, 'useconfig', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_text', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 11, 'udt_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_notice', 3, 'notice_type', 'character', NULL, '0', 2, NULL, 0, NULL, 0, 0, '公告类型（1通知 2公告）', 'bpchar', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stats', 6, 'avg_width', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'int4', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'parameters', 2, 'specific_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_replication', 18, 'sync_priority', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'int4', NULL, 18);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_vacuum', 6, 'heap_blks_total', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_attribute', 24, 'attfdwoptions', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_text', NULL, 24);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_all_tables', 21, 'autovacuum_count', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 21);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_database', 1, 'datid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_replication', 2, 'usesysid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'column_privileges', 3, 'table_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_type', 23, 'typstorage', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 23);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_authid', 10, 'rolconnlimit', 'integer', NULL, '0', 32, 0, 0, NULL, 0, 0, NULL, 'int4', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_sequence', 2, 'seqtypid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'parameters', 18, 'numeric_precision', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 18);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_cluster', 9, 'heap_tuples_written', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_user_functions', 5, 'total_time', 'double precision', NULL, '0', 53, NULL, 1, NULL, 0, 0, NULL, 'float8', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 31, 'type_udt_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 31);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'schemata', 1, 'catalog_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_all_tables', 11, 'tidx_blks_hit', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_job_details', 8, 'is_update_data', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_triggers', 5, 'job_group', 'character varying', NULL, '0', 200, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'f', 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_table_grants', 7, 'is_grantable', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', '_pg_user_mappings', 1, 'oid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 57, 'new_savepoint_level', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 57);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'column_domain_usage', 3, 'domain_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_publication', 4, 'puballtables', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_am', 3, 'amhandler', 'regproc', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'regproc', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_language', 7, 'laninline', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_dict_type', 2, 'dict_name', 'character varying', NULL, '0', 100, NULL, 1, '''''::character varying', 0, 0, '字典名称', 'varchar', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_seclabels', 8, 'label', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_subscription', 5, 'received_lsn', 'pg_lsn', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'pg_lsn', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_all_tables', 5, 'seq_tup_read', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domain_udt_usage', 1, 'udt_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_sys_indexes', 7, 'idx_tup_read', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_activity', 6, 'usename', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_rewrite', 2, 'rulename', 'name', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'column_options', 2, 'table_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_trigger', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 15, 'interval_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 15);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_config', 9, 'update_time', 'timestamp without time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, '更新时间', 'timestamp', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_sys_tables', 5, 'heap_blks_hit', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_dept', 7, 'phone', 'character varying', NULL, '0', 20, NULL, 1, '''''::character varying', 0, 0, '联系电话', 'varchar', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_range', 1, 'rngtypid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_mbq', 6, 'create_time', 'date', NULL, '0', -1, NULL, 1, NULL, 0, 0, '创建时间', 'date', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_calendars', 2, 'calendar_name', 'character varying', NULL, '1', 200, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'p', 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'foreign_server_options', 2, 'foreign_server_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_partitioned_table', 3, 'partnatts', 'smallint', NULL, '0', 16, 0, 0, NULL, 0, 0, NULL, 'int2', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_job', 2, 'job_name', 'character varying', NULL, '1', 64, NULL, 0, '''''::character varying', 0, 0, '任务名称', 'varchar', 'p', 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_type', 7, 'typtype', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_index', 7, 'indisexclusion', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_user', 15, 'login_date', 'timestamp without time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, '最后登录时间', 'timestamp', NULL, 15);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 27, 'interval_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 27);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'element_types', 22, 'udt_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 22);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_fired_triggers', 11, 'job_group', 'character varying', NULL, '0', 200, NULL, 1, NULL, 0, 0, NULL, 'varchar', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_namespace', 4, 'nspacl', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_aclitem', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'element_types', 1, 'object_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_prepared_xacts', 4, 'owner', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx', 15, 'obstimes', 'character varying', NULL, '0', 10, NULL, 1, NULL, 0, 0, '观测频次', 'varchar', NULL, 15);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'foreign_table_options', 3, 'foreign_table_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'column_domain_usage', 4, 'table_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_publication', 3, 'pubowner', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 21, 'collation_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 21);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_shdescription', 1, 'objoid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_sequences', 10, 'cache_size', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_aggregate', 17, 'aggtranstype', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 17);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_bgwriter', 2, 'checkpoints_req', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_constraint', 25, 'conbin', 'pg_node_tree', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'pg_node_tree', NULL, 25);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'user_defined_types', 7, 'ordering_form', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_class', 32, 'reloptions', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_text', NULL, 32);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'constraint_table_usage', 2, 'table_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table_column', 17, 'dict_type', 'character varying', NULL, '0', 200, NULL, 1, '''''::character varying', 0, 0, '字典类型', 'varchar', NULL, 17);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_class', 24, 'relforcerowsecurity', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 24);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_ts_config_map', 2, 'maptokentype', 'integer', NULL, '0', 32, 0, 0, NULL, 0, 0, NULL, 'int4', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_proc', 17, 'pronargs', 'smallint', NULL, '0', 16, 0, 0, NULL, 0, 0, NULL, 'int2', NULL, 17);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_file_settings', 5, 'setting', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_replication_slots', 5, 'database', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'column_privileges', 4, 'table_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_shadow', 1, 'usename', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'user_mapping_options', 1, 'authorization_identifier', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_subscription_rel', 1, 'srsubid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_init_privs', 2, 'classoid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'tables', 10, 'is_insertable_into', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx', 21, 'create_time', 'date', NULL, '0', -1, NULL, 1, NULL, 0, 0, '入库时间', 'date', NULL, 21);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_notice', 4, 'notice_content', 'character varying', NULL, '0', 2000, NULL, 1, NULL, 0, 0, '公告内容', 'varchar', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stats_ext', 2, 'tablename', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'character_sets', 7, 'default_collate_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 20, 'collation_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 20);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_cluster', 1, 'pid', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'int4', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic', 25, 'stanumbers4', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_float4', NULL, 25);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_user', 21, 'remark', 'character varying', NULL, '0', 500, NULL, 1, NULL, 0, 0, '备注', 'varchar', NULL, 21);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'usage_privileges', 8, 'is_grantable', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_database', 9, 'tup_fetched', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'foreign_servers', 6, 'foreign_server_version', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_sys_tables', 2, 'schemaname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_fired_triggers', 12, 'is_nonconcurrent', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic', 26, 'stanumbers5', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_float4', NULL, 26);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_locks', 6, 'virtualxid', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table_column', 21, 'update_by', 'character varying', NULL, '0', 64, NULL, 1, '''''::character varying', 0, 0, '更新者', 'varchar', NULL, 21);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'usage_privileges', 7, 'privilege_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_proc', 21, 'proallargtypes', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_oid', NULL, 21);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', '_pg_foreign_servers', 5, 'foreign_data_wrapper_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_job', 13, 'remark', 'character varying', NULL, '0', 500, NULL, 1, '''''::character varying', 0, 0, '备注信息', 'varchar', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_sys_indexes', 7, 'idx_blks_hit', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 17, 'character_set_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 17);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_jcrw', 23, 'monstate', 'character varying', NULL, '0', 20, NULL, 1, NULL, 0, 0, NULL, 'varchar', NULL, 23);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_routine_grants', 1, 'grantor', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'sql_implementation_info', 4, 'character_value', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'character_sets', 8, 'default_collate_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'user_defined_types', 28, 'source_dtd_identifier', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 28);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_aggregate', 21, 'agginitval', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 21);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'parameters', 19, 'numeric_precision_radix', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 19);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 38, 'routine_definition', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 38);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_user', 17, 'create_by', 'character varying', NULL, '0', 64, NULL, 1, '''''::character varying', 0, 0, '创建者', 'varchar', NULL, 17);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_opclass', 3, 'opcname', 'name', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_replication', 19, 'sync_state', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 19);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_usage_grants', 3, 'object_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 55, 'created', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'time_stamp', NULL, 55);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_subscription', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'attributes', 1, 'udt_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_replication_slots', 11, 'restart_lsn', 'pg_lsn', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'pg_lsn', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'attributes', 22, 'interval_precision', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 22);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'table_constraints', 4, 'table_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_rules', 4, 'definition', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'user_defined_types', 8, 'ordering_category', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_user_sequences', 5, 'blks_hit', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_user_role', 1, 'user_id', 'bigint', NULL, '1', 64, 0, 0, NULL, 0, 0, '用户ID', 'int8', 'p', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'sequences', 1, 'sequence_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx', 17, 'exposureinterval', 'character varying', NULL, '0', 50, NULL, 1, NULL, 0, 0, '曝光间隔', 'varchar', NULL, 17);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_matviews', 3, 'matviewowner', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_fired_triggers', 5, 'instance_name', 'character varying', NULL, '0', 200, NULL, 0, NULL, 0, 0, NULL, 'varchar', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_aggregate', 15, 'aggmfinalmodify', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 15);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stats_ext', 13, 'most_common_base_freqs', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_float8', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_attribute', 10, 'attbyval', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domains', 19, 'domain_default', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 19);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_create_index', 1, 'pid', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'int4', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table_column', 15, 'query_type', 'character varying', NULL, '0', 200, NULL, 1, '''EQ''::character varying', 0, 0, '查询方式（等于、不等于、大于、小于、范围）', 'varchar', NULL, 15);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'administrable_role_authorizations', 2, 'role_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'triggers', 10, 'action_statement', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_proc', 15, 'provolatile', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 15);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_all_indexes', 1, 'relid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'triggered_update_columns', 1, 'trigger_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'views', 1, 'table_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_available_extension_versions', 9, 'comment', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_type', 8, 'typcategory', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_policy', 6, 'polroles', 'ARRAY', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, '_oid', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_amop', 4, 'amoprighttype', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_oper_log', 15, 'error_msg', 'character varying', NULL, '0', 2000, NULL, 1, '''''::character varying', 0, 0, '错误消息', 'varchar', NULL, 15);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_index', 8, 'indimmediate', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_replication_slots', 12, 'confirmed_flush_lsn', 'pg_lsn', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'pg_lsn', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_tqxx', 9, 'del_flag', 'character varying', NULL, '0', 1, NULL, 1, NULL, 0, 0, '删除标志（0代表存在 2代表删除）', 'varchar', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_user_tables', 1, 'relid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_sys_tables', 11, 'tidx_blks_hit', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routine_privileges', 9, 'privilege_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'check_constraint_routine_usage', 4, 'specific_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_user_online', 3, 'dept_name', 'character varying', NULL, '0', 50, NULL, 1, '''''::character varying', 0, 0, '部门名称', 'varchar', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_dept', 8, 'email', 'character varying', NULL, '0', 20, NULL, 1, '''''::character varying', 0, 0, '邮箱', 'varchar', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'referential_constraints', 6, 'unique_constraint_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_ts_dict', 3, 'dictnamespace', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_sys_indexes', 8, 'idx_tup_fetch', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_conversion', 3, 'connamespace', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 37, 'routine_body', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 37);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_type', 30, 'typdefault', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 30);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_ssl', 1, 'pid', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'int4', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'view_column_usage', 2, 'view_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_sys_sequences', 1, 'relid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_type', 28, 'typcollation', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 28);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_user_functions', 3, 'funcname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_seclabels', 7, 'provider', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_language', 8, 'lanvalidator', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_all_tables', 11, 'n_tup_hot_upd', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_sys_tables', 20, 'vacuum_count', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 20);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_cursors', 2, 'statement', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_all_tables', 5, 'heap_blks_hit', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_sys_tables', 12, 'n_live_tup', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_table_grants', 8, 'with_hierarchy', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_triggers', 11, 'trigger_type', 'character varying', NULL, '0', 8, NULL, 0, NULL, 0, 0, NULL, 'varchar', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_operator', 15, 'oprjoin', 'regproc', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'regproc', NULL, 15);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_rules', 3, 'rulename', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_routine_grants', 9, 'privilege_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'transforms', 5, 'specific_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_all_tables', 17, 'last_autovacuum', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 17);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_job_details', 7, 'is_nonconcurrent', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'table_constraints', 3, 'constraint_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_analyze', 12, 'current_child_table_relid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic', 15, 'staop4', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 15);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_user_indexes', 1, 'relid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic_ext', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_opclass', 4, 'opcnamespace', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_all_sequences', 1, 'relid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_usage_grants', 4, 'object_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic_ext_data', 2, 'stxdndistinct', 'pg_ndistinct', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'pg_ndistinct', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_archiver', 2, 'last_archived_wal', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_class', 33, 'relpartbound', 'pg_node_tree', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'pg_node_tree', NULL, 33);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domains', 13, 'numeric_precision', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table', 6, 'class_name', 'character varying', NULL, '0', 100, NULL, 1, '''''::character varying', 0, 0, '实体类名称', 'varchar', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'sequences', 9, 'minimum_value', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'sql_implementation_info', 3, 'integer_value', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_type', 29, 'typdefaultbin', 'pg_node_tree', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'pg_node_tree', NULL, 29);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_hba_file_rules', 2, 'type', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_menu', 10, 'icon', 'character varying', NULL, '0', 100, NULL, 1, '''''::character varying', 0, 0, '菜单图标', 'varchar', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_publication_tables', 1, 'pubname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_constraint', 15, 'confmatchtype', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 15);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_amproc', 6, 'amproc', 'regproc', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'regproc', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'column_udt_usage', 5, 'table_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'attributes', 9, 'character_maximum_length', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_subscription', 9, 'subpublications', 'ARRAY', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, '_text', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 5, 'routine_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_gssapi', 2, 'gss_authenticated', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_basebackup', 1, 'pid', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'int4', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_available_extension_versions', 1, 'name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_post', 6, 'create_by', 'character varying', NULL, '0', 64, NULL, 1, '''''::character varying', 0, 0, '创建者', 'varchar', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic', 21, 'stacoll5', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 21);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'sql_features', 5, 'is_supported', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'user_defined_types', 29, 'ref_dtd_identifier', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 29);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_user_functions', 4, 'calls', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_conversion', 4, 'conowner', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_class', 10, 'relpages', 'integer', NULL, '0', 32, 0, 0, NULL, 0, 0, NULL, 'int4', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'key_column_usage', 8, 'ordinal_position', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_sys_tables', 11, 'n_tup_hot_upd', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'views', 9, 'is_trigger_deletable', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_ts_dict', 4, 'dictowner', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_replication', 13, 'flush_lsn', 'pg_lsn', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'pg_lsn', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_triggers', 12, 'start_time', 'bigint', NULL, '0', 64, 0, 0, NULL, 0, 0, NULL, 'int8', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_user_online', 4, 'ipaddr', 'character varying', NULL, '0', 50, NULL, 1, '''''::character varying', 0, 0, '登录IP地址', 'varchar', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_policies', 2, 'tablename', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_cast', 5, 'castcontext', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_user_post', 1, 'user_id', 'bigint', NULL, '1', 64, 0, 0, NULL, 0, 0, '用户ID', 'int8', 'p', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_jcrw', 7, 'starttime', 'date', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'date', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_create_index', 9, 'lockers_done', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_foreign_data_wrapper', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_extension', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'check_constraint_routine_usage', 3, 'constraint_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_user_mappings', 6, 'umoptions', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_text', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx', 25, 'del_flag', 'character varying', NULL, '0', 1, NULL, 1, NULL, 0, 0, '删除标志（0代表存在 2代表删除）', 'varchar', NULL, 25);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_analyze', 11, 'child_tables_done', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_amop', 3, 'amoplefttype', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'view_self_table', 6, 'create_time', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_user_tables', 8, 'n_tup_ins', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_udt_grants', 2, 'grantee', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'view_self_table_columns', 10, 'scale', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', '_pg_foreign_table_columns', 1, 'nspname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_user_tables', 6, 'idx_scan', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_ssl', 9, 'issuer_dn', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_foreign_server', 2, 'srvname', 'name', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routine_privileges', 1, 'grantor', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_wal_receiver', 8, 'last_msg_send_time', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_opfamily', 5, 'opfowner', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 25, 'domain_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 25);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_tqxx', 1, 'reqnum', 'character varying', NULL, '1', 10, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'p', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_user_tables', 9, 'toast_blks_hit', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 26, 'udt_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 26);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_matviews', 4, 'tablespace', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_constraint', 21, 'conpfeqop', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_oid', NULL, 21);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'parameters', 13, 'character_set_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_settings', 2, 'setting', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_language', 5, 'lanpltrusted', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_all_tables', 4, 'seq_scan', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_subscription', 7, 'last_msg_receipt_time', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_simprop_triggers', 4, 'str_prop_1', 'character varying', NULL, '0', 512, NULL, 1, NULL, 0, 0, NULL, 'varchar', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_sys_indexes', 5, 'indexrelname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_all_tables', 7, 'idx_tup_fetch', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_indexes', 2, 'tablename', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx', 3, 'reqsource', 'character varying', NULL, '0', 20, NULL, 1, NULL, 0, 0, '需求来源', 'varchar', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 79, 'result_cast_scope_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 79);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domains', 6, 'character_octet_length', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_role', 6, 'status', 'character', NULL, '0', 1, NULL, 1, '''0''::bpchar', 0, 0, '角色状态（0正常 1停用）', 'bpchar', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table', 13, 'gen_type', 'character', NULL, '0', 1, NULL, 1, '''0''::bpchar', 0, 0, '生成代码方式（0zip压缩包 1自定义路径）', 'bpchar', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_depend', 1, 'classid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_database', 2, 'datname', 'name', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 14, 'datetime_precision', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_sys_tables', 7, 'idx_blks_hit', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_dept', 5, 'order_num', 'integer', NULL, '0', 32, 0, 1, '0', 0, 0, '显示顺序', 'int4', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_jcrw', 20, 'workmode', 'character varying', NULL, '0', 100, NULL, 1, NULL, 0, 0, NULL, 'varchar', NULL, 20);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_user', 3, 'login_name', 'character varying', NULL, '0', 30, NULL, 1, '''''::character varying', 0, 0, '登录账号', 'varchar', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_transform', 2, 'trftype', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'foreign_tables', 3, 'foreign_table_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_mbxx', 4, 'targetname', 'character varying', NULL, '0', 50, NULL, 1, NULL, 0, 0, '目标名称', 'varchar', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_type', 5, 'typlen', 'smallint', NULL, '0', 16, 0, 0, NULL, 0, 0, NULL, 'int2', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_user', 14, 'login_ip', 'character varying', NULL, '0', 50, NULL, 1, '''''::character varying', 0, 0, '最后登录IP', 'varchar', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'udt_privileges', 4, 'udt_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 3, 'table_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_all_tables', 16, 'last_vacuum', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 16);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_index', 5, 'indisunique', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_simple_triggers', 5, 'repeat_interval', 'bigint', NULL, '0', 64, 0, 0, NULL, 0, 0, NULL, 'int8', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_collation', 2, 'collname', 'name', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_menu', 1, 'menu_id', 'bigint', NULL, '1', 64, 0, 0, 'nextval(''adp.sys_menu_menu_id_seq''::regclass)', 1, 1, '菜单ID', 'int8', 'p', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'element_types', 24, 'udt_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 24);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_config', 2, 'setting', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_ts_config', 4, 'cfgowner', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_roles', 4, 'rolcreaterole', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx', 14, 'minarclength', 'character varying', NULL, '0', 10, NULL, 1, NULL, 0, 0, '最短弧长限制', 'varchar', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_fired_triggers', 8, 'priority', 'integer', NULL, '0', 32, 0, 0, NULL, 0, 0, NULL, 'int4', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'user_mappings', 1, 'authorization_identifier', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 29, 'type_udt_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 29);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_user_tables', 13, 'n_dead_tup', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_column_grants', 2, 'grantee', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_class', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'triggers', 9, 'action_condition', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'user_defined_types', 5, 'is_instantiable', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_jcrw', 27, 'update_by', 'character varying', NULL, '0', 64, NULL, 1, NULL, 0, 0, '更新者', 'varchar', NULL, 27);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_class', 22, 'relhassubclass', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 22);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_slru', 4, 'blks_read', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'parameters', 6, 'is_result', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stats', 2, 'tablename', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_replication_slots', 7, 'active', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_vacuum', 2, 'datid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_file_settings', 7, 'error', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_cron_triggers', 2, 'trigger_name', 'character varying', NULL, '0', 200, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'f', 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_cron_triggers', 2, 'trigger_name', 'character varying', NULL, '1', 200, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'p', 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_attribute', 9, 'atttypmod', 'integer', NULL, '0', 32, 0, 0, NULL, 0, 0, NULL, 'int4', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_replication', 6, 'client_hostname', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_tables', 3, 'tableowner', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'view_self_table_columns', 1, 'table_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'character_sets', 5, 'form_of_use', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_sequence', 6, 'seqmin', 'bigint', NULL, '0', 64, 0, 0, NULL, 0, 0, NULL, 'int8', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 76, 'result_cast_type_udt_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 76);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', '_pg_foreign_servers', 8, 'foreign_server_version', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routine_privileges', 10, 'is_grantable', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'view_table_usage', 3, 'view_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_shseclabel', 1, 'objoid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', '_pg_foreign_tables', 4, 'ftoptions', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_text', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_user_indexes', 1, 'relid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_logininfor', 3, 'ipaddr', 'character varying', NULL, '0', 50, NULL, 1, '''''::character varying', 0, 0, '登录IP地址', 'varchar', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_sys_tables', 23, 'autoanalyze_count', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 23);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_blob_triggers', 4, 'blob_data', 'bytea', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bytea', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_simprop_triggers', 14, 'bool_prop_2', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_dict_type', 6, 'create_time', 'timestamp without time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, '创建时间', 'timestamp', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_ts_config', 3, 'cfgnamespace', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_all_tables', 14, 'n_mod_since_analyze', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_roles', 3, 'rolinherit', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'column_options', 6, 'option_value', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_rewrite', 6, 'is_instead', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_wal_receiver', 5, 'written_lsn', 'pg_lsn', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'pg_lsn', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_activity', 2, 'datname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_user', 16, 'pwd_update_date', 'timestamp without time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, '密码最后更新时间', 'timestamp', NULL, 16);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx', 16, 'exposuretime', 'character varying', NULL, '0', 10, NULL, 1, NULL, 0, 0, '曝光时间', 'varchar', NULL, 16);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_routine_grants', 10, 'is_grantable', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_user_tables', 5, 'seq_tup_read', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_mbq', 2, 'targrtnum', 'character varying', NULL, '1', 500, NULL, 0, NULL, 0, 0, '目标编号', 'varchar', 'p', 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_mbxx', 3, 'priority', 'character varying', NULL, '0', 5, NULL, 1, NULL, 0, 0, '优先级', 'varchar', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'udt_privileges', 3, 'udt_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_largeobject', 1, 'loid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 4, 'column_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_jcrw', 11, 'precision', 'character varying', NULL, '0', 10, NULL, 1, NULL, 0, 0, NULL, 'varchar', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_job', 6, 'misfire_policy', 'character varying', NULL, '0', 20, NULL, 1, '''3''::character varying', 0, 0, '计划执行错误策略（1立即执行 2执行一次 3放弃执行）', 'varchar', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'foreign_tables', 4, 'foreign_server_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_seclabel', 2, 'classoid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_analyze', 7, 'sample_blks_scanned', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'attributes', 10, 'character_octet_length', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_user_tables', 19, 'last_autoanalyze', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 19);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_user', 4, 'user_name', 'character varying', NULL, '0', 30, NULL, 1, '''''::character varying', 0, 0, '用户昵称', 'varchar', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_locks', 13, 'mode', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_activity', 18, 'backend_xid', 'xid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'xid', NULL, 18);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx', 4, 'reqstarttime', 'date', NULL, '0', -1, NULL, 1, NULL, 0, 0, '需求开始时间', 'date', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_menu', 9, 'perms', 'character varying', NULL, '0', 100, NULL, 1, '''''::character varying', 0, 0, '权限标识', 'varchar', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'key_column_usage', 5, 'table_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_simprop_triggers', 3, 'trigger_group', 'character varying', NULL, '0', 200, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'f', 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_simprop_triggers', 3, 'trigger_group', 'character varying', NULL, '1', 200, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'p', 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_sys_tables', 7, 'idx_tup_fetch', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 16, 'interval_precision', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 16);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'sequences', 10, 'maximum_value', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_all_tables', 3, 'relname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_bgwriter', 6, 'buffers_clean', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_blob_triggers', 3, 'trigger_group', 'character varying', NULL, '0', 200, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'f', 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_blob_triggers', 3, 'trigger_group', 'character varying', NULL, '1', 200, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'p', 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_attribute', 1, 'attrelid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_logininfor', 4, 'login_location', 'character varying', NULL, '0', 255, NULL, 1, NULL, 0, 0, '登录地点', 'varchar', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', '_pg_foreign_tables', 3, 'foreign_table_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domain_constraints', 1, 'constraint_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_user_mapping', 2, 'umuser', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_create_index', 10, 'current_locker_pid', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 8, 'module_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'view_table_usage', 4, 'table_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_class', 9, 'reltablespace', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'views', 10, 'is_trigger_insertable_into', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'triggers', 1, 'trigger_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'constraint_table_usage', 6, 'constraint_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'constraint_column_usage', 1, 'table_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_attribute', 22, 'attacl', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_aclitem', NULL, 22);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_tablespace', 2, 'spcname', 'name', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_tables', 4, 'tablespace', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 30, 'type_udt_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 30);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_user_tables', 10, 'tidx_blks_read', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table', 19, 'update_time', 'timestamp without time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, '更新时间', 'timestamp', NULL, 19);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_jcrw', 12, 'isimaging', 'character varying', NULL, '0', 10, NULL, 1, NULL, 0, 0, NULL, 'varchar', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stats_ext', 6, 'attnames', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_name', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_slru', 3, 'blks_hit', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 28, 'interval_precision', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 28);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_triggers', 7, 'next_fire_time', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'view_self_table_columns', 9, 'length', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'int4', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'transforms', 8, 'transform_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_all_tables', 8, 'toast_blks_read', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_table_grants', 5, 'table_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_sys_tables', 6, 'idx_scan', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'foreign_servers', 2, 'foreign_server_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_all_tables', 7, 'idx_blks_hit', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_description', 4, 'description', 'text', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'text', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_shdepend', 1, 'dbid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_locks', 2, 'database', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'user_defined_types', 20, 'collation_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 20);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_dict_data', 9, 'status', 'character', NULL, '0', 1, NULL, 1, '''0''::bpchar', 0, 0, '状态（0正常 1禁用）', 'bpchar', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_job_details', 5, 'job_class_name', 'character varying', NULL, '0', 250, NULL, 0, NULL, 0, 0, NULL, 'varchar', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_operator', 14, 'oprrest', 'regproc', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'regproc', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_triggers', 8, 'prev_fire_time', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'transforms', 7, 'group_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_trigger', 10, 'tgconstrindid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic', 14, 'staop3', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 63, 'result_cast_char_set_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 63);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_publication_rel', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_constraint', 3, 'connamespace', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'collation_character_set_applicability', 4, 'character_set_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic', 3, 'stainherit', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_activity', 13, 'query_start', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_paused_trigger_grps', 1, 'sched_name', 'character varying', NULL, '1', 120, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'p', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'column_column_usage', 1, 'table_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_constraint', 14, 'confdeltype', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'view_routine_usage', 5, 'specific_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_database_conflicts', 4, 'confl_lock', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_available_extensions', 3, 'installed_version', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'column_udt_usage', 7, 'column_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', '_pg_foreign_data_wrappers', 4, 'foreign_data_wrapper_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_user', 4, 'usesuper', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_wal_receiver', 12, 'slot_name', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 7, 'routine_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'element_types', 10, 'character_set_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_operator', 3, 'oprnamespace', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_type', 27, 'typndims', 'integer', NULL, '0', 32, 0, 0, NULL, 0, 0, NULL, 'int4', NULL, 27);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_sys_tables', 8, 'n_tup_ins', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'sql_features', 7, 'comments', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_sequences', 1, 'schemaname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_aggregate', 4, 'aggtransfn', 'regproc', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'regproc', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 43, 'sql_data_access', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 43);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_jcrw', 5, 'targetname', 'character varying', NULL, '0', 50, NULL, 1, NULL, 0, 0, NULL, 'varchar', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'sql_sizing', 4, 'comments', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_analyze', 8, 'ext_stats_total', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'user_defined_types', 27, 'interval_precision', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 27);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_oper_log', 4, 'method', 'character varying', NULL, '0', 100, NULL, 1, '''''::character varying', 0, 0, '方法名称', 'varchar', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_proc', 4, 'proowner', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_policy', 2, 'polname', 'name', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table_column', 4, 'column_comment', 'character varying', NULL, '0', 500, NULL, 1, NULL, 0, 0, '列描述', 'varchar', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_index', 20, 'indpred', 'pg_node_tree', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'pg_node_tree', NULL, 20);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_type', 20, 'typmodout', 'regproc', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'regproc', NULL, 20);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_replication_origin', 2, 'roname', 'text', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'text', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_event_trigger', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'tables', 1, 'table_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_aggregate', 16, 'aggsortop', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 16);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_user_tables', 11, 'n_tup_hot_upd', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'view_column_usage', 6, 'table_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'table_privileges', 1, 'grantor', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 35, 'maximum_cardinality', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 35);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_cluster', 10, 'heap_blks_total', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_attrdef', 4, 'adbin', 'pg_node_tree', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'pg_node_tree', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'referential_constraints', 2, 'constraint_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_ts_parser', 3, 'prsnamespace', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_oper_log', 16, 'oper_time', 'timestamp without time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, '操作时间', 'timestamp', NULL, 16);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_cursors', 6, 'creation_time', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table_column', 16, 'html_type', 'character varying', NULL, '0', 200, NULL, 1, NULL, 0, 0, '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）', 'varchar', NULL, 16);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'sql_parts', 2, 'feature_name', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'data_type_privileges', 3, 'object_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_job_log', 4, 'invoke_target', 'character varying', NULL, '0', 500, NULL, 0, NULL, 0, 0, '调用目标字符串', 'varchar', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_proc', 16, 'proparallel', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 16);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 42, 'is_generated', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 42);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_authid', 9, 'rolbypassrls', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_wal_receiver', 11, 'latest_end_time', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'usage_privileges', 5, 'object_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_role_menu', 1, 'role_id', 'bigint', NULL, '1', 64, 0, 0, NULL, 0, 0, '角色ID', 'int8', 'p', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_operator', 4, 'oprowner', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_constraint', 16, 'conislocal', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 16);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', '_pg_foreign_servers', 7, 'foreign_server_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_database_conflicts', 3, 'confl_tablespace', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_config', 10, 'remark', 'character varying', NULL, '0', 500, NULL, 1, '''''::character varying', 0, 0, '备注', 'varchar', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_available_extensions', 4, 'comment', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', '_pg_foreign_data_wrappers', 3, 'fdwoptions', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_text', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_user', 3, 'usecreatedb', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_sys_indexes', 5, 'indexrelname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_dict_data', 1, 'dict_code', 'bigint', NULL, '1', 64, 0, 0, 'nextval(''adp.sys_dict_data_dict_code_seq''::regclass)', 1, 1, '字典编码', 'int8', 'p', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table', 18, 'update_by', 'character varying', NULL, '0', 64, NULL, 1, '''''::character varying', 0, 0, '更新者', 'varchar', NULL, 18);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_type', 12, 'typrelid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic', 4, 'stanullfrac', 'real', NULL, '0', 24, NULL, 0, NULL, 0, 0, NULL, 'float4', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_index', 12, 'indisready', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_replication_slots', 8, 'active_pid', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'int4', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_constraint', 4, 'contype', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'collation_character_set_applicability', 3, 'collation_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table', 2, 'table_name', 'character varying', NULL, '0', 200, NULL, 1, '''''::character varying', 0, 0, '表名称', 'varchar', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_archiver', 6, 'last_failed_time', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_amproc', 2, 'amprocfamily', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_settings', 13, 'boot_val', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_db_role_setting', 2, 'setrole', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_dept', 12, 'create_time', 'timestamp without time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, '创建时间', 'timestamp', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_hba_file_rules', 6, 'netmask', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'attributes', 24, 'attribute_udt_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 24);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'foreign_data_wrappers', 1, 'foreign_data_wrapper_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_default_acl', 2, 'defaclrole', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'user_defined_types', 11, 'ordering_routine_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_database', 13, 'dattablespace', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic', 16, 'staop5', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 16);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_description', 3, 'objsubid', 'integer', NULL, '0', 32, 0, 0, NULL, 0, 0, NULL, 'int4', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_aggregate', 14, 'aggfinalmodify', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_post', 2, 'post_code', 'character varying', NULL, '0', 64, NULL, 0, NULL, 0, 0, '岗位编码', 'varchar', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'data_type_privileges', 4, 'object_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_fired_triggers', 7, 'sched_time', 'bigint', NULL, '0', 64, 0, 0, NULL, 0, 0, NULL, 'int8', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_job_log', 3, 'job_group', 'character varying', NULL, '0', 64, NULL, 0, NULL, 0, 0, '任务组名', 'varchar', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_attrdef', 3, 'adnum', 'smallint', NULL, '0', 16, 0, 0, NULL, 0, 0, NULL, 'int2', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_ts_parser', 4, 'prsstart', 'regproc', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'regproc', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_activity', 19, 'backend_xmin', 'xid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'xid', NULL, 19);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_proc', 14, 'proretset', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_index', 11, 'indcheckxmin', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_type', 11, 'typdelim', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_user_tables', 18, 'last_analyze', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 18);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table_column', 14, 'is_query', 'character', NULL, '0', 1, NULL, 1, NULL, 0, 0, '是否查询字段（1是）', 'bpchar', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_policies', 6, 'cmd', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_oper_log', 14, 'status', 'character', NULL, '0', 1, NULL, 1, '''0''::bpchar', 0, 0, '操作状态（0正常 1异常）', 'bpchar', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 54, 'as_locator', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 54);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_auth_members', 1, 'roleid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_user_mappings', 2, 'srvid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_sequences', 9, 'cycle', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_database', 10, 'tup_inserted', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_dept', 11, 'create_by', 'character varying', NULL, '0', 64, NULL, 1, '''''::character varying', 0, 0, '创建者', 'varchar', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table_column', 3, 'column_name', 'character varying', NULL, '0', 200, NULL, 1, NULL, 0, 0, '列名称', 'varchar', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_proc', 3, 'pronamespace', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_type', 31, 'typacl', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_aclitem', NULL, 31);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_authid', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'view_self_table', 2, 'tableowner', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_udt_grants', 6, 'privilege_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_foreign_server', 6, 'srvversion', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_user_tables', 2, 'schemaname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_shmem_allocations', 1, 'name', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'sql_sizing', 3, 'supported_value', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_sys_tables', 8, 'toast_blks_read', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'check_constraints', 1, 'constraint_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_oper_log', 3, 'business_type', 'integer', NULL, '0', 32, 0, 1, '0', 0, 0, '业务类型（0其它 1新增 2修改 3删除）', 'int4', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 36, 'dtd_identifier', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 36);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_all_tables', 8, 'n_tup_ins', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 23, 'numeric_precision', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 23);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'collations', 1, 'collation_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'tables', 9, 'user_defined_type_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_aggregate', 3, 'aggnumdirectargs', 'smallint', NULL, '0', 16, 0, 0, NULL, 0, 0, NULL, 'int2', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'user_defined_types', 12, 'reference_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_ts_template', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_seclabels', 5, 'objnamespace', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 53, 'to_sql_specific_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 53);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stats', 13, 'most_common_elem_freqs', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_float4', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_subscription', 8, 'latest_end_lsn', 'pg_lsn', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'pg_lsn', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_type', 22, 'typalign', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 22);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 19, 'character_set_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 19);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_user_mappings', 4, 'umuser', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'parameters', 17, 'collation_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 17);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_user_online', 6, 'browser', 'character varying', NULL, '0', 50, NULL, 1, '''''::character varying', 0, 0, '浏览器类型', 'varchar', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 10, 'module_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_create_index', 8, 'lockers_total', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'element_types', 7, 'character_maximum_length', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_user_tables', 16, 'last_vacuum', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 16);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_menu', 5, 'url', 'character varying', NULL, '0', 200, NULL, 1, '''''::character varying', 0, 0, '请求地址', 'varchar', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'key_column_usage', 9, 'position_in_unique_constraint', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_conversion', 6, 'contoencoding', 'integer', NULL, '0', 32, 0, 0, NULL, 0, 0, NULL, 'int4', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_simple_triggers', 1, 'sched_name', 'character varying', NULL, '0', 120, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'f', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_simple_triggers', 1, 'sched_name', 'character varying', NULL, '1', 120, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'p', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_ts_dict', 6, 'dictinitoption', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_ts_parser', 2, 'prsname', 'name', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_dict_data', 12, 'update_by', 'character varying', NULL, '0', 64, NULL, 1, '''''::character varying', 0, 0, '更新者', 'varchar', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'referential_constraints', 3, 'constraint_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'views', 8, 'is_trigger_updatable', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_post', 4, 'post_sort', 'integer', NULL, '0', 32, 0, 0, NULL, 0, 0, '显示顺序', 'int4', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_type', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'sql_parts', 3, 'is_supported', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'data_type_privileges', 2, 'object_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_index', 1, 'indexrelid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_user_functions', 6, 'self_time', 'double precision', NULL, '0', 53, NULL, 1, NULL, 0, 0, NULL, 'float8', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_user_tables', 8, 'toast_blks_read', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_matviews', 6, 'ispopulated', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_trigger', 7, 'tgenabled', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_depend', 5, 'refobjid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_wal_receiver', 9, 'last_msg_receipt_time', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_authid', 11, 'rolpassword', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx', 19, 'cameraincrease', 'character varying', NULL, '0', 20, NULL, 1, NULL, 0, 0, '相机增益', 'varchar', NULL, 19);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_dept', 1, 'dept_id', 'bigint', NULL, '1', 64, 0, 0, 'nextval(''adp.sys_dept_dept_id_seq''::regclass)', 1, 1, '部门id', 'int8', 'p', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_sys_indexes', 1, 'relid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_user_tables', 4, 'seq_scan', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_user', 19, 'update_by', 'character varying', NULL, '0', 64, NULL, 1, '''''::character varying', 0, 0, '更新者', 'varchar', NULL, 19);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_ssl', 8, 'client_serial', 'numeric', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'numeric', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_replication', 17, 'replay_lag', 'interval', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'interval', NULL, 17);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_language', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_all_tables', 10, 'tidx_blks_read', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_user_tables', 9, 'n_tup_upd', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'view_self_table', 4, 'table_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_policy', 3, 'polrelid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_usage_grants', 6, 'object_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_constraint', 18, 'connoinherit', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 18);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_roles', 13, 'oid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_opclass', 6, 'opcfamily', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic', 2, 'staattnum', 'smallint', NULL, '0', 16, 0, 0, NULL, 0, 0, NULL, 'int2', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_user_indexes', 5, 'indexrelname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'attributes', 30, 'dtd_identifier', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 30);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'attributes', 28, 'scope_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 28);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_cluster', 7, 'cluster_index_relid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_available_extensions', 2, 'default_version', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_locks', 14, 'granted', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_routine_grants', 8, 'routine_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'character_sets', 1, 'character_set_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'view_self_table_columns', 5, 'column_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_operator', 2, 'oprname', 'name', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_dict_data', 11, 'create_time', 'timestamp without time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, '创建时间', 'timestamp', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domains', 17, 'interval_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 17);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table', 16, 'create_by', 'character varying', NULL, '0', 64, NULL, 1, '''''::character varying', 0, 0, '创建者', 'varchar', NULL, 16);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_shadow', 7, 'passwd', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_authid', 12, 'rolvaliduntil', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 33, 'scope_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 33);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_locks', 3, 'relation', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_subscription', 8, 'subsynccommit', 'text', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'text', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'attributes', 8, 'data_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_default_acl', 4, 'defaclobjtype', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'user_defined_types', 22, 'numeric_precision', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 22);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_class', 5, 'reloftype', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_amproc', 4, 'amprocrighttype', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_all_tables', 13, 'n_dead_tup', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'user_defined_types', 1, 'user_defined_type_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table', 4, 'sub_table_name', 'character varying', NULL, '0', 64, NULL, 1, 'NULL::character varying', 0, 0, '关联子表的表名', 'varchar', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'sequences', 8, 'start_value', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_simprop_triggers', 13, 'bool_prop_1', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic', 18, 'stacoll2', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 18);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_constraint', 2, 'conname', 'name', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_policy', 4, 'polcmd', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_available_extension_versions', 8, 'requires', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_name', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_type', 9, 'typispreferred', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table_column', 2, 'table_id', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, '归属表编号', 'int8', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_index', 9, 'indisclustered', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_proc', 2, 'proname', 'name', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 40, 'identity_minimum', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 40);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_amop', 6, 'amoppurpose', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'view_self_table', 3, 'table_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_sequences', 11, 'last_value', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_user_tables', 3, 'relname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'key_column_usage', 1, 'constraint_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 82, 'result_cast_dtd_identifier', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 82);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'sql_sizing', 2, 'sizing_name', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_oper_log', 2, 'title', 'character varying', NULL, '0', 50, NULL, 1, '''''::character varying', 0, 0, '模块标题', 'varchar', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_extension', 8, 'extcondition', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_text', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_aggregate', 2, 'aggkind', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'attributes', 29, 'maximum_cardinality', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 29);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_all_indexes', 7, 'idx_tup_read', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_all_tables', 19, 'last_autoanalyze', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 19);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_language', 9, 'lanacl', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_aclitem', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_user_tables', 1, 'relid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'tables', 11, 'is_typed', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_post', 3, 'post_name', 'character varying', NULL, '0', 100, NULL, 0, NULL, 0, 0, '岗位名称', 'varchar', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_role_dept', 2, 'dept_id', 'bigint', NULL, '1', 64, 0, 0, NULL, 0, 0, '岗位ID', 'int8', 'p', 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_job_log', 2, 'job_name', 'character varying', NULL, '0', 64, NULL, 0, NULL, 0, 0, '任务名称', 'varchar', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'sql_parts', 4, 'is_verified_by', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_attrdef', 2, 'adrelid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_aggregate', 18, 'aggtransspace', 'integer', NULL, '0', 32, 0, 0, NULL, 0, 0, NULL, 'int4', NULL, 18);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'referential_constraints', 4, 'unique_constraint_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routine_privileges', 8, 'routine_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'check_constraint_routine_usage', 6, 'specific_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_wal_receiver', 1, 'pid', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'int4', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_config', 7, 'create_time', 'timestamp without time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, '创建时间', 'timestamp', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domains', 26, 'maximum_cardinality', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 26);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_dept', 9, 'status', 'character', NULL, '0', 1, NULL, 1, '''0''::bpchar', 0, 0, '部门状态:0正常,1停用', 'bpchar', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_proc', 18, 'pronargdefaults', 'smallint', NULL, '0', 16, 0, 0, NULL, 0, 0, NULL, 'int2', NULL, 18);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_tqxx', 8, 'update_time', 'date', NULL, '0', -1, NULL, 1, NULL, 0, 0, '更新时间', 'date', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domains', 25, 'scope_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 25);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_user_tables', 14, 'n_mod_since_analyze', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table_column', 18, 'sort', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, '排序', 'int4', NULL, 18);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_user_mappings', 3, 'srvname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', '_pg_user_mappings', 7, 'srvowner', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'collation_character_set_applicability', 2, 'collation_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_table_grants', 1, 'grantor', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table', 3, 'table_comment', 'character varying', NULL, '0', 500, NULL, 1, '''''::character varying', 0, 0, '表描述', 'varchar', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx', 13, 'isimaging', 'character varying', NULL, '0', 10, NULL, 1, NULL, 0, 0, '是否需要成像', 'varchar', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_amproc', 3, 'amproclefttype', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'element_types', 23, 'udt_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 23);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_db_role_setting', 3, 'setconfig', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_text', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'schemata', 7, 'sql_path', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic_ext', 8, 'stxkind', 'ARRAY', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, '_char', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_default_acl', 3, 'defaclnamespace', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_user_indexes', 8, 'idx_tup_fetch', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_database', 7, 'blks_hit', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_locks', 4, 'page', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'int4', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_user', 13, 'del_flag', 'character', NULL, '0', 1, NULL, 1, '''''::bpchar', 0, 0, '拒绝登录描述', 'bpchar', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_description', 2, 'classoid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'parameters', 25, 'udt_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 25);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_scheduler_state', 1, 'sched_name', 'character varying', NULL, '1', 120, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'p', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'constraint_column_usage', 5, 'constraint_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 13, 'numeric_scale', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'table_constraints', 6, 'table_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'tables', 12, 'commit_action', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_timezone_abbrevs', 1, 'abbrev', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'parameters', 26, 'udt_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 26);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_database_conflicts', 2, 'datname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_user', 2, 'usesysid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', '_pg_foreign_data_wrappers', 2, 'fdwowner', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'triggers', 5, 'event_object_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'user_defined_types', 9, 'ordering_routine_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domain_constraints', 5, 'domain_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table', 14, 'gen_path', 'character varying', NULL, '0', 200, NULL, 1, '''/''::character varying', 0, 0, '生成路径（不填默认项目路径）', 'varchar', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_attribute', 5, 'attlen', 'smallint', NULL, '0', 16, 0, 0, NULL, 0, 0, NULL, 'int2', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_fired_triggers', 10, 'job_name', 'character varying', NULL, '0', 200, NULL, 1, NULL, 0, 0, NULL, 'varchar', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stats', 14, 'elem_count_histogram', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_float4', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic', 19, 'stacoll3', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 19);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_tablespace', 4, 'spcacl', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_aclitem', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_tables', 2, 'tablename', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'column_privileges', 6, 'column_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_largeobject_metadata', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'element_types', 29, 'dtd_identifier', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 29);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_attribute', 11, 'attstorage', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 32, 'scope_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 32);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_user_mapping', 4, 'umoptions', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_text', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'view_table_usage', 2, 'view_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 24, 'numeric_precision_radix', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 24);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'view_routine_usage', 1, 'table_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_logininfor', 2, 'login_name', 'character varying', NULL, '0', 50, NULL, 1, '''''::character varying', 0, 0, '登录账号', 'varchar', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'triggers', 11, 'action_orientation', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'column_domain_usage', 6, 'table_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'column_column_usage', 5, 'dependent_column', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'foreign_servers', 4, 'foreign_data_wrapper_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_database', 8, 'tup_returned', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_oper_log', 13, 'json_result', 'character varying', NULL, '0', 2000, NULL, 1, '''''::character varying', 0, 0, '返回参数', 'varchar', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_column_grants', 3, 'table_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table_column', 13, 'is_list', 'character', NULL, '0', 1, NULL, 1, NULL, 0, 0, '是否列表字段（1是）', 'bpchar', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_user_indexes', 7, 'idx_tup_read', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_sys_tables', 10, 'tidx_blks_read', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_proc', 13, 'proisstrict', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic_ext', 7, 'stxkeys', 'ARRAY', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'int2vector', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_all_tables', 10, 'n_tup_del', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_job_details', 1, 'sched_name', 'character varying', NULL, '1', 120, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'p', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_class', 20, 'relhasrules', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 20);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stats', 3, 'attname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_notice', 6, 'create_by', 'character varying', NULL, '0', 64, NULL, 1, '''''::character varying', 0, 0, '创建者', 'varchar', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_vacuum', 3, 'datname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 39, 'identity_maximum', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 39);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_constraint', 19, 'conkey', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_int2', NULL, 19);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_cron_triggers', 3, 'trigger_group', 'character varying', NULL, '0', 200, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'f', 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_cron_triggers', 3, 'trigger_group', 'character varying', NULL, '1', 200, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'p', 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_shdepend', 5, 'refclassid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_aggregate', 13, 'aggmfinalextra', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_tqxx', 7, 'update_by', 'character varying', NULL, '0', 64, NULL, 1, NULL, 0, 0, '更新者', 'varchar', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_mbq', 4, 'rsh_targrtnum', 'character varying', NULL, '0', 10, NULL, 1, NULL, 0, 0, NULL, 'varchar', 'f', 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 2, 'table_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_database', 14, 'datacl', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_aclitem', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_attribute', 12, 'attalign', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'table_privileges', 5, 'table_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_collation', 3, 'collnamespace', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_user', 18, 'create_time', 'timestamp without time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, '创建时间', 'timestamp', NULL, 18);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routine_privileges', 7, 'routine_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_config', 8, 'update_by', 'character varying', NULL, '0', 64, NULL, 1, '''''::character varying', 0, 0, '更新者', 'varchar', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_activity', 4, 'leader_pid', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'int4', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_event_trigger', 5, 'evtfoid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx', 18, 'photoframe', 'character varying', NULL, '0', 50, NULL, 1, NULL, 0, 0, '拍摄帧数', 'varchar', NULL, 18);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'tables', 5, 'self_referencing_column_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'attributes', 23, 'attribute_udt_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 23);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_settings', 14, 'reset_val', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'triggers', 12, 'action_timing', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_views', 1, 'schemaname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_all_indexes', 8, 'idx_tup_fetch', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_settings', 3, 'unit', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_replication_slots', 10, 'catalog_xmin', 'xid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'xid', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_jcrw', 1, 'reqnum', 'character varying', NULL, '1', 10, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'p', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_indexes', 3, 'indexname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx', 2, 'reqname', 'character varying', NULL, '0', 50, NULL, 1, NULL, 0, 0, '需求名称', 'varchar', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_foreign_data_wrapper', 7, 'fdwoptions', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_text', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_class', 27, 'relispartition', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 27);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_extension', 7, 'extconfig', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_oid', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 52, 'to_sql_specific_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 52);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_jcrw', 22, 'equipment', 'character varying', NULL, '0', 50, NULL, 1, NULL, 0, 0, NULL, 'varchar', NULL, 22);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_database', 3, 'datdba', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_activity', 16, 'wait_event', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 16);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_seclabel', 4, 'provider', 'text', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'text', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 34, 'is_self_referencing', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 34);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_user', 2, 'dept_id', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, '部门ID', 'int8', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_available_extension_versions', 7, 'schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'foreign_tables', 2, 'foreign_table_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_transform', 3, 'trflang', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_sequences', 5, 'start_value', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 18, 'character_set_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 18);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_cron_triggers', 4, 'cron_expression', 'character varying', NULL, '0', 120, NULL, 0, NULL, 0, 0, NULL, 'varchar', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_sys_tables', 10, 'n_tup_del', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'sequences', 7, 'numeric_scale', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_class', 11, 'reltuples', 'real', NULL, '0', 24, NULL, 0, NULL, 0, 0, NULL, 'float4', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'parameters', 15, 'collation_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 15);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_vacuum', 4, 'relid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'foreign_data_wrappers', 5, 'foreign_data_wrapper_language', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domains', 21, 'udt_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 21);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stats', 4, 'inherited', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_slru', 2, 'blks_zeroed', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_analyze', 10, 'child_tables_total', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_subscription', 7, 'subslotname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'attributes', 7, 'is_nullable', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_shadow', 8, 'valuntil', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_column_grants', 4, 'table_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'foreign_data_wrapper_options', 1, 'foreign_data_wrapper_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'foreign_servers', 3, 'foreign_data_wrapper_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_blob_triggers', 2, 'trigger_name', 'character varying', NULL, '0', 200, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'f', 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_blob_triggers', 2, 'trigger_name', 'character varying', NULL, '1', 200, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'p', 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'view_self_table_columns', 11, 'cannull', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'int4', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_publication', 6, 'pubupdate', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_menu', 12, 'create_time', 'timestamp without time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, '创建时间', 'timestamp', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', '_pg_foreign_tables', 2, 'foreign_table_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_user_mapping', 3, 'umserver', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_job_details', 9, 'requests_recovery', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_routine_grants', 7, 'routine_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_dict_data', 5, 'dict_type', 'character varying', NULL, '0', 100, NULL, 1, '''''::character varying', 0, 0, '字典类型', 'varchar', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_class', 31, 'relacl', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_aclitem', NULL, 31);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_replication', 15, 'write_lag', 'interval', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'interval', NULL, 15);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_sys_indexes', 1, 'relid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_cluster', 8, 'heap_tuples_scanned', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_attribute', 20, 'attinhcount', 'integer', NULL, '0', 32, 0, 0, NULL, 0, 0, NULL, 'int4', NULL, 20);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'usage_privileges', 1, 'grantor', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_tablespace', 3, 'spcowner', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_seclabels', 1, 'objoid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table_column', 19, 'create_by', 'character varying', NULL, '0', 64, NULL, 1, '''''::character varying', 0, 0, '创建者', 'varchar', NULL, 19);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_proc', 19, 'prorettype', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 19);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_transform', 4, 'trffromsql', 'regproc', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'regproc', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_seclabel', 3, 'objsubid', 'integer', NULL, '0', 32, 0, 0, NULL, 0, 0, NULL, 'int4', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_class', 12, 'relallvisible', 'integer', NULL, '0', 32, 0, 0, NULL, 0, 0, NULL, 'int4', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_ts_template', 5, 'tmpllexize', 'regproc', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'regproc', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_triggers', 10, 'trigger_state', 'character varying', NULL, '0', 16, NULL, 0, NULL, 0, 0, NULL, 'varchar', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_database', 4, 'encoding', 'integer', NULL, '0', 32, 0, 0, NULL, 0, 0, NULL, 'int4', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_ssl', 7, 'client_dn', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_enum', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_trigger', 8, 'tgisinternal', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'element_types', 28, 'maximum_cardinality', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 28);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_constraint', 13, 'confupdtype', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'parameters', 21, 'datetime_precision', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 21);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_indexes', 4, 'tablespace', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_aggregate', 19, 'aggmtranstype', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 19);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_simprop_triggers', 2, 'trigger_name', 'character varying', NULL, '0', 200, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'f', 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_simprop_triggers', 2, 'trigger_name', 'character varying', NULL, '1', 200, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'p', 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domains', 15, 'numeric_scale', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 15);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_activity', 14, 'state_change', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_user_tables', 7, 'idx_blks_hit', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_authid', 5, 'rolcreaterole', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'applicable_roles', 1, 'grantee', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_settings', 4, 'category', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_all_tables', 2, 'schemaname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_all_tables', 18, 'last_analyze', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 18);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_menu', 11, 'create_by', 'character varying', NULL, '0', 64, NULL, 1, '''''::character varying', 0, 0, '创建者', 'varchar', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_roles', 2, 'rolsuper', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic', 13, 'staop2', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_ts_config', 2, 'cfgname', 'name', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_activity', 3, 'pid', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'int4', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_all_indexes', 7, 'idx_blks_hit', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'triggered_update_columns', 7, 'event_object_column', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'views', 7, 'is_insertable_into', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'view_self_table_columns', 12, 'defaultval', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_operator', 13, 'oprcode', 'regproc', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'regproc', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_jcrw', 9, 'priority', 'character varying', NULL, '0', 5, NULL, 1, NULL, 0, 0, NULL, 'varchar', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'element_types', 8, 'character_octet_length', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_collation', 4, 'collowner', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_create_index', 7, 'phase', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_partitioned_table', 6, 'partclass', 'ARRAY', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oidvector', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_settings', 16, 'sourceline', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'int4', NULL, 16);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'udt_privileges', 2, 'grantee', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_mbq', 3, 'reqnum', 'character varying', NULL, '0', 20, NULL, 1, NULL, 0, 0, NULL, 'varchar', 'f', 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_mbxx', 2, 'targrtnum', 'character varying', NULL, '1', 10, NULL, 0, NULL, 0, 0, '目标编号', 'varchar', 'p', 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 42, 'is_deterministic', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 42);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_triggers', 16, 'job_data', 'bytea', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bytea', NULL, 16);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_replication_slots', 14, 'safe_wal_size', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 59, 'result_cast_from_data_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 59);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_tables', 7, 'hastriggers', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_gssapi', 1, 'pid', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'int4', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 35, 'is_identity', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 35);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_basebackup', 2, 'phase', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_all_tables', 23, 'autoanalyze_count', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 23);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_archiver', 1, 'archived_count', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_logininfor', 7, 'status', 'character', NULL, '0', 1, NULL, 1, '''0''::bpchar', 0, 0, '登录状态 0成功 1失败', 'bpchar', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'user_defined_types', 15, 'character_octet_length', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 15);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_hba_file_rules', 1, 'line_number', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'int4', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_collation', 10, 'collversion', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_user', 8, 'valuntil', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_publication_tables', 2, 'schemaname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_triggers', 4, 'job_name', 'character varying', NULL, '0', 200, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'f', 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_database', 10, 'datlastsysoid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_dict_data', 6, 'css_class', 'character varying', NULL, '0', 100, NULL, 1, NULL, 0, 0, '样式属性（其他样式扩展）', 'varchar', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_user_indexes', 2, 'indexrelid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_inherits', 3, 'inhseqno', 'integer', NULL, '0', 32, 0, 0, NULL, 0, 0, NULL, 'int4', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic_ext', 2, 'stxrelid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_publication', 5, 'pubinsert', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_all_sequences', 2, 'schemaname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_type', 21, 'typanalyze', 'regproc', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'regproc', NULL, 21);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic_ext_data', 1, 'stxoid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_settings', 10, 'min_val', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_group', 3, 'grolist', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_oid', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_file_settings', 3, 'seqno', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'int4', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_replication_slots', 3, 'slot_type', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 43, 'generation_expression', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 43);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_user_functions', 4, 'calls', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_replication_origin_status', 3, 'remote_lsn', 'pg_lsn', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'pg_lsn', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic', 29, 'stavalues3', 'anyarray', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'anyarray', NULL, 29);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routine_privileges', 2, 'grantee', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'element_types', 19, 'interval_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 19);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'user_defined_types', 21, 'collation_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 21);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_tqxx', 2, 'targrtnum', 'character varying', NULL, '0', 10, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'f', 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_tqxx', 2, 'targrtnum', 'character varying', NULL, '1', 10, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'p', 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_sys_tables', 16, 'last_vacuum', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 16);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 7, 'is_nullable', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_authid', 6, 'rolcreatedb', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_udt_grants', 1, 'grantor', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_job_log', 8, 'create_time', 'timestamp without time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, '创建时间', 'timestamp', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'foreign_table_options', 5, 'option_value', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_proc', 28, 'proconfig', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_text', NULL, 28);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', '_pg_foreign_table_columns', 2, 'relname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_foreign_server', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_policies', 1, 'schemaname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_user_post', 2, 'post_id', 'bigint', NULL, '1', 64, 0, 0, NULL, 0, 0, '岗位ID', 'int8', 'p', 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_trigger', 19, 'tgnewtable', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 19);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_all_tables', 3, 'relname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_jcrw', 26, 'update_time', 'date', NULL, '0', -1, NULL, 1, NULL, 0, 0, '更新时间', 'date', NULL, 26);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 50, 'security_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 50);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx', 7, 'reqpriority', 'character varying', NULL, '0', 5, NULL, 1, NULL, 0, 0, '需求优先级', 'varchar', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_foreign_data_wrapper', 2, 'fdwname', 'name', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stats', 10, 'histogram_bounds', 'anyarray', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'anyarray', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_extension', 2, 'extname', 'name', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_aggregate', 8, 'aggdeserialfn', 'regproc', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'regproc', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_vacuum', 10, 'max_dead_tuples', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_sys_tables', 4, 'seq_scan', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_subscription', 3, 'pid', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'int4', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_jcrw', 25, 'create_by', 'character varying', NULL, '0', 64, NULL, 1, NULL, 0, 0, '创建者', 'varchar', NULL, 25);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_available_extension_versions', 2, 'version', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 69, 'result_cast_numeric_precision', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 69);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table_column', 8, 'is_pk', 'character', NULL, '0', 1, NULL, 1, NULL, 0, 0, '是否主键（1是）', 'bpchar', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_user_online', 11, 'expire_time', 'integer', NULL, '0', 32, 0, 1, '0', 0, 0, '超时时间，单位为分钟', 'int4', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_partitioned_table', 5, 'partattrs', 'ARRAY', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'int2vector', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_proc', 8, 'provariadic', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_type', 15, 'typinput', 'regproc', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'regproc', NULL, 15);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_database', 13, 'conflicts', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_oper_log', 8, 'dept_name', 'character varying', NULL, '0', 50, NULL, 1, '''''::character varying', 0, 0, '部门名称', 'varchar', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_index', 15, 'indkey', 'ARRAY', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'int2vector', NULL, 15);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_analyze', 4, 'relid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 51, 'to_sql_specific_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 51);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_sys_tables', 3, 'relname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_user', 7, 'phonenumber', 'character varying', NULL, '0', 20, NULL, 1, '''''::character varying', 0, 0, '手机号码', 'varchar', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_replication_origin_status', 4, 'local_lsn', 'pg_lsn', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'pg_lsn', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_hba_file_rules', 9, 'error', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_slru', 7, 'flushes', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_proc', 29, 'proacl', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_aclitem', NULL, 29);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_user_functions', 3, 'funcname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_jcrw', 17, 'photoframe', 'character varying', NULL, '0', 50, NULL, 1, NULL, 0, 0, NULL, 'varchar', NULL, 17);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_trigger', 13, 'tginitdeferred', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_user_role', 2, 'role_id', 'bigint', NULL, '1', 64, 0, 0, NULL, 0, 0, '角色ID', 'int8', 'p', 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'sequences', 2, 'sequence_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_constraint', 8, 'conrelid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 23, 'domain_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 23);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_replication_slots', 4, 'datoid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_file_settings', 4, 'name', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'column_privileges', 5, 'table_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 36, 'identity_generation', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 36);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic', 28, 'stavalues2', 'anyarray', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'anyarray', NULL, 28);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_database', 19, 'blk_read_time', 'double precision', NULL, '0', 53, NULL, 1, NULL, 0, 0, NULL, 'float8', NULL, 19);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'column_domain_usage', 5, 'table_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_subscription', 2, 'subdbid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'attributes', 2, 'udt_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_triggers', 3, 'trigger_group', 'character varying', NULL, '1', 200, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'p', 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic', 30, 'stavalues4', 'anyarray', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'anyarray', NULL, 30);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx', 23, 'update_by', 'character varying', NULL, '0', 64, NULL, 1, NULL, 0, 0, '更新者', 'varchar', NULL, 23);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', '_pg_foreign_tables', 7, 'authorization_identifier', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_routine_grants', 2, 'grantee', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'attributes', 18, 'numeric_precision_radix', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 18);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_operator', 8, 'oprleft', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_triggers', 14, 'calendar_name', 'character varying', NULL, '0', 200, NULL, 1, NULL, 0, 0, NULL, 'varchar', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'element_types', 13, 'collation_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic', 8, 'stakind2', 'smallint', NULL, '0', 16, 0, 0, NULL, 0, 0, NULL, 'int2', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_shdepend', 6, 'refobjid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_notice', 5, 'status', 'character', NULL, '0', 1, NULL, 1, '''0''::bpchar', 0, 0, '公告状态（0正常 1关闭）', 'bpchar', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_activity', 10, 'client_port', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'int4', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_sys_tables', 4, 'heap_blks_read', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_analyze', 3, 'datname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'table_privileges', 6, 'privilege_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_ssl', 2, 'ssl', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'view_column_usage', 1, 'view_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_sys_sequences', 2, 'schemaname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_cursors', 1, 'name', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_wal_receiver', 15, 'conninfo', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 15);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_subscription', 4, 'relid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_user_tables', 2, 'schemaname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_sys_tables', 3, 'relname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_all_tables', 7, 'idx_tup_fetch', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_event_trigger', 6, 'evtenabled', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'tables', 6, 'reference_generation', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_simprop_triggers', 7, 'int_prop_1', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'int4', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_all_tables', 4, 'seq_scan', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_roles', 7, 'rolreplication', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'administrable_role_authorizations', 1, 'grantee', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_ts_parser', 8, 'prslextype', 'regproc', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'regproc', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_sys_tables', 14, 'n_mod_since_analyze', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_all_indexes', 2, 'indexrelid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'triggered_update_columns', 2, 'trigger_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'views', 2, 'table_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_prepared_xacts', 5, 'database', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_sequences', 6, 'min_value', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_mbxx', 7, 'create_by', 'character varying', NULL, '0', 64, NULL, 1, NULL, 0, 0, '创建者', 'varchar', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'udt_privileges', 7, 'is_grantable', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_create_index', 2, 'datid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'element_types', 2, 'object_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_timezone_names', 4, 'is_dst', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_jcrw', 15, 'exposuretime', 'character varying', NULL, '0', 10, NULL, 1, NULL, 0, 0, NULL, 'varchar', NULL, 15);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_amop', 5, 'amopstrategy', 'smallint', NULL, '0', 16, 0, 0, NULL, 0, 0, NULL, 'int2', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_mbxx', 8, 'update_time', 'date', NULL, '0', -1, NULL, 1, NULL, 0, 0, '更新时间', 'date', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_job', 1, 'job_id', 'bigint', NULL, '1', 64, 0, 0, 'nextval(''adp.sys_job_job_id_seq''::regclass)', 1, 1, '任务主键', 'int8', 'p', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_fired_triggers', 4, 'trigger_group', 'character varying', NULL, '0', 200, NULL, 0, NULL, 0, 0, NULL, 'varchar', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_type', 26, 'typtypmod', 'integer', NULL, '0', 32, 0, 0, NULL, 0, 0, NULL, 'int4', NULL, 26);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_roles', 8, 'rolconnlimit', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'int4', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_trigger', 18, 'tgoldtable', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 18);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_type', 25, 'typbasetype', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 25);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_ts_parser', 7, 'prsheadline', 'regproc', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'regproc', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_opfamily', 3, 'opfname', 'name', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_trigger', 2, 'tgrelid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_role', 9, 'create_time', 'timestamp without time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, '创建时间', 'timestamp', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domains', 9, 'character_set_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_simprop_triggers', 8, 'int_prop_2', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'int4', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_range', 2, 'rngsubtype', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_all_tables', 8, 'n_tup_ins', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_calendars', 1, 'sched_name', 'character varying', NULL, '1', 120, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'p', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'foreign_server_options', 1, 'foreign_server_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'sql_features', 3, 'sub_feature_id', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_dict_type', 1, 'dict_id', 'bigint', NULL, '1', 64, 0, 0, 'nextval(''adp.sys_dict_type_dict_id_seq''::regclass)', 1, 1, '字典主键', 'int8', 'p', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'attributes', 13, 'character_set_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_locks', 10, 'objsubid', 'smallint', NULL, '0', 16, 0, 1, NULL, 0, 0, NULL, 'int2', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domain_udt_usage', 2, 'udt_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_cast', 3, 'casttarget', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'element_types', 18, 'datetime_precision', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 18);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_rewrite', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'check_constraint_routine_usage', 5, 'specific_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'column_options', 1, 'table_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 29, 'scope_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 29);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'sql_implementation_info', 5, 'comments', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_cluster', 2, 'datid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic', 7, 'stakind1', 'smallint', NULL, '0', 16, 0, 0, NULL, 0, 0, NULL, 'int2', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_sys_tables', 1, 'relid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_proc', 23, 'proargnames', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_text', NULL, 23);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_replication', 9, 'backend_xmin', 'xid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'xid', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_subscription_rel', 2, 'srrelid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_operator', 7, 'oprcanhash', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_create_index', 13, 'tuples_total', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_init_privs', 1, 'objoid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_jcrw', 21, 'station', 'character varying', NULL, '0', 50, NULL, 1, NULL, 0, 0, NULL, 'varchar', NULL, 21);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'column_udt_usage', 3, 'udt_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 3, 'specific_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', '_pg_foreign_servers', 4, 'foreign_server_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stats_ext', 1, 'schemaname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'constraint_table_usage', 1, 'table_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_user_sequences', 4, 'blks_read', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'triggers', 6, 'event_object_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'table_constraints', 5, 'table_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_ts_config_map', 1, 'mapcfg', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'transforms', 3, 'udt_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_shadow', 2, 'usesysid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 14, 'data_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_all_tables', 3, 'relname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'user_mapping_options', 2, 'foreign_server_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'constraint_column_usage', 6, 'constraint_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_attribute', 6, 'attnum', 'smallint', NULL, '0', 16, 0, 0, NULL, 0, 0, NULL, 'int2', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'user_defined_types', 25, 'datetime_precision', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 25);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_shdescription', 2, 'classoid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_constraint', 7, 'convalidated', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_bgwriter', 1, 'checkpoints_timed', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'user_defined_types', 26, 'interval_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 26);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domain_constraints', 6, 'domain_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'parameters', 9, 'data_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_slru', 8, 'truncates', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_user', 8, 'sex', 'character', NULL, '0', 1, NULL, 1, '''0''::bpchar', 0, 0, '用户性别（0男 1女 2未知）', 'bpchar', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_cast', 4, 'castfunc', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_oper_log', 7, 'oper_name', 'character varying', NULL, '0', 50, NULL, 1, '''''::character varying', 0, 0, '登录账号', 'varchar', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_user_online', 5, 'login_location', 'character varying', NULL, '0', 255, NULL, 1, NULL, 0, 0, '登录地点', 'varchar', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_job', 9, 'create_by', 'character varying', NULL, '0', 64, NULL, 1, '''''::character varying', 0, 0, '创建者', 'varchar', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table_column', 7, 'java_field', 'character varying', NULL, '0', 200, NULL, 1, NULL, 0, 0, 'JAVA字段名', 'varchar', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_proc', 7, 'prorows', 'real', NULL, '0', 24, NULL, 0, NULL, 0, 0, NULL, 'float4', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic', 23, 'stanumbers2', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_float4', NULL, 23);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_locks', 2, 'lock_name', 'character varying', NULL, '1', 40, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'p', 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 28, 'udt_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 28);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_user_functions', 5, 'total_time', 'double precision', NULL, '0', 53, NULL, 1, NULL, 0, 0, NULL, 'float8', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_all_indexes', 2, 'indexrelid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'sql_features', 4, 'sub_feature_name', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table', 10, 'business_name', 'character varying', NULL, '0', 30, NULL, 1, NULL, 0, 0, '生成业务名', 'varchar', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'user_defined_types', 17, 'character_set_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 17);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_ts_dict', 5, 'dicttemplate', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_aggregate', 7, 'aggserialfn', 'regproc', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'regproc', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_menu', 6, 'target', 'character varying', NULL, '0', 20, NULL, 1, '''''::character varying', 0, 0, '打开方式（menuItem页签 menuBlank新窗口）', 'varchar', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_conversion', 5, 'conforencoding', 'integer', NULL, '0', 32, 0, 0, NULL, 0, 0, NULL, 'int4', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx', 8, 'reqstate', 'character varying', NULL, '0', 20, NULL, 1, NULL, 0, 0, '需求状态', 'varchar', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 30, 'scope_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 30);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domains', 22, 'udt_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 22);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_opfamily', 4, 'opfnamespace', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_depend', 6, 'refobjsubid', 'integer', NULL, '0', 32, 0, 0, NULL, 0, 0, NULL, 'int4', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_matviews', 5, 'hasindexes', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_dict_type', 9, 'remark', 'character varying', NULL, '0', 500, NULL, 1, '''''::character varying', 0, 0, '备注', 'varchar', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_prepared_statements', 1, 'name', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 70, 'result_cast_numeric_precision_radix', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 70);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_job_log', 7, 'exception_info', 'character varying', NULL, '0', 2000, NULL, 1, NULL, 0, 0, '异常信息', 'varchar', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_fired_triggers', 3, 'trigger_name', 'character varying', NULL, '0', 200, NULL, 0, NULL, 0, 0, NULL, 'varchar', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_constraint', 23, 'conffeqop', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_oid', NULL, 23);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 8, 'data_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_timezone_names', 3, 'utc_offset', 'interval', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'interval', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_role', 1, 'role_id', 'bigint', NULL, '1', 64, 0, 0, 'nextval(''adp.sys_role_role_id_seq''::regclass)', 1, 1, '角色ID', 'int8', 'p', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domains', 1, 'domain_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_config', 2, 'config_name', 'character varying', NULL, '0', 100, NULL, 1, '''0''::character varying', 0, 0, '字典排序', 'varchar', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'schemata', 2, 'schema_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 16, 'character_octet_length', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 16);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stats_ext', 9, 'dependencies', 'pg_dependencies', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'pg_dependencies', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', '_pg_user_mappings', 2, 'umoptions', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_text', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_usage_grants', 5, 'object_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_opclass', 5, 'opcowner', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_user_indexes', 6, 'idx_blks_read', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_database', 2, 'datname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_sys_tables', 9, 'n_tup_upd', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_replication', 1, 'pid', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'int4', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_all_tables', 4, 'heap_blks_read', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_sequence', 1, 'seqrelid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_user_tables', 10, 'n_tup_del', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'attributes', 19, 'numeric_scale', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 19);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'view_self_table_columns', 6, 'typename', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'transforms', 4, 'specific_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_user_sequences', 3, 'relname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 4, 'routine_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', '_pg_foreign_servers', 3, 'foreign_server_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_database_conflicts', 7, 'confl_deadlock', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'parameters', 1, 'specific_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', '_pg_foreign_data_wrappers', 7, 'foreign_data_wrapper_language', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'column_udt_usage', 4, 'table_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_user', 7, 'passwd', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_logininfor', 8, 'msg', 'character varying', NULL, '0', 255, NULL, 1, '''''::character varying', 0, 0, '提示消息', 'varchar', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_foreign_table', 3, 'ftoptions', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_text', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_database', 18, 'checksum_last_failure', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 18);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_bgwriter', 9, 'buffers_backend_fsync', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_tables', 8, 'rowsecurity', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_post', 10, 'remark', 'character varying', NULL, '0', 500, NULL, 1, '''''::character varying', 0, 0, '备注', 'varchar', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_type', 17, 'typreceive', 'regproc', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'regproc', NULL, 17);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_class', 6, 'relowner', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'parameters', 22, 'interval_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 22);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_index', 17, 'indclass', 'ARRAY', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oidvector', NULL, 17);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 18, 'character_set_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 18);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_sys_indexes', 6, 'idx_blks_read', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'transforms', 2, 'udt_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_all_tables', 2, 'schemaname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_shadow', 3, 'usecreatedb', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 34, 'scope_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 34);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_database', 4, 'xact_commit', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'usage_privileges', 6, 'object_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'user_mapping_options', 3, 'foreign_server_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'view_self_table_columns', 15, 'column_comment', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 15);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_locks', 7, 'transactionid', 'xid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'xid', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_publication', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_shdescription', 3, 'description', 'text', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'text', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', '_pg_user_mappings', 4, 'authorization_identifier', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_sys_tables', 13, 'n_dead_tup', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_notice', 9, 'update_time', 'timestamp without time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, '更新时间', 'timestamp', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'schemata', 4, 'default_character_set_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'parameters', 31, 'dtd_identifier', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 31);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_replication', 11, 'sent_lsn', 'pg_lsn', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'pg_lsn', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_hba_file_rules', 5, 'address', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_cluster', 3, 'datname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_user_tables', 23, 'autoanalyze_count', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 23);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_database', 16, 'deadlocks', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 16);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'parameters', 11, 'character_octet_length', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_class', 15, 'relisshared', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 15);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_archiver', 5, 'last_failed_wal', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_subscription_rel', 3, 'srsubstate', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_role', 12, 'remark', 'character varying', NULL, '0', 500, NULL, 1, '''''::character varying', 0, 0, '备注', 'varchar', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'column_udt_usage', 2, 'udt_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domains', 12, 'collation_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 2, 'specific_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 72, 'result_cast_datetime_precision', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 72);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_trigger', 3, 'tgparentid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx', 24, 'update_time', 'date', NULL, '0', -1, NULL, 1, NULL, 0, 0, '更新时间', 'date', NULL, 24);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 39, 'external_name', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 39);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_range', 3, 'rngcollation', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_menu', 15, 'remark', 'character varying', NULL, '0', 500, NULL, 1, '''''::character varying', 0, 0, '备注', 'varchar', NULL, 15);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_constraint', 10, 'conindid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'sql_features', 2, 'feature_name', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_all_indexes', 4, 'relname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_partitioned_table', 1, 'partrelid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_am', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'element_types', 14, 'collation_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_policy', 7, 'polqual', 'pg_node_tree', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'pg_node_tree', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_replication', 12, 'write_lsn', 'pg_lsn', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'pg_lsn', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_triggers', 13, 'end_time', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_cast', 2, 'castsource', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domain_udt_usage', 3, 'udt_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_policies', 5, 'roles', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_name', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_config', 4, 'config_value', 'character varying', NULL, '0', 100, NULL, 1, '''''::character varying', 0, 0, '字典键值', 'varchar', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 66, 'result_cast_collation_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 66);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_foreign_server', 5, 'srvtype', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'element_types', 3, 'object_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'parameters', 12, 'character_set_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_operator', 10, 'oprresult', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 24, 'domain_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 24);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_udt_grants', 5, 'udt_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_mbq', 8, 'update_time', 'date', NULL, '0', -1, NULL, 1, NULL, 0, 0, '更新时间', 'date', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'foreign_table_options', 1, 'foreign_table_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic', 10, 'stakind4', 'smallint', NULL, '0', 16, 0, 0, NULL, 0, 0, NULL, 'int2', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_trigger', 14, 'tgnargs', 'smallint', NULL, '0', 16, 0, 0, NULL, 0, 0, NULL, 'int2', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 32, 'maximum_cardinality', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 32);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_role', 11, 'update_time', 'timestamp without time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, '更新时间', 'timestamp', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_seclabels', 6, 'objname', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domains', 11, 'collation_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_class', 21, 'relhastriggers', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 21);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_opfamily', 2, 'opfmethod', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_activity', 8, 'client_addr', 'inet', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'inet', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'referential_constraints', 7, 'match_option', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_notice', 1, 'notice_id', 'bigint', NULL, '1', 64, 0, 0, 'nextval(''adp.sys_notice_notice_id_seq''::regclass)', 1, 1, '公告主键', 'int8', 'p', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_job_details', 6, 'is_durable', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', '_pg_foreign_servers', 2, 'srvoptions', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_text', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_sys_tables', 11, 'n_tup_hot_upd', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_database', 14, 'temp_files', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_publication', 9, 'pubviaroot', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_foreign_table', 2, 'ftserver', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_subscription_rel', 4, 'srsublsn', 'pg_lsn', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'pg_lsn', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stats_ext', 11, 'most_common_val_nulls', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_bool', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_job', 12, 'update_time', 'timestamp without time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, '更新时间', 'timestamp', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'parameters', 20, 'numeric_scale', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 20);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_cluster', 4, 'relid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domains', 27, 'dtd_identifier', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 27);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'view_routine_usage', 6, 'specific_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_aggregate', 10, 'aggminvtransfn', 'regproc', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'regproc', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stats', 8, 'most_common_vals', 'anyarray', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'anyarray', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'schemata', 3, 'schema_owner', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_attribute', 15, 'atthasmissing', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 15);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_replication', 20, 'reply_time', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 20);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_vacuum', 8, 'heap_blks_vacuumed', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', '_pg_user_mappings', 3, 'umuser', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'information_schema_catalog_name', 1, 'catalog_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table', 7, 'tpl_category', 'character varying', NULL, '0', 200, NULL, 1, '''crud''::character varying', 0, 0, '使用的模板（crud单表操作 tree树表操作 sub主子表操作）', 'varchar', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'column_domain_usage', 1, 'domain_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_database', 3, 'numbackends', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'int4', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'user_mapping_options', 4, 'option_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table_column', 10, 'is_required', 'character', NULL, '0', 1, NULL, 1, NULL, 0, 0, '是否必填（1是）', 'bpchar', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_proc', 10, 'prokind', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_column_grants', 8, 'is_grantable', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'triggers', 15, 'action_reference_old_row', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 15);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'column_privileges', 1, 'grantor', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_shadow', 4, 'usesuper', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_bgwriter', 11, 'stats_reset', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_user_sequences', 2, 'schemaname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_oper_log', 10, 'oper_ip', 'character varying', NULL, '0', 30, NULL, 1, '''''::character varying', 0, 0, '主机地址', 'varchar', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'parameters', 27, 'scope_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 27);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domains', 20, 'udt_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 20);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_post', 7, 'create_time', 'timestamp without time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, '创建时间', 'timestamp', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_fired_triggers', 2, 'entry_id', 'character varying', NULL, '1', 95, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'p', 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_timezone_names', 2, 'abbrev', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_prepared_xacts', 1, 'transaction', 'xid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'xid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_trigger', 16, 'tgargs', 'bytea', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bytea', NULL, 16);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_collation', 8, 'collcollate', 'name', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'name', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'element_types', 4, 'object_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_config', 3, 'config_key', 'character varying', NULL, '0', 100, NULL, 1, '''''::character varying', 0, 0, '字典标签', 'varchar', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_jcrw', 6, 'targettype', 'character varying', NULL, '0', 20, NULL, 1, NULL, 0, 0, NULL, 'varchar', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stats_ext', 12, 'most_common_freqs', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_float8', NULL, 12);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_namespace', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_job', 11, 'update_by', 'character varying', NULL, '0', 64, NULL, 1, '''''::character varying', 0, 0, '更新者', 'varchar', NULL, 11);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_user_tables', 7, 'idx_tup_fetch', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_database', 8, 'datallowconn', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domain_udt_usage', 4, 'domain_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'view_self_table', 7, 'update_time', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_sys_tables', 19, 'last_autoanalyze', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 19);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_settings', 8, 'vartype', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_all_indexes', 3, 'schemaname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_range', 4, 'rngsubopc', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_cursors', 5, 'is_scrollable', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_attribute', 21, 'attcollation', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 21);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_replication_slots', 13, 'wal_status', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_trigger', 4, 'tgname', 'name', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'name', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'view_column_usage', 5, 'table_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'element_types', 16, 'numeric_precision_radix', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 16);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_all_tables', 2, 'schemaname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_foreign_data_wrapper', 3, 'fdwowner', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_create_index', 16, 'partitions_done', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 16);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'column_options', 5, 'option_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_rewrite', 5, 'ev_enabled', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'check_constraint_routine_usage', 1, 'constraint_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_extension', 3, 'extowner', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_wal_receiver', 6, 'flushed_lsn', 'pg_lsn', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'pg_lsn', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 78, 'result_cast_scope_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 78);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_settings', 7, 'context', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_dict_type', 5, 'create_by', 'character varying', NULL, '0', 64, NULL, 1, '''''::character varying', 0, 0, '创建者', 'varchar', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_user_tables', 4, 'heap_blks_read', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_subscription', 2, 'subname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_available_extension_versions', 3, 'installed', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_user_tables', 6, 'idx_scan', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_sys_sequences', 4, 'blks_read', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_database', 7, 'datistemplate', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_ssl', 4, 'cipher', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 33, 'dtd_identifier', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 33);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_user_tables', 8, 'n_tup_ins', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_sys_tables', 2, 'schemaname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_collation', 7, 'collencoding', 'integer', NULL, '0', 32, 0, 0, NULL, 0, 0, NULL, 'int4', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_create_index', 4, 'relid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routine_privileges', 3, 'specific_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_attribute', 17, 'attgenerated', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 17);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_user_online', 9, 'start_timestamp', 'timestamp without time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, 'session创建时间', 'timestamp', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_tqxx', 3, 'targetname', 'character varying', NULL, '0', 50, NULL, 1, NULL, 0, 0, NULL, 'varchar', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_job', 5, 'cron_expression', 'character varying', NULL, '0', 255, NULL, 1, '''''::character varying', 0, 0, 'cron执行表达式', 'varchar', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_amop', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_post', 8, 'update_by', 'character varying', NULL, '0', 64, NULL, 1, '''''::character varying', 0, 0, '更新者', 'varchar', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'triggers', 17, 'created', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'time_stamp', NULL, 17);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'triggered_update_columns', 4, 'event_object_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'views', 4, 'view_definition', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_all_indexes', 4, 'relname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'key_column_usage', 6, 'table_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', '_pg_foreign_table_columns', 3, 'attname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_user_indexes', 3, 'schemaname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_class', 26, 'relreplident', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 26);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_subscription', 4, 'subowner', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'attributes', 4, 'attribute_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_inherits', 2, 'inhparent', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_user', 10, 'password', 'character varying', NULL, '0', 100, NULL, 1, '''''::character varying', 0, 0, '密码', 'varchar', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic_ext', 3, 'stxname', 'name', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_all_sequences', 3, 'relname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_bgwriter', 5, 'buffers_checkpoint', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_class', 25, 'relispopulated', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 25);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_column_grants', 7, 'privilege_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_group', 2, 'grosysid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_file_settings', 2, 'sourceline', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'int4', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_vacuum', 7, 'heap_blks_scanned', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_replication_slots', 2, 'plugin', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_constraint', 24, 'conexclop', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_oid', NULL, 24);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'sequences', 4, 'data_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'gen_table', 8, 'package_name', 'character varying', NULL, '0', 100, NULL, 1, NULL, 0, 0, '生成包路径', 'varchar', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_rules', 1, 'schemaname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'constraint_table_usage', 5, 'constraint_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_replication_origin_status', 2, 'external_id', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx', 10, 'issynergy', 'character varying', NULL, '0', 10, NULL, 1, NULL, 0, 0, '是否协同', 'varchar', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stats', 7, 'n_distinct', 'real', NULL, '0', 24, NULL, 1, NULL, 0, 0, NULL, 'float4', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'table_constraints', 1, 'constraint_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_init_privs', 5, 'initprivs', 'ARRAY', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, '_aclitem', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'attributes', 16, 'collation_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 16);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_fired_triggers', 13, 'requests_recovery', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stats_ext', 5, 'statistics_owner', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic', 24, 'stanumbers3', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_float4', NULL, 24);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_basebackup', 3, 'backup_total', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_opclass', 9, 'opckeytype', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_sys_tables', 5, 'seq_tup_read', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'columns', 10, 'character_octet_length', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_table_grants', 6, 'privilege_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_routine_grants', 4, 'specific_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'sql_implementation_info', 1, 'implementation_info_id', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_publication_tables', 3, 'tablename', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 19, 'character_set_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 19);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'domains', 5, 'character_maximum_length', 'integer', NULL, '0', 32, 0, 1, NULL, 0, 0, NULL, 'cardinal_number', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_role', 5, 'data_scope', 'character', NULL, '0', 1, NULL, 1, NULL, 0, 0, '数据范围（1：全部数据权限 2：自定数据权限）', 'bpchar', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', '_pg_foreign_table_columns', 4, 'attfdwoptions', 'ARRAY', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, '_text', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_activity', 7, 'application_name', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'referential_constraints', 8, 'update_rule', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'triggered_update_columns', 3, 'trigger_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_all_indexes', 3, 'schemaname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'views', 3, 'table_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_sys_indexes', 6, 'idx_scan', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_language', 6, 'lanplcallfoid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_sys_tables', 18, 'last_analyze', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 18);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'view_self_table_columns', 17, 'contype', '"char"', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'char', NULL, 17);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_prepared_statements', 5, 'from_sql', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_matviews', 1, 'schemaname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_tqxx', 4, 'priority', 'character varying', NULL, '0', 5, NULL, 1, NULL, 0, 0, NULL, 'varchar', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_mbq', 7, 'update_by', 'character varying', NULL, '0', 64, NULL, 1, NULL, 0, 0, '更新者', 'varchar', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 13, 'udt_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 13);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_dept', 6, 'leader', 'character varying', NULL, '0', 20, NULL, 1, '''''::character varying', 0, 0, '负责人', 'varchar', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_create_index', 3, 'datname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routine_privileges', 4, 'specific_schema', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_analyze', 2, 'datid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_ts_dict', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_conversion', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_simple_triggers', 6, 'times_triggered', 'bigint', NULL, '0', 64, 0, 0, NULL, 0, 0, NULL, 'int8', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_ssl', 3, 'version', 'text', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'text', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_xact_user_functions', 1, 'funcid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_class', 17, 'relkind', '"char"', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'char', NULL, 17);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_amop', 9, 'amopsortfamily', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_sys_sequences', 3, 'relname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_index', 6, 'indisprimary', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_create_index', 14, 'tuples_done', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_proc', 24, 'proargdefaults', 'pg_node_tree', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'pg_node_tree', NULL, 24);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_type', 6, 'typbyval', 'boolean', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'bool', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_available_extension_versions', 4, 'superuser', 'boolean', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'bool', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_policy', 8, 'polwithcheck', 'pg_node_tree', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'pg_node_tree', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_user_tables', 3, 'relname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_sys_tables', 2, 'schemaname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_foreign_data_wrapper', 4, 'fdwhandler', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_extension', 4, 'extnamespace', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'sys_user_online', 1, 'sessionid', 'character varying', NULL, '1', 50, NULL, 0, '''''::character varying', 0, 0, '用户会话id', 'varchar', 'p', 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'user_defined_types', 6, 'is_final', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_attribute', 25, 'attmissingval', 'anyarray', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'anyarray', NULL, 25);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_routine_grants', 3, 'specific_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'table_constraints', 9, 'initially_deferred', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 9);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'rsh_jcxqfx_xqxx_mbxx', 10, 'del_flag', 'character varying', NULL, '0', 1, NULL, 1, NULL, 0, 0, '删除标志（0代表存在 2代表删除）', 'varchar', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'attributes', 14, 'collation_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 14);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_progress_basebackup', 4, 'backup_streamed', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_roles', 10, 'rolvaliduntil', 'timestamp with time zone', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'timestamptz', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'parameters', 5, 'parameter_mode', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'character_sets', 6, 'default_collate_catalog', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 6);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_sequence', 5, 'seqmax', 'bigint', NULL, '0', 64, 0, 0, NULL, 0, 0, NULL, 'int8', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 73, 'result_cast_interval_type', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 73);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_simprop_triggers', 10, 'long_prop_2', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_user_functions', 2, 'schemaname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 2);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 46, 'schema_level_routine', 'character varying', NULL, '0', 3, NULL, 1, NULL, 0, 0, NULL, 'yes_or_no', NULL, 46);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'sequences', 3, 'sequence_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_all_tables', 10, 'n_tup_del', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 10);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_replication', 5, 'client_addr', 'inet', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'inet', NULL, 5);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_locks', 8, 'classid', 'oid', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'oid', NULL, 8);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'foreign_servers', 7, 'authorization_identifier', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 7);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_opclass', 1, 'oid', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statio_all_sequences', 4, 'blks_read', 'bigint', NULL, '0', 64, 0, 1, NULL, 0, 0, NULL, 'int8', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'role_usage_grants', 1, 'grantor', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 1);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_stat_user_indexes', 4, 'relname', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'name', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'routines', 40, 'external_language', 'character varying', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'character_data', NULL, 40);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_subscription', 3, 'subname', 'name', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'name', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'information_schema', 'attributes', 3, 'udt_name', 'name', NULL, '0', -1, NULL, 1, NULL, 0, 0, NULL, 'sql_identifier', NULL, 3);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'pg_catalog', 'pg_statistic_ext', 4, 'stxnamespace', 'oid', NULL, '0', -1, NULL, 0, NULL, 0, 0, NULL, 'oid', NULL, 4);
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'adp', 'qrtz_triggers', 2, 'trigger_name', 'character varying', NULL, '1', 200, NULL, 0, NULL, 0, 0, NULL, 'varchar', 'p', 2);

-- ----------------------------
-- View structure for view_self_table
-- ----------------------------
DROP VIEW IF EXISTS "adp"."view_self_table";
CREATE VIEW "adp"."view_self_table" AS  SELECT pg_database.datname AS table_catalog,
    pg_get_userbyid(c.relowner) AS tableowner,
    pg_ns.nspname AS table_schema,
    c.relname AS table_name,
    (obj_description(c.relfilenode, 'pg_class'::name))::character varying AS table_comment,
    now() AS create_time,
    now() AS update_time
   FROM ((pg_class c
     LEFT JOIN pg_namespace pg_ns ON ((pg_ns.oid = c.relnamespace)))
     LEFT JOIN pg_database ON ((c.relowner = pg_database.datdba)))
  WHERE (c.relname IN ( SELECT pg_tables.tablename
           FROM pg_tables));

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'adp', 'qrtz_simple_triggers', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'adp', 'qrtz_simple_triggers', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'adp', 'qrtz_simple_triggers', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'adp', 'qrtz_simple_triggers', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'adp', 'rsh_jcxqfx_xqxx_tqxx', '空间物体合作监测管理_监测需求分析_需求信息_天区信息', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'adp', 'rsh_jcxqfx_xqxx_tqxx', '空间物体合作监测管理_监测需求分析_需求信息_天区信息', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'adp', 'rsh_jcxqfx_xqxx_tqxx', '空间物体合作监测管理_监测需求分析_需求信息_天区信息', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'adp', 'rsh_jcxqfx_xqxx_tqxx', '空间物体合作监测管理_监测需求分析_需求信息_天区信息', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'adp', 'qrtz_job_details', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'adp', 'qrtz_job_details', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'adp', 'qrtz_job_details', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'adp', 'qrtz_job_details', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'adp', 'qrtz_triggers', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'adp', 'qrtz_triggers', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'adp', 'qrtz_triggers', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'adp', 'qrtz_triggers', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'adp', 'qrtz_cron_triggers', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'adp', 'qrtz_cron_triggers', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'adp', 'qrtz_cron_triggers', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'adp', 'qrtz_cron_triggers', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_statistic', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_statistic', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_statistic', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_statistic', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_type', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_type', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_type', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_type', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'adp', 'qrtz_blob_triggers', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'adp', 'qrtz_blob_triggers', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'adp', 'qrtz_blob_triggers', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'adp', 'qrtz_blob_triggers', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'adp', 'qrtz_calendars', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'adp', 'qrtz_calendars', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'adp', 'qrtz_calendars', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'adp', 'qrtz_calendars', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'adp', 'qrtz_paused_trigger_grps', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'adp', 'qrtz_paused_trigger_grps', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'adp', 'qrtz_paused_trigger_grps', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'adp', 'qrtz_paused_trigger_grps', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'adp', 'rsh_jcxqfx_xqxx_mbxx', '空间物体合作监测管理_监测需求分析_需求信息_目标信息', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'adp', 'rsh_jcxqfx_xqxx_mbxx', '空间物体合作监测管理_监测需求分析_需求信息_目标信息', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'adp', 'rsh_jcxqfx_xqxx_mbxx', '空间物体合作监测管理_监测需求分析_需求信息_目标信息', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'adp', 'rsh_jcxqfx_xqxx_mbxx', '空间物体合作监测管理_监测需求分析_需求信息_目标信息', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'adp', 'rsh_jcxqfx_xqxx_jcrw', '监测设备管理平台_监测需求分析_监测任务', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'adp', 'rsh_jcxqfx_xqxx_jcrw', '监测设备管理平台_监测需求分析_监测任务', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'adp', 'rsh_jcxqfx_xqxx_jcrw', '监测设备管理平台_监测需求分析_监测任务', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'adp', 'rsh_jcxqfx_xqxx_jcrw', '监测设备管理平台_监测需求分析_监测任务', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'adp', 'rsh_jcxqfx_xqxx', '空间物体合作监测管理_监测需求分析_需求信息', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'adp', 'rsh_jcxqfx_xqxx', '空间物体合作监测管理_监测需求分析_需求信息', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'adp', 'rsh_jcxqfx_xqxx', '空间物体合作监测管理_监测需求分析_需求信息', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'adp', 'rsh_jcxqfx_xqxx', '空间物体合作监测管理_监测需求分析_需求信息', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'adp', 'qrtz_fired_triggers', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'adp', 'qrtz_fired_triggers', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'adp', 'qrtz_fired_triggers', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'adp', 'qrtz_fired_triggers', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'adp', 'qrtz_scheduler_state', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'adp', 'qrtz_scheduler_state', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'adp', 'qrtz_scheduler_state', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'adp', 'qrtz_scheduler_state', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'adp', 'qrtz_locks', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'adp', 'qrtz_locks', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'adp', 'qrtz_locks', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'adp', 'qrtz_locks', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_foreign_table', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_foreign_table', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_foreign_table', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_foreign_table', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'adp', 'qrtz_simprop_triggers', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'adp', 'qrtz_simprop_triggers', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'adp', 'qrtz_simprop_triggers', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'adp', 'qrtz_simprop_triggers', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_authid', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_authid', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_authid', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_authid', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'adp', 'sys_dept', '部门表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'adp', 'sys_dept', '部门表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'adp', 'sys_dept', '部门表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'adp', 'sys_dept', '部门表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_statistic_ext_data', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_statistic_ext_data', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_statistic_ext_data', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_statistic_ext_data', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'adp', 'sys_user', '用户信息表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'adp', 'sys_user', '用户信息表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'adp', 'sys_user', '用户信息表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'adp', 'sys_user', '用户信息表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'adp', 'sys_post', '岗位信息表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'adp', 'sys_post', '岗位信息表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'adp', 'sys_post', '岗位信息表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'adp', 'sys_post', '岗位信息表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'adp', 'sys_role', '角色信息表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'adp', 'sys_role', '角色信息表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'adp', 'sys_role', '角色信息表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'adp', 'sys_role', '角色信息表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'adp', 'sys_user_role', '用户和角色关联表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'adp', 'sys_user_role', '用户和角色关联表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'adp', 'sys_user_role', '用户和角色关联表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'adp', 'sys_user_role', '用户和角色关联表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'adp', 'sys_role_menu', '角色和菜单关联表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'adp', 'sys_role_menu', '角色和菜单关联表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'adp', 'sys_role_menu', '角色和菜单关联表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'adp', 'sys_role_menu', '角色和菜单关联表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'adp', 'sys_role_dept', '角色和部门关联表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'adp', 'sys_role_dept', '角色和部门关联表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'adp', 'sys_role_dept', '角色和部门关联表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'adp', 'sys_role_dept', '角色和部门关联表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'adp', 'sys_user_post', '用户与岗位关联表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'adp', 'sys_user_post', '用户与岗位关联表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'adp', 'sys_user_post', '用户与岗位关联表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'adp', 'sys_user_post', '用户与岗位关联表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'adp', 'sys_oper_log', '操作日志记录', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'adp', 'sys_oper_log', '操作日志记录', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'adp', 'sys_oper_log', '操作日志记录', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'adp', 'sys_oper_log', '操作日志记录', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'adp', 'sys_menu', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'adp', 'sys_menu', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'adp', 'sys_menu', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'adp', 'sys_menu', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_largeobject', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_largeobject', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_largeobject', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_largeobject', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'adp', 'sys_dict_type', '字典类型表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'adp', 'sys_dict_type', '字典类型表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'adp', 'sys_dict_type', '字典类型表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'adp', 'sys_dict_type', '字典类型表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_user_mapping', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_user_mapping', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_user_mapping', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_user_mapping', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_subscription', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_subscription', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_subscription', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_subscription', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_attribute', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_attribute', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_attribute', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_attribute', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_proc', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_proc', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_proc', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_proc', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_class', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_class', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_class', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_class', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_attrdef', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_attrdef', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_attrdef', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_attrdef', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_constraint', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_constraint', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_constraint', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_constraint', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_inherits', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_inherits', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_inherits', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_inherits', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_index', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_index', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_index', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_index', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_operator', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_operator', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_operator', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_operator', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_opfamily', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_opfamily', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_opfamily', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_opfamily', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_opclass', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_opclass', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_opclass', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_opclass', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_am', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_am', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_am', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_am', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_amop', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_amop', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_amop', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_amop', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_amproc', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_amproc', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_amproc', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_amproc', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_language', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_language', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_language', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_language', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_largeobject_metadata', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_largeobject_metadata', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_largeobject_metadata', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_largeobject_metadata', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_aggregate', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_aggregate', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_aggregate', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_aggregate', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_statistic_ext', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_statistic_ext', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_statistic_ext', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_statistic_ext', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_rewrite', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_rewrite', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_rewrite', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_rewrite', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_trigger', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_trigger', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_trigger', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_trigger', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_event_trigger', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_event_trigger', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_event_trigger', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_event_trigger', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_description', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_description', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_description', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_description', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_cast', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_cast', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_cast', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_cast', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_enum', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_enum', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_enum', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_enum', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_namespace', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_namespace', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_namespace', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_namespace', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_conversion', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_conversion', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_conversion', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_conversion', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_depend', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_depend', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_depend', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_depend', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_database', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_database', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_database', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_database', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_db_role_setting', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_db_role_setting', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_db_role_setting', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_db_role_setting', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_tablespace', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_tablespace', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_tablespace', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_tablespace', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_auth_members', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_auth_members', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_auth_members', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_auth_members', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_shdepend', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_shdepend', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_shdepend', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_shdepend', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_shdescription', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_shdescription', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_shdescription', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_shdescription', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_ts_config', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_ts_config', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_ts_config', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_ts_config', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_ts_config_map', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_ts_config_map', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_ts_config_map', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_ts_config_map', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_ts_dict', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_ts_dict', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_ts_dict', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_ts_dict', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_ts_parser', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_ts_parser', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_ts_parser', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_ts_parser', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_ts_template', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_ts_template', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_ts_template', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_ts_template', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_extension', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_extension', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_extension', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_extension', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_foreign_data_wrapper', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_foreign_data_wrapper', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_foreign_data_wrapper', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_foreign_data_wrapper', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_foreign_server', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_foreign_server', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_foreign_server', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_foreign_server', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_policy', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_policy', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_policy', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_policy', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_replication_origin', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_replication_origin', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_replication_origin', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_replication_origin', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_default_acl', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_default_acl', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_default_acl', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_default_acl', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_init_privs', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_init_privs', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_init_privs', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_init_privs', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_seclabel', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_seclabel', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_seclabel', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_seclabel', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_shseclabel', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_shseclabel', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_shseclabel', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_shseclabel', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_collation', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_collation', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_collation', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_collation', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_partitioned_table', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_partitioned_table', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_partitioned_table', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_partitioned_table', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_range', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_range', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_range', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_range', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_transform', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_transform', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_transform', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_transform', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_sequence', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_sequence', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_sequence', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_sequence', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_publication', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_publication', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_publication', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_publication', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_publication_rel', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_publication_rel', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_publication_rel', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_publication_rel', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'pg_catalog', 'pg_subscription_rel', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'pg_catalog', 'pg_subscription_rel', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'pg_catalog', 'pg_subscription_rel', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'pg_catalog', 'pg_subscription_rel', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'information_schema', 'sql_implementation_info', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'information_schema', 'sql_implementation_info', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'information_schema', 'sql_implementation_info', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'information_schema', 'sql_implementation_info', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'information_schema', 'sql_parts', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'information_schema', 'sql_parts', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'information_schema', 'sql_parts', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'information_schema', 'sql_parts', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'information_schema', 'sql_sizing', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'information_schema', 'sql_sizing', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'information_schema', 'sql_sizing', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'information_schema', 'sql_sizing', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'information_schema', 'sql_features', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'information_schema', 'sql_features', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'information_schema', 'sql_features', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'information_schema', 'sql_features', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'adp', 'sys_dict_data', '字典数据表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'adp', 'sys_dict_data', '字典数据表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'adp', 'sys_dict_data', '字典数据表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'adp', 'sys_dict_data', '字典数据表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'adp', 'sys_config', '参数配置表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'adp', 'sys_config', '参数配置表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'adp', 'sys_config', '参数配置表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'adp', 'sys_config', '参数配置表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'adp', 'sys_logininfor', '系统访问记录', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'adp', 'sys_logininfor', '系统访问记录', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'adp', 'sys_logininfor', '系统访问记录', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'adp', 'sys_logininfor', '系统访问记录', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'adp', 'sys_user_online', '在线用户记录', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'adp', 'sys_user_online', '在线用户记录', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'adp', 'sys_user_online', '在线用户记录', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'adp', 'sys_user_online', '在线用户记录', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'adp', 'sys_job', '定时任务调度表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'adp', 'sys_job', '定时任务调度表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'adp', 'sys_job', '定时任务调度表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'adp', 'sys_job', '定时任务调度表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'adp', 'sys_job_log', '定时任务调度日志表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'adp', 'sys_job_log', '定时任务调度日志表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'adp', 'sys_job_log', '定时任务调度日志表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'adp', 'sys_job_log', '定时任务调度日志表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'adp', 'sys_notice', '通知公告表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'adp', 'sys_notice', '通知公告表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'adp', 'sys_notice', '通知公告表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'adp', 'sys_notice', '通知公告表', '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'adp', 'rsh_jcxqfx_mbq', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'adp', 'rsh_jcxqfx_mbq', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'adp', 'rsh_jcxqfx_mbq', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'adp', 'rsh_jcxqfx_mbq', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'adp', 'gen_table_column', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'adp', 'gen_table_column', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'adp', 'gen_table_column', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'adp', 'gen_table_column', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template0', 'postgres', 'adp', 'gen_table', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('template1', 'postgres', 'adp', 'gen_table', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('pg_adp', 'postgres', 'adp', 'gen_table', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');
INSERT INTO "adp"."sys_user_role" VALUES ('postgres', 'postgres', 'adp', 'gen_table', NULL, '2020-11-13 09:25:12.944184+08', '2020-11-13 09:25:12.944184+08');

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "adp"."gen_table_column_column_id_seq"
OWNED BY "adp"."gen_table_column"."column_id";
SELECT setval('"adp"."gen_table_column_column_id_seq"', 281, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "adp"."gen_table_table_id_seq"
OWNED BY "adp"."gen_table"."table_id";
SELECT setval('"adp"."gen_table_table_id_seq"', 221, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "adp"."sys_config_config_id_seq"
OWNED BY "adp"."sys_config"."config_id";
SELECT setval('"adp"."sys_config_config_id_seq"', 101, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "adp"."sys_dept_dept_id_seq"
OWNED BY "adp"."sys_dept"."dept_id";
SELECT setval('"adp"."sys_dept_dept_id_seq"', 201, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "adp"."sys_dict_data_dict_code_seq"
OWNED BY "adp"."sys_dict_data"."dict_code";
SELECT setval('"adp"."sys_dict_data_dict_code_seq"', 101, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "adp"."sys_dict_type_dict_id_seq"
OWNED BY "adp"."sys_dict_type"."dict_id";
SELECT setval('"adp"."sys_dict_type_dict_id_seq"', 101, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "adp"."sys_job_job_id_seq"
OWNED BY "adp"."sys_job"."job_id";
SELECT setval('"adp"."sys_job_job_id_seq"', 101, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "adp"."sys_job_log_job_log_id_seq"
OWNED BY "adp"."sys_job_log"."job_log_id";
SELECT setval('"adp"."sys_job_log_job_log_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "adp"."sys_logininfor_info_id_seq"
OWNED BY "adp"."sys_logininfor"."info_id";
SELECT setval('"adp"."sys_logininfor_info_id_seq"', 1120, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "adp"."sys_menu_menu_id_seq"
OWNED BY "adp"."sys_menu"."menu_id";
SELECT setval('"adp"."sys_menu_menu_id_seq"', 2060, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "adp"."sys_notice_notice_id_seq"
OWNED BY "adp"."sys_notice"."notice_id";
SELECT setval('"adp"."sys_notice_notice_id_seq"', 11, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "adp"."sys_oper_log_oper_id_seq"
OWNED BY "adp"."sys_oper_log"."oper_id";
SELECT setval('"adp"."sys_oper_log_oper_id_seq"', 620, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "adp"."sys_post_post_id_seq"
OWNED BY "adp"."sys_post"."post_id";
SELECT setval('"adp"."sys_post_post_id_seq"', 11, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "adp"."sys_role_role_id_seq"
OWNED BY "adp"."sys_role"."role_id";
SELECT setval('"adp"."sys_role_role_id_seq"', 101, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "adp"."sys_user_user_id_seq"
OWNED BY "adp"."sys_user"."user_id";
SELECT setval('"adp"."sys_user_user_id_seq"', 101, false);

-- ----------------------------
-- Primary Key structure for table qrtz_blob_triggers
-- ----------------------------
ALTER TABLE "adp"."qrtz_blob_triggers" ADD CONSTRAINT "qrtz_blob_triggers_pkey" PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Primary Key structure for table qrtz_calendars
-- ----------------------------
ALTER TABLE "adp"."qrtz_calendars" ADD CONSTRAINT "qrtz_calendars_pkey" PRIMARY KEY ("sched_name", "calendar_name");

-- ----------------------------
-- Primary Key structure for table qrtz_cron_triggers
-- ----------------------------
ALTER TABLE "adp"."qrtz_cron_triggers" ADD CONSTRAINT "qrtz_cron_triggers_pkey" PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Indexes structure for table qrtz_fired_triggers
-- ----------------------------
CREATE INDEX "idx_qrtz_ft_inst_job_req_rcvry" ON "adp"."qrtz_fired_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "instance_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "requests_recovery" "pg_catalog"."bool_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_ft_j_g" ON "adp"."qrtz_fired_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "job_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "job_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_ft_jg" ON "adp"."qrtz_fired_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "job_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_ft_t_g" ON "adp"."qrtz_fired_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_ft_tg" ON "adp"."qrtz_fired_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_ft_trig_inst_name" ON "adp"."qrtz_fired_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "instance_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table qrtz_fired_triggers
-- ----------------------------
ALTER TABLE "adp"."qrtz_fired_triggers" ADD CONSTRAINT "qrtz_fired_triggers_pkey" PRIMARY KEY ("sched_name", "entry_id");

-- ----------------------------
-- Indexes structure for table qrtz_job_details
-- ----------------------------
CREATE INDEX "idx_qrtz_j_grp" ON "adp"."qrtz_job_details" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "job_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_j_req_recovery" ON "adp"."qrtz_job_details" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "requests_recovery" "pg_catalog"."bool_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table qrtz_job_details
-- ----------------------------
ALTER TABLE "adp"."qrtz_job_details" ADD CONSTRAINT "qrtz_job_details_pkey" PRIMARY KEY ("sched_name", "job_name", "job_group");

-- ----------------------------
-- Primary Key structure for table qrtz_locks
-- ----------------------------
ALTER TABLE "adp"."qrtz_locks" ADD CONSTRAINT "qrtz_locks_pkey" PRIMARY KEY ("sched_name", "lock_name");

-- ----------------------------
-- Primary Key structure for table qrtz_paused_trigger_grps
-- ----------------------------
ALTER TABLE "adp"."qrtz_paused_trigger_grps" ADD CONSTRAINT "qrtz_paused_trigger_grps_pkey" PRIMARY KEY ("sched_name", "trigger_group");

-- ----------------------------
-- Primary Key structure for table qrtz_scheduler_state
-- ----------------------------
ALTER TABLE "adp"."qrtz_scheduler_state" ADD CONSTRAINT "qrtz_scheduler_state_pkey" PRIMARY KEY ("sched_name", "instance_name");

-- ----------------------------
-- Primary Key structure for table qrtz_simple_triggers
-- ----------------------------
ALTER TABLE "adp"."qrtz_simple_triggers" ADD CONSTRAINT "qrtz_simple_triggers_pkey" PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Primary Key structure for table qrtz_simprop_triggers
-- ----------------------------
ALTER TABLE "adp"."qrtz_simprop_triggers" ADD CONSTRAINT "qrtz_simprop_triggers_pkey" PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Indexes structure for table qrtz_triggers
-- ----------------------------
CREATE INDEX "idx_qrtz_t_c" ON "adp"."qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "calendar_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_g" ON "adp"."qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_j" ON "adp"."qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "job_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "job_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_jg" ON "adp"."qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "job_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_n_g_state" ON "adp"."qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_state" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_n_state" ON "adp"."qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_state" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_next_fire_time" ON "adp"."qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "next_fire_time" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_nft_misfire" ON "adp"."qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "misfire_instr" "pg_catalog"."int2_ops" ASC NULLS LAST,
  "next_fire_time" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_nft_st" ON "adp"."qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_state" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "next_fire_time" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_nft_st_misfire" ON "adp"."qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "misfire_instr" "pg_catalog"."int2_ops" ASC NULLS LAST,
  "next_fire_time" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "trigger_state" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_nft_st_misfire_grp" ON "adp"."qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "misfire_instr" "pg_catalog"."int2_ops" ASC NULLS LAST,
  "next_fire_time" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "trigger_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_state" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_state" ON "adp"."qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_state" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table qrtz_triggers
-- ----------------------------
ALTER TABLE "adp"."qrtz_triggers" ADD CONSTRAINT "qrtz_triggers_pkey" PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Primary Key structure for table rsh_jcxqfx_mbq
-- ----------------------------
ALTER TABLE "adp"."rsh_jcxqfx_mbq" ADD CONSTRAINT "pk_rsh_jcxqfx_mbq" PRIMARY KEY ("targrtnum");

-- ----------------------------
-- Primary Key structure for table rsh_jcxqfx_xqxx
-- ----------------------------
ALTER TABLE "adp"."rsh_jcxqfx_xqxx" ADD CONSTRAINT "pk_rsh_jcxqfx_xqxx" PRIMARY KEY ("reqnum");

-- ----------------------------
-- Primary Key structure for table rsh_jcxqfx_xqxx_jcrw
-- ----------------------------
ALTER TABLE "adp"."rsh_jcxqfx_xqxx_jcrw" ADD CONSTRAINT "pk_rsh_jcxqfx_xqxx_jcrw" PRIMARY KEY ("reqnum", "targrtnum");

-- ----------------------------
-- Primary Key structure for table rsh_jcxqfx_xqxx_mbxx
-- ----------------------------
ALTER TABLE "adp"."rsh_jcxqfx_xqxx_mbxx" ADD CONSTRAINT "pk_rsh_jcxqfx_xqxx_mbxx" PRIMARY KEY ("reqnum", "targrtnum");

-- ----------------------------
-- Primary Key structure for table rsh_jcxqfx_xqxx_tqxx
-- ----------------------------
ALTER TABLE "adp"."rsh_jcxqfx_xqxx_tqxx" ADD CONSTRAINT "pk_rsh_jcxqfx_xqxx_tqxx" PRIMARY KEY ("reqnum", "targrtnum");

-- ----------------------------
-- Primary Key structure for table sys_config
-- ----------------------------
ALTER TABLE "adp"."sys_config" ADD CONSTRAINT "pk_sys_config" PRIMARY KEY ("config_id");

-- ----------------------------
-- Primary Key structure for table sys_dept
-- ----------------------------
ALTER TABLE "adp"."sys_dept" ADD CONSTRAINT "pk_sys_dept" PRIMARY KEY ("dept_id");

-- ----------------------------
-- Primary Key structure for table sys_dict_data
-- ----------------------------
ALTER TABLE "adp"."sys_dict_data" ADD CONSTRAINT "pk_sys_dict_data" PRIMARY KEY ("dict_code");

-- ----------------------------
-- Uniques structure for table sys_dict_type
-- ----------------------------
ALTER TABLE "adp"."sys_dict_type" ADD CONSTRAINT "sys_dict_type_dict_type_key" UNIQUE ("dict_type");

-- ----------------------------
-- Primary Key structure for table sys_dict_type
-- ----------------------------
ALTER TABLE "adp"."sys_dict_type" ADD CONSTRAINT "pk_sys_dict_type" PRIMARY KEY ("dict_id");

-- ----------------------------
-- Primary Key structure for table sys_job
-- ----------------------------
ALTER TABLE "adp"."sys_job" ADD CONSTRAINT "pk_sys_job" PRIMARY KEY ("job_id", "job_name", "job_group");

-- ----------------------------
-- Primary Key structure for table sys_job_log
-- ----------------------------
ALTER TABLE "adp"."sys_job_log" ADD CONSTRAINT "pk_sys_job_log" PRIMARY KEY ("job_log_id");

-- ----------------------------
-- Primary Key structure for table sys_logininfor
-- ----------------------------
ALTER TABLE "adp"."sys_logininfor" ADD CONSTRAINT "pk_sys_logininfor" PRIMARY KEY ("info_id");

-- ----------------------------
-- Primary Key structure for table sys_menu
-- ----------------------------
ALTER TABLE "adp"."sys_menu" ADD CONSTRAINT "pk_sys_menu" PRIMARY KEY ("menu_id");

-- ----------------------------
-- Primary Key structure for table sys_notice
-- ----------------------------
ALTER TABLE "adp"."sys_notice" ADD CONSTRAINT "pk_sys_notice" PRIMARY KEY ("notice_id");

-- ----------------------------
-- Primary Key structure for table sys_oper_log
-- ----------------------------
ALTER TABLE "adp"."sys_oper_log" ADD CONSTRAINT "pk_sys_oper_log" PRIMARY KEY ("oper_id");

-- ----------------------------
-- Primary Key structure for table sys_post
-- ----------------------------
ALTER TABLE "adp"."sys_post" ADD CONSTRAINT "pk_sys_post" PRIMARY KEY ("post_id");

-- ----------------------------
-- Primary Key structure for table sys_role
-- ----------------------------
ALTER TABLE "adp"."sys_role" ADD CONSTRAINT "pk_sys_role" PRIMARY KEY ("role_id");

-- ----------------------------
-- Primary Key structure for table sys_role_dept
-- ----------------------------
ALTER TABLE "adp"."sys_role_dept" ADD CONSTRAINT "pk_sys_role_dept" PRIMARY KEY ("role_id", "dept_id");

-- ----------------------------
-- Primary Key structure for table sys_role_menu
-- ----------------------------
ALTER TABLE "adp"."sys_role_menu" ADD CONSTRAINT "pk_sys_role_menu" PRIMARY KEY ("role_id", "menu_id");

-- ----------------------------
-- Primary Key structure for table sys_user
-- ----------------------------
ALTER TABLE "adp"."sys_user" ADD CONSTRAINT "pk_sys_user" PRIMARY KEY ("user_id");

-- ----------------------------
-- Primary Key structure for table sys_user_online
-- ----------------------------
ALTER TABLE "adp"."sys_user_online" ADD CONSTRAINT "pk_sys_user_online" PRIMARY KEY ("sessionid");

-- ----------------------------
-- Primary Key structure for table sys_user_post
-- ----------------------------
ALTER TABLE "adp"."sys_user_post" ADD CONSTRAINT "pk_sys_user_post" PRIMARY KEY ("user_id", "post_id");

-- ----------------------------
-- Primary Key structure for table sys_user_role
-- ----------------------------
ALTER TABLE "adp"."sys_user_role" ADD CONSTRAINT "pk_sys_user_role" PRIMARY KEY ("user_id", "role_id");

-- ----------------------------
-- Foreign Keys structure for table qrtz_blob_triggers
-- ----------------------------
ALTER TABLE "adp"."qrtz_blob_triggers" ADD CONSTRAINT "qrtz_blob_triggers_sched_name_trigger_name_trigger_group_fkey" FOREIGN KEY ("sched_name", "trigger_name", "trigger_group") REFERENCES "adp"."qrtz_triggers" ("sched_name", "trigger_name", "trigger_group") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table qrtz_cron_triggers
-- ----------------------------
ALTER TABLE "adp"."qrtz_cron_triggers" ADD CONSTRAINT "qrtz_cron_triggers_sched_name_trigger_name_trigger_group_fkey" FOREIGN KEY ("sched_name", "trigger_name", "trigger_group") REFERENCES "adp"."qrtz_triggers" ("sched_name", "trigger_name", "trigger_group") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table qrtz_simple_triggers
-- ----------------------------
ALTER TABLE "adp"."qrtz_simple_triggers" ADD CONSTRAINT "qrtz_simple_triggers_sched_name_trigger_name_trigger_group_fkey" FOREIGN KEY ("sched_name", "trigger_name", "trigger_group") REFERENCES "adp"."qrtz_triggers" ("sched_name", "trigger_name", "trigger_group") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table qrtz_simprop_triggers
-- ----------------------------
ALTER TABLE "adp"."qrtz_simprop_triggers" ADD CONSTRAINT "qrtz_simprop_triggers_sched_name_trigger_name_trigger_grou_fkey" FOREIGN KEY ("sched_name", "trigger_name", "trigger_group") REFERENCES "adp"."qrtz_triggers" ("sched_name", "trigger_name", "trigger_group") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table qrtz_triggers
-- ----------------------------
ALTER TABLE "adp"."qrtz_triggers" ADD CONSTRAINT "qrtz_triggers_sched_name_job_name_job_group_fkey" FOREIGN KEY ("sched_name", "job_name", "job_group") REFERENCES "adp"."qrtz_job_details" ("sched_name", "job_name", "job_group") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table rsh_jcxqfx_mbq
-- ----------------------------
ALTER TABLE "adp"."rsh_jcxqfx_mbq" ADD CONSTRAINT "fk_rsh_jcxq_reference_rsh_jcxq" FOREIGN KEY ("reqnum", "rsh_targrtnum") REFERENCES "adp"."rsh_jcxqfx_xqxx_mbxx" ("reqnum", "targrtnum") ON DELETE RESTRICT ON UPDATE RESTRICT;

-- ----------------------------
-- Foreign Keys structure for table rsh_jcxqfx_xqxx_jcrw
-- ----------------------------
ALTER TABLE "adp"."rsh_jcxqfx_xqxx_jcrw" ADD CONSTRAINT "fk_rsh_jcxq_reference_rsh_jcxq" FOREIGN KEY ("rsh_reqnum") REFERENCES "adp"."rsh_jcxqfx_xqxx" ("reqnum") ON DELETE RESTRICT ON UPDATE RESTRICT;

-- ----------------------------
-- Foreign Keys structure for table rsh_jcxqfx_xqxx_mbxx
-- ----------------------------
ALTER TABLE "adp"."rsh_jcxqfx_xqxx_mbxx" ADD CONSTRAINT "fk_rsh_jcxq_reference_rsh_jcxq" FOREIGN KEY ("reqnum") REFERENCES "adp"."rsh_jcxqfx_xqxx" ("reqnum") ON DELETE RESTRICT ON UPDATE RESTRICT;

-- ----------------------------
-- Foreign Keys structure for table rsh_jcxqfx_xqxx_tqxx
-- ----------------------------
ALTER TABLE "adp"."rsh_jcxqfx_xqxx_tqxx" ADD CONSTRAINT "fk_rsh_jcxq_reference_rsh_jcxq" FOREIGN KEY ("targrtnum") REFERENCES "adp"."rsh_jcxqfx_xqxx" ("reqnum") ON DELETE RESTRICT ON UPDATE RESTRICT;
