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

 Date: 12/05/2023 07:55:26
*/


-- ----------------------------
-- Table structure for paciente
-- ----------------------------
DROP TABLE IF EXISTS "public"."paciente";
CREATE TABLE "public"."paciente" (
  "idpaciente" int4 NOT NULL DEFAULT nextval('paciente_idpaciente_seq'::regclass),
  "idpersona" int4 NOT NULL
)
;

-- ----------------------------
-- Records of paciente
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table paciente
-- ----------------------------
ALTER TABLE "public"."paciente" ADD CONSTRAINT "paciente_pkey" PRIMARY KEY ("idpaciente");

-- ----------------------------
-- Foreign Keys structure for table paciente
-- ----------------------------
ALTER TABLE "public"."paciente" ADD CONSTRAINT "paciente_idpersona_fkey" FOREIGN KEY ("idpersona") REFERENCES "public"."persona" ("idpersona") ON DELETE NO ACTION ON UPDATE NO ACTION;
