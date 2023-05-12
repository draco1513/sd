/*
 Navicat Premium Data Transfer

 Source Server         : postgres
 Source Server Type    : PostgreSQL
 Source Server Version : 150002 (150002)
 Source Host           : localhost:5432
 Source Catalog        : maxillaris
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 150002 (150002)
 File Encoding         : 65001

 Date: 12/05/2023 07:55:51
*/


-- ----------------------------
-- Table structure for telefono
-- ----------------------------
DROP TABLE IF EXISTS "public"."telefono";
CREATE TABLE "public"."telefono" (
  "idtelefono" int4 NOT NULL DEFAULT nextval('telefono_idtelefono_seq'::regclass),
  "idpersona" int4 NOT NULL,
  "teléfono" text COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of telefono
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table telefono
-- ----------------------------
ALTER TABLE "public"."telefono" ADD CONSTRAINT "telefono_pkey" PRIMARY KEY ("idtelefono");

-- ----------------------------
-- Foreign Keys structure for table telefono
-- ----------------------------
ALTER TABLE "public"."telefono" ADD CONSTRAINT "telefono_idpersona_fkey" FOREIGN KEY ("idpersona") REFERENCES "public"."persona" ("idpersona") ON DELETE NO ACTION ON UPDATE NO ACTION;
