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

 Date: 12/05/2023 07:55:36
*/


-- ----------------------------
-- Table structure for provincia
-- ----------------------------
DROP TABLE IF EXISTS "public"."provincia";
CREATE TABLE "public"."provincia" (
  "idprovincia" int4 NOT NULL DEFAULT nextval('provincia_idprovincia_seq'::regclass),
  "provincia" text COLLATE "pg_catalog"."default" NOT NULL,
  "idregion" int4 NOT NULL
)
;

-- ----------------------------
-- Records of provincia
-- ----------------------------
INSERT INTO "public"."provincia" VALUES (1, 'lima', 1);

-- ----------------------------
-- Primary Key structure for table provincia
-- ----------------------------
ALTER TABLE "public"."provincia" ADD CONSTRAINT "provincia_pkey" PRIMARY KEY ("idprovincia");

-- ----------------------------
-- Foreign Keys structure for table provincia
-- ----------------------------
ALTER TABLE "public"."provincia" ADD CONSTRAINT "provincia_idregion_fkey" FOREIGN KEY ("idregion") REFERENCES "public"."region" ("idregion") ON DELETE NO ACTION ON UPDATE NO ACTION;
