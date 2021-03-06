--------------------------------------------------------
-- Archivo creado  - mi�rcoles-diciembre-07-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table AD_ALBOROTADORES
--------------------------------------------------------

  CREATE TABLE "HR"."AD_ALBOROTADORES" 
   (	"ALBOROTADOR_ID" NUMBER(10,0), 
	"NOMBRE" VARCHAR2(40 BYTE), 
	"DNI" VARCHAR2(10 BYTE), 
	"FECHA_NACIMIENTO" DATE, 
	"AFICION_ID" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "HR"."AD_ALBOROTADORES"."ALBOROTADOR_ID" IS 'ID DEL ALBOROTADOR';
   COMMENT ON COLUMN "HR"."AD_ALBOROTADORES"."NOMBRE" IS 'NOMBRE';
   COMMENT ON COLUMN "HR"."AD_ALBOROTADORES"."DNI" IS 'IDENTIFICACION';
   COMMENT ON COLUMN "HR"."AD_ALBOROTADORES"."FECHA_NACIMIENTO" IS 'NACIMIENTO';
   COMMENT ON COLUMN "HR"."AD_ALBOROTADORES"."AFICION_ID" IS 'AFICION A LA QUE PERTENECE';
--------------------------------------------------------
--  DDL for Index AD_ALBOROTADORES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."AD_ALBOROTADORES_PK" ON "HR"."AD_ALBOROTADORES" ("ALBOROTADOR_ID", "AFICION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table AD_ALBOROTADORES
--------------------------------------------------------

  ALTER TABLE "HR"."AD_ALBOROTADORES" ADD CONSTRAINT "AD_ALBOROTADORES_PK" PRIMARY KEY ("ALBOROTADOR_ID", "AFICION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."AD_ALBOROTADORES" MODIFY ("AFICION_ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."AD_ALBOROTADORES" MODIFY ("FECHA_NACIMIENTO" NOT NULL ENABLE);
  ALTER TABLE "HR"."AD_ALBOROTADORES" MODIFY ("DNI" NOT NULL ENABLE);
  ALTER TABLE "HR"."AD_ALBOROTADORES" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "HR"."AD_ALBOROTADORES" MODIFY ("ALBOROTADOR_ID" NOT NULL ENABLE);
