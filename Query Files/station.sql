--------------------------------------------------------
--  File created - Wednesday-July-08-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table S20_1_STATION
--------------------------------------------------------

  CREATE TABLE "SXS1987"."S20_1_STATION" 
   (	"STATION_CODE" VARCHAR2(4), 
	"STATION_NAME" VARCHAR2(20), 
	"NO_OF_PLATFORMS" NUMBER(2,0), 
	"PHONE_NO" NUMBER(10,0)
   ) ;
REM INSERTING into SXS1987.S20_1_STATION
SET DEFINE OFF;
Insert into SXS1987.S20_1_STATION (STATION_CODE,STATION_NAME,NO_OF_PLATFORMS,PHONE_NO) values ('PNQ','PUNE',5,1234567890);
Insert into SXS1987.S20_1_STATION (STATION_CODE,STATION_NAME,NO_OF_PLATFORMS,PHONE_NO) values ('MUM','MUMBAI',14,2134567890);
Insert into SXS1987.S20_1_STATION (STATION_CODE,STATION_NAME,NO_OF_PLATFORMS,PHONE_NO) values ('HYD','HYDERABAD',4,4123567890);
Insert into SXS1987.S20_1_STATION (STATION_CODE,STATION_NAME,NO_OF_PLATFORMS,PHONE_NO) values ('BAN','BANGLORE',6,5123467890);
Insert into SXS1987.S20_1_STATION (STATION_CODE,STATION_NAME,NO_OF_PLATFORMS,PHONE_NO) values ('NDL','NEW_DELHI',15,6123457890);
Insert into SXS1987.S20_1_STATION (STATION_CODE,STATION_NAME,NO_OF_PLATFORMS,PHONE_NO) values ('JAI','JAPUR',4,9123456780);
--------------------------------------------------------
--  DDL for Index STATION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SXS1987"."STATION_PK" ON "SXS1987"."S20_1_STATION" ("STATION_CODE") 
  ;
--------------------------------------------------------
--  Constraints for Table S20_1_STATION
--------------------------------------------------------

  ALTER TABLE "SXS1987"."S20_1_STATION" ADD CONSTRAINT "STATION_PK" PRIMARY KEY ("STATION_CODE")
  USING INDEX  ENABLE;
  ALTER TABLE "SXS1987"."S20_1_STATION" MODIFY ("STATION_CODE" NOT NULL ENABLE);
