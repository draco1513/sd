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

 Date: 12/05/2023 07:55:18
*/


-- ----------------------------
-- Table structure for distrito
-- ----------------------------
DROP TABLE IF EXISTS "public"."distrito";
CREATE TABLE "public"."distrito" (
  "iddistrito" int4 NOT NULL DEFAULT nextval('distrito_iddistrito_seq'::regclass),
  "distrito" text COLLATE "pg_catalog"."default" NOT NULL,
  "idprovincia" int4 NOT NULL DEFAULT 1
)
;

-- ----------------------------
-- Records of distrito
-- ----------------------------
INSERT INTO "public"."distrito" VALUES (1, 'Ancón', 1);
INSERT INTO "public"."distrito" VALUES (2, 'Ate Vitarte', 1);
INSERT INTO "public"."distrito" VALUES (3, 'Barranco', 1);
INSERT INTO "public"."distrito" VALUES (4, 'Breña', 1);
INSERT INTO "public"."distrito" VALUES (5, 'Carabayllo', 1);
INSERT INTO "public"."distrito" VALUES (6, 'Chaclacayo', 1);
INSERT INTO "public"."distrito" VALUES (7, 'Chorrillos', 1);
INSERT INTO "public"."distrito" VALUES (8, 'Cieneguilla', 1);
INSERT INTO "public"."distrito" VALUES (9, 'Comas', 1);
INSERT INTO "public"."distrito" VALUES (10, 'El Agustino', 1);
INSERT INTO "public"."distrito" VALUES (11, 'Independencia', 1);
INSERT INTO "public"."distrito" VALUES (12, 'Jesús María', 1);
INSERT INTO "public"."distrito" VALUES (13, 'La Molina', 1);
INSERT INTO "public"."distrito" VALUES (14, 'La Victoria ', 1);
INSERT INTO "public"."distrito" VALUES (15, 'Lima', 1);
INSERT INTO "public"."distrito" VALUES (16, 'Lince ', 1);
INSERT INTO "public"."distrito" VALUES (17, 'Los Olivos', 1);
INSERT INTO "public"."distrito" VALUES (18, 'Lurigancho', 1);
INSERT INTO "public"."distrito" VALUES (19, 'Lurín', 1);
INSERT INTO "public"."distrito" VALUES (20, 'Magdalena del Mar', 1);
INSERT INTO "public"."distrito" VALUES (21, 'Miraflores', 1);
INSERT INTO "public"."distrito" VALUES (22, 'Pachacamac', 1);
INSERT INTO "public"."distrito" VALUES (23, 'Pucusana', 1);
INSERT INTO "public"."distrito" VALUES (24, 'Pueblo Libre ', 1);
INSERT INTO "public"."distrito" VALUES (25, 'Puente Piedra', 1);
INSERT INTO "public"."distrito" VALUES (26, 'Punta Hermosa', 1);
INSERT INTO "public"."distrito" VALUES (27, 'Punta Negra', 1);
INSERT INTO "public"."distrito" VALUES (28, 'Rimac', 1);
INSERT INTO "public"."distrito" VALUES (29, 'San Bartolo ', 1);
INSERT INTO "public"."distrito" VALUES (30, 'San Borja', 1);
INSERT INTO "public"."distrito" VALUES (31, 'San Isidro', 1);

-- ----------------------------
-- Primary Key structure for table distrito
-- ----------------------------
ALTER TABLE "public"."distrito" ADD CONSTRAINT "distrito_pkey" PRIMARY KEY ("iddistrito");

-- ----------------------------
-- Foreign Keys structure for table distrito
-- ----------------------------
ALTER TABLE "public"."distrito" ADD CONSTRAINT "distrito_idprovincia_fkey" FOREIGN KEY ("idprovincia") REFERENCES "public"."provincia" ("idprovincia") ON DELETE NO ACTION ON UPDATE NO ACTION;
