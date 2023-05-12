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

 Date: 12/05/2023 07:55:10
*/


-- ----------------------------
-- Table structure for cliente
-- ----------------------------
DROP TABLE IF EXISTS "public"."cliente";
CREATE TABLE "public"."cliente" (
  "idcliente" int4 NOT NULL DEFAULT nextval('cliente_idcliente_seq'::regclass),
  "idpersona" int4 NOT NULL
)
;

-- ----------------------------
-- Records of cliente
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table cliente
-- ----------------------------
ALTER TABLE "public"."cliente" ADD CONSTRAINT "cliente_pkey" PRIMARY KEY ("idcliente");

-- ----------------------------
-- Foreign Keys structure for table cliente
-- ----------------------------
ALTER TABLE "public"."cliente" ADD CONSTRAINT "cliente_idpersona_fkey" FOREIGN KEY ("idpersona") REFERENCES "public"."persona" ("idpersona") ON DELETE NO ACTION ON UPDATE NO ACTION;
