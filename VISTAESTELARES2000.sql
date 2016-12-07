--------------------------------------------------------
-- Archivo creado  - mi�rcoles-diciembre-07-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for View ESTELARES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HR"."ESTELARES" ("NOMBRE EQUIPO", "JUGADOR", "SALARIO") AS 
  SELECT
AD_EQUIPO.NOMBRE,
AD_JUGADORES.NOMBRE,
AD_JUGADORES.SALARIO
FROM
AD_EQUIPO,
AD_JUGADORES
WHERE AD_JUGADORES.EQUIPO_ID = AD_EQUIPO.EQUIPO_ID
AND AD_JUGADORES.SALARIO > 2000;
