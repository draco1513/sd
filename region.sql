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

 Date: 12/05/2023 07:55:44
*/


-- ----------------------------
-- Table structure for region
-- ----------------------------
DROP TABLE IF EXISTS "public"."region";
CREATE TABLE "public"."region" (
  "idregion" int4 NOT NULL DEFAULT nextval('region_idregion_seq'::regclass),
  "region" text COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of region
-- ----------------------------
INSERT INTO "public"."region" VALUES (1, 'Lima');

-- ----------------------------
-- Primary Key structure for table region
-- ----------------------------
ALTER TABLE "public"."region" ADD CONSTRAINT "region_pkey" PRIMARY KEY ("idregion");
