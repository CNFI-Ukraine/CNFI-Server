SET default_transaction_read_only = OFF;

-- SCHEMA inventory_archive
CREATE SCHEMA inventory_archive;
ALTER SCHEMA inventory_archive OWNER TO postgres;
COMMENT ON SCHEMA inventory_archive IS 'NIL';
GRANT USAGE ON SCHEMA inventory_archive TO anon, authenticated, service_role;
GRANT ALL ON ALL TABLES IN SCHEMA inventory_archive TO anon, authenticated, service_role;
GRANT ALL ON ALL ROUTINES IN SCHEMA inventory_archive TO anon, authenticated, service_role;
GRANT ALL ON ALL SEQUENCES IN SCHEMA inventory_archive TO anon, authenticated, service_role;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA inventory_archive GRANT ALL ON TABLES TO anon, authenticated, service_role;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA inventory_archive GRANT ALL ON ROUTINES TO anon, authenticated, service_role;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA inventory_archive GRANT ALL ON SEQUENCES TO anon, authenticated, service_role;


SET search_path TO inventory_archive;


-- SQL Dump of Nil.mdb
-- generated by MDB Viewer 7
-- optimized for PostgreSQL

SET NAMES 'UTF8';



DROP TABLE IF EXISTS "Derevo_";

CREATE TABLE "Derevo_" (
    "Key1" INTEGER,
    "Key2" INTEGER,
    "Uha_Id" INTEGER,
    "X" DOUBLE PRECISION,
    "Y" DOUBLE PRECISION,
    "Azimet" DOUBLE PRECISION,
    "Dastance" DOUBLE PRECISION,
    "GORDastance" DOUBLE PRECISION,
    "Uhil" DOUBLE PRECISION,
    "Tip_Der" INTEGER,
    "Diametr_Der" DOUBLE PRECISION,
    "Okrugnost_Der" DOUBLE PRECISION,
    "Status_Der" INTEGER,
    "Poroda_Der" INTEGER,
    "DiloDrowa_Der" INTEGER,
    "KlasKraft" INTEGER,
    "Rozvilka" INTEGER,
    "GiveSuche" INTEGER,
    "SanStan" INTEGER,
    "Pohkadgens" INTEGER,
    "Mitka" INTEGER,
    "JarusDerevo" INTEGER,
    "Defoliacia" INTEGER,
    "Dehromacia" INTEGER,
    "Visota_Derevo" DOUBLE PRECISION,
    "PenPerimert_Derevo" DOUBLE PRECISION,
    "PenDaimert_Derevo" DOUBLE PRECISION,
    "Krona_Giva_Derevo" DOUBLE PRECISION,
    "Krona_Mertva_Derevo" DOUBLE PRECISION,
    "Vik_Tarif" INTEGER,
    "Kora_Tarif" DOUBLE PRECISION,
    "ZZ5_Tarif" DOUBLE PRECISION,
    "ZZ10_Tarif" DOUBLE PRECISION,
    "DerevoSYHEChinik" INTEGER,
    "DerevoSYHEStadia" INTEGER,
    "Krona_Prot_Derevo" DOUBLE PRECISION,
    "RozVusotModel" DOUBLE PRECISION,
    "Visota_Model" DOUBLE PRECISION,
    "Obem_Model" DOUBLE PRECISION,
    "Vna1ga" DOUBLE PRECISION,
    "Kna1ga" DOUBLE PRECISION,
    "Dna1ga" DOUBLE PRECISION,
    "Hna1ga" DOUBLE PRECISION,
    "Sna1ga" DOUBLE PRECISION,
    PRIMARY KEY ( "Key1", "Key2" )
);


DROP TABLE IF EXISTS "DerevPochD_";

CREATE TABLE "DerevPochD_" (
    "Key1" INTEGER,
    "Key2" INTEGER,
    "Key3" INTEGER,
    "Tip_DerPochk" INTEGER,
    "Bazis_DerPochk" INTEGER,
    "Stupen_DerPochk" INTEGER,
    "Prichina_DerPochk" INTEGER,
    "Chinnik_DerPochk" INTEGER,
    "Chkidnik_DerPochk" INTEGER,
    "Hvoroba_DerPochk" INTEGER,
    PRIMARY KEY ( "Key1", "Key2", "Key3" )
);


DROP TABLE IF EXISTS "GeoMet_";

CREATE TABLE "GeoMet_" (
    "Key1" INTEGER,
    "Key2" INTEGER,
    "Key3" INTEGER,
    "Id" INTEGER,
    "X" DOUBLE PRECISION,
    "Y" DOUBLE PRECISION,
    "Azimet" DOUBLE PRECISION,
    "Dastance" DOUBLE PRECISION,
    "GORDastance" DOUBLE PRECISION,
    "Uhil" DOUBLE PRECISION,
    PRIMARY KEY ( "Key1", "Key2", "Key3" )
);


DROP TABLE IF EXISTS "GruntuuPofil_";

CREATE TABLE "GruntuuPofil_" (
    "Key1" INTEGER,
    "Key2" INTEGER,
    "Key3" INTEGER,
    "Nazva" INTEGER,
    "Size1" DOUBLE PRECISION,
    PRIMARY KEY ( "Key1", "Key2", "Key3" )
);


DROP TABLE IF EXISTS "I_Uha_";

CREATE TABLE "I_Uha_" (
    "Key1" INTEGER,
    "Key2" INTEGER,
    "ID" INTEGER,
    "Pocha" INTEGER,
    "GrupUgit" INTEGER,
    "VidUgit" INTEGER,
    "KatZem" INTEGER,
    "PoroGol" INTEGER,
    "PoroPerev" INTEGER,
    "Bonitet" INTEGER,
    "TLY" INTEGER,
    "MezoR" INTEGER,
    "MikroR" INTEGER,
    "Ekspoz" INTEGER,
    "Krutizna" INTEGER,
    "Pralis" INTEGER,
    "VikStruktur" INTEGER,
    "GospodarForma" INTEGER,
    "GospodarPravo" INTEGER,
    "GospodarLg" INTEGER,
    "GospodarLi" INTEGER,
    "GospodarKw" TEXT,
    "GospodarVD" TEXT,
    "GeoMet" TEXT,
    "TipGruntuu" INTEGER,
    "Ogolenost" INTEGER,
    "NameGrunt" INTEGER,
    "ZmitestGoriz" INTEGER,
    "FormGumus" INTEGER,
    "Pohirena" INTEGER,
    "MechSklad" INTEGER,
    "Haruvatost" INTEGER,
    "TipEroz" INTEGER,
    "Osuh" INTEGER,
    "Area1" DOUBLE PRECISION,
    "Area2" DOUBLE PRECISION,
    "Area3" DOUBLE PRECISION,
    "Area4" DOUBLE PRECISION,
    "Koef" DOUBLE PRECISION,
    "ClasVik" INTEGER,
    "Povnota" DOUBLE PRECISION,
    "Zapas" DOUBLE PRECISION,
    "GPeret" DOUBLE PRECISION,
    "DzProb" DOUBLE PRECISION,
    "HzProb" DOUBLE PRECISION,
    "AzProb" DOUBLE PRECISION,
    "PovnotaVID" DOUBLE PRECISION,
    PRIMARY KEY ( "Key1", "Key2" )
);


DROP TABLE IF EXISTS "I_ven_";

CREATE TABLE "I_ven_" (
    "Key1" INTEGER PRIMARY KEY,
    "DateEdit" INTEGER,
    "DateCreat" INTEGER,
    "DeviceID" INTEGER,
    "UserRols" INTEGER,
    "Versen" TEXT,
    "OldId" INTEGER,
    "WGS84_X" DOUBLE PRECISION,
    "WGS84_Y" DOUBLE PRECISION,
    "ID" INTEGER,
    "Name" TEXT,
    "Mag" DOUBLE PRECISION,
    "ChDrav" DOUBLE PRECISION,
    "ChXOD" DOUBLE PRECISION,
    "WStart" TEXT,
    "WClos" TEXT,
    "X0" DOUBLE PRECISION,
    "Y0" DOUBLE PRECISION,
    "WGS84_X1" DOUBLE PRECISION,
    "WGS84_Y1" DOUBLE PRECISION,
    "ZonaM" INTEGER,
    "ZonaF" INTEGER,
    "X1" DOUBLE PRECISION,
    "Y1" DOUBLE PRECISION,
    "DistLe" DOUBLE PRECISION,
    "Zana" TEXT,
    "WHR" DOUBLE PRECISION,
    "Doctup" INTEGER,
    "Status" INTEGER,
    "God" INTEGER,
    "Obla" INTEGER,
    "Raion" INTEGER,
    "UserGrupa" INTEGER,
    "User1" INTEGER,
    "ComentObjekat" TEXT,
    "FotoObjekat" TEXT
);


DROP TABLE IF EXISTS "Ivf_Bazis_DerPochk";

CREATE TABLE "Ivf_Bazis_DerPochk" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Bonitet";

CREATE TABLE "Ivf_Bonitet" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Chastka_Vpliv";

CREATE TABLE "Ivf_Chastka_Vpliv" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Chinnik_DerPochk";

CREATE TABLE "Ivf_Chinnik_DerPochk" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Chkidnik_DerPochk";

CREATE TABLE "Ivf_Chkidnik_DerPochk" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_ChsLia";

CREATE TABLE "Ivf_ChsLia" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_ChsRos";

CREATE TABLE "Ivf_ChsRos" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Chstka";

CREATE TABLE "Ivf_Chstka" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Davnist";

CREATE TABLE "Ivf_Davnist" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Davnist_Ponovlena_Pochkodg";

CREATE TABLE "Ivf_Davnist_Ponovlena_Pochkodg" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Defoliacia";

CREATE TABLE "Ivf_Defoliacia" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Dehromacia";

CREATE TABLE "Ivf_Dehromacia" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_DerevoSYHEChinik";

CREATE TABLE "Ivf_DerevoSYHEChinik" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_DerevoSYHEStadia";

CREATE TABLE "Ivf_DerevoSYHEStadia" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_DiloDrowa_Der";

CREATE TABLE "Ivf_DiloDrowa_Der" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Doctup";

CREATE TABLE "Ivf_Doctup" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Ekspoz";

CREATE TABLE "Ivf_Ekspoz" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_FormGumus";

CREATE TABLE "Ivf_FormGumus" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_GiveSuche";

CREATE TABLE "Ivf_GiveSuche" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Gnil";

CREATE TABLE "Ivf_Gnil" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_God";

CREATE TABLE "Ivf_God" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_GospodarForma";

CREATE TABLE "Ivf_GospodarForma" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_GospodarLg";

CREATE TABLE "Ivf_GospodarLg" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_GospodarLi";

CREATE TABLE "Ivf_GospodarLi" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER,
    PRIMARY KEY ( "I1", "Id" )
);


DROP TABLE IF EXISTS "Ivf_GospodarPravo";

CREATE TABLE "Ivf_GospodarPravo" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_GrunVisot";

CREATE TABLE "Ivf_GrunVisot" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_GrupUgit";

CREATE TABLE "Ivf_GrupUgit" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Haruvatost";

CREATE TABLE "Ivf_Haruvatost" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Hvoroba_DerPochk";

CREATE TABLE "Ivf_Hvoroba_DerPochk" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Jarus";

CREATE TABLE "Ivf_Jarus" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_JarusDerevo";

CREATE TABLE "Ivf_JarusDerevo" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_KatZem";

CREATE TABLE "Ivf_KatZem" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER,
    "Grupa" INTEGER
);


DROP TABLE IF EXISTS "Ivf_KlasKraft";

CREATE TABLE "Ivf_KlasKraft" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Kleimo";

CREATE TABLE "Ivf_Kleimo" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Krutizna";

CREATE TABLE "Ivf_Krutizna" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_MechSklad";

CREATE TABLE "Ivf_MechSklad" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_MezoR";

CREATE TABLE "Ivf_MezoR" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_MikroR";

CREATE TABLE "Ivf_MikroR" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Mitka";

CREATE TABLE "Ivf_Mitka" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Najavnist";

CREATE TABLE "Ivf_Najavnist" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_NameGrunt";

CREATE TABLE "Ivf_NameGrunt" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Nazva";

CREATE TABLE "Ivf_Nazva" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Obla";

CREATE TABLE "Ivf_Obla" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER,
    "Area" DOUBLE PRECISION,
    "PointCount" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Ogolenost";

CREATE TABLE "Ivf_Ogolenost" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Osuh";

CREATE TABLE "Ivf_Osuh" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_PenUh";

CREATE TABLE "Ivf_PenUh" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Pochkodgenna_Ponovlena";

CREATE TABLE "Ivf_Pochkodgenna_Ponovlena" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Pochodgena_Ponovlena";

CREATE TABLE "Ivf_Pochodgena_Ponovlena" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Pochodgenna";

CREATE TABLE "Ivf_Pochodgenna" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Pohirena";

CREATE TABLE "Ivf_Pohirena" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Pohkadgens";

CREATE TABLE "Ivf_Pohkadgens" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Poroda";

CREATE TABLE "Ivf_Poroda" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Poroda_Der";

CREATE TABLE "Ivf_Poroda_Der" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Poroda_Laman";

CREATE TABLE "Ivf_Poroda_Laman" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Poroda_Ponovlena";

CREATE TABLE "Ivf_Poroda_Ponovlena" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_PorodaPD";

CREATE TABLE "Ivf_PorodaPD" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_PoroGol";

CREATE TABLE "Ivf_PoroGol" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_PoroPerev";

CREATE TABLE "Ivf_PoroPerev" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Pozmachena";

CREATE TABLE "Ivf_Pozmachena" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Pralis";

CREATE TABLE "Ivf_Pralis" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Prichina_DerPochk";

CREATE TABLE "Ivf_Prichina_DerPochk" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Raion";

CREATE TABLE "Ivf_Raion" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Rozmechen_Laman";

CREATE TABLE "Ivf_Rozmechen_Laman" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Rozvilka";

CREATE TABLE "Ivf_Rozvilka" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_SanStan";

CREATE TABLE "Ivf_SanStan" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_StadGnil_Laman";

CREATE TABLE "Ivf_StadGnil_Laman" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Status";

CREATE TABLE "Ivf_Status" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Status_Der";

CREATE TABLE "Ivf_Status_Der" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Stupen_DerPochk";

CREATE TABLE "Ivf_Stupen_DerPochk" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Tip";

CREATE TABLE "Ivf_Tip" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Tip_Der";

CREATE TABLE "Ivf_Tip_Der" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Tip_DerPochk";

CREATE TABLE "Ivf_Tip_DerPochk" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Tip_Laman";

CREATE TABLE "Ivf_Tip_Laman" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Tip_Ponovlena";

CREATE TABLE "Ivf_Tip_Ponovlena" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Tip_Vpliv";

CREATE TABLE "Ivf_Tip_Vpliv" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_TipEroz";

CREATE TABLE "Ivf_TipEroz" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_TipGeometrija";

CREATE TABLE "Ivf_TipGeometrija" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_TipGruntuu";

CREATE TABLE "Ivf_TipGruntuu" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_TipMitka";

CREATE TABLE "Ivf_TipMitka" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_TLY";

CREATE TABLE "Ivf_TLY" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_User1";

CREATE TABLE "Ivf_User1" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_UserGrupa";

CREATE TABLE "Ivf_UserGrupa" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_Vid_Vpliv";

CREATE TABLE "Ivf_Vid_Vpliv" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_VidLia";

CREATE TABLE "Ivf_VidLia" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_VidRos";

CREATE TABLE "Ivf_VidRos" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_VidUgit";

CREATE TABLE "Ivf_VidUgit" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_VikStruktur";

CREATE TABLE "Ivf_VikStruktur" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Ivf_ZmitestGoriz";

CREATE TABLE "Ivf_ZmitestGoriz" (
    "I2" INTEGER,
    "I1" INTEGER,
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Name1" TEXT,
    "PR" INTEGER
);


DROP TABLE IF EXISTS "Jarus_";

CREATE TABLE "Jarus_" (
    "Key1" INTEGER,
    "Key2" INTEGER,
    "Key3" INTEGER,
    "Jarus" INTEGER,
    "Poroda" INTEGER,
    "AbsolPovnot" INTEGER,
    "Vik" INTEGER,
    "Vosota" DOUBLE PRECISION,
    "Diametr" DOUBLE PRECISION,
    "Pochodgenna" INTEGER,
    "Kilkist" DOUBLE PRECISION,
    PRIMARY KEY ( "Key1", "Key2", "Key3" )
);


DROP TABLE IF EXISTS "Laman_";

CREATE TABLE "Laman_" (
    "Key1" INTEGER,
    "Key2" INTEGER,
    "Id" INTEGER,
    "Uha_Id" INTEGER,
    "X1" DOUBLE PRECISION,
    "Y1" DOUBLE PRECISION,
    "Azimet1" DOUBLE PRECISION,
    "Dastance1" DOUBLE PRECISION,
    "GORDastance1" DOUBLE PRECISION,
    "Uhil1" DOUBLE PRECISION,
    "X2" DOUBLE PRECISION,
    "Y2" DOUBLE PRECISION,
    "Azimet2" DOUBLE PRECISION,
    "Dastance2" DOUBLE PRECISION,
    "GORDastance2" DOUBLE PRECISION,
    "Uhil2" DOUBLE PRECISION,
    "Tip_Laman" INTEGER,
    "Rozmechen_Laman" INTEGER,
    "Poroda_Laman" INTEGER,
    "Dlina_Laman" DOUBLE PRECISION,
    "Diam1_Laman" DOUBLE PRECISION,
    "Diam2_Laman" DOUBLE PRECISION,
    "StadGnil_Laman" INTEGER,
    PRIMARY KEY ( "Key1", "Key2" )
);


DROP TABLE IF EXISTS "Mitki_";

CREATE TABLE "Mitki_" (
    "Key1" INTEGER,
    "Key2" INTEGER,
    "Id" INTEGER,
    "TipMitka" INTEGER,
    "TipGeometrija" INTEGER,
    "Coment" TEXT,
    PRIMARY KEY ( "Key1", "Key2" )
);


DROP TABLE IF EXISTS "PenGnil_";

CREATE TABLE "PenGnil_" (
    "Key1" INTEGER,
    "Key2" INTEGER,
    "Key3" INTEGER,
    "Tip" INTEGER,
    "Pozmin" DOUBLE PRECISION,
    "Chstka" DOUBLE PRECISION,
    PRIMARY KEY ( "Key1", "Key2", "Key3" )
);


DROP TABLE IF EXISTS "PidlisokA_";

CREATE TABLE "PidlisokA_" (
    "Key1" INTEGER,
    "Key2" INTEGER,
    "Key3" INTEGER,
    "PorodaPD" INTEGER,
    "Chstka" INTEGER,
    PRIMARY KEY ( "Key1", "Key2", "Key3" )
);


DROP TABLE IF EXISTS "Pni_";

CREATE TABLE "Pni_" (
    "Key1" INTEGER,
    "Key2" INTEGER,
    "Id" INTEGER,
    "Uha_Id" INTEGER,
    "X" DOUBLE PRECISION,
    "Y" DOUBLE PRECISION,
    "Azimet" DOUBLE PRECISION,
    "Dastance" DOUBLE PRECISION,
    "GORDastance" DOUBLE PRECISION,
    "Uhil" DOUBLE PRECISION,
    "Diametr" DOUBLE PRECISION,
    "Poroda" INTEGER,
    "Davnist" INTEGER,
    "Gnil" INTEGER,
    "PenUh" INTEGER,
    "Kleimo" INTEGER,
    "Visota" DOUBLE PRECISION,
    "Vik" INTEGER,
    "Kora" DOUBLE PRECISION,
    PRIMARY KEY ( "Key1", "Key2" )
);


DROP TABLE IF EXISTS "Ponov_Pochkodg_";

CREATE TABLE "Ponov_Pochkodg_" (
    "Key1" INTEGER,
    "Key2" INTEGER,
    "Key3" INTEGER,
    "Key4" INTEGER,
    "Id" INTEGER,
    "Tip_Ponovlena" INTEGER,
    "Kilkist_Ponovlena_Pochkodg" INTEGER,
    "Davnist_Ponovlena_Pochkodg" INTEGER,
    PRIMARY KEY ( "Key1", "Key2", "Key3", "Key4" )
);


DROP TABLE IF EXISTS "Ponov_Xarak_";

CREATE TABLE "Ponov_Xarak_" (
    "Key1" INTEGER,
    "Key2" INTEGER,
    "Key3" INTEGER,
    "Id" INTEGER,
    "GrunVisot" INTEGER,
    "Poroda_Ponovlena" INTEGER,
    "DiametrSer_Ponovlena" DOUBLE PRECISION,
    "Vik_Ponovlena" INTEGER,
    "Pochodgena_Ponovlena" INTEGER,
    "Kilkist_Ponovlena" INTEGER,
    "Pochkodgenna_Ponovlena" INTEGER,
    PRIMARY KEY ( "Key1", "Key2", "Key3" )
);


DROP TABLE IF EXISTS "Ponovlen_";

CREATE TABLE "Ponovlen_" (
    "Key1" INTEGER,
    "Key2" INTEGER,
    "Id" INTEGER,
    "Najavnist" INTEGER,
    "Pozmachena" INTEGER,
    "Primitka" TEXT,
    PRIMARY KEY ( "Key1", "Key2" )
);


DROP TABLE IF EXISTS "Roslunu_";

CREATE TABLE "Roslunu_" (
    "Key1" INTEGER,
    "Key2" INTEGER,
    "Key3" INTEGER,
    "VidRos" INTEGER,
    "ChsRos" INTEGER,
    "VidLia" INTEGER,
    "ChsLia" INTEGER,
    PRIMARY KEY ( "Key1", "Key2", "Key3" )
);


DROP TABLE IF EXISTS "Sistem";

CREATE TABLE "Sistem" (
    "ID" INTEGER PRIMARY KEY
);


DROP TABLE IF EXISTS "Vpliv_";

CREATE TABLE "Vpliv_" (
    "Key1" INTEGER,
    "Key2" INTEGER,
    "Key3" INTEGER,
    "Tip_Vpliv" INTEGER,
    "Vid_Vpliv" INTEGER,
    "Chastka_Vpliv" INTEGER,
    PRIMARY KEY ( "Key1", "Key2", "Key3" )
);

