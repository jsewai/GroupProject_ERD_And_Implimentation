-- ***********************
-- Group: F
-- Name: Woohyuk Kim - 121968176, 
--       Junya Sewai - 013019153,
--       Antonio Tersigni - 037872140
-- Date: December 1st, 2018
-- Purpose: Assignment 2 - DBS301
-- ***********************

CREATE TABLE condo
(
    condo_id        NUMBER(6,0),
    num_of_bedrooms NUMBER      NOT NULL,
    square_area     NUMBER(6,2) NOT NULL,
    maintenance_fee NUMBER(5,2) NOT NULL,
    
    CONSTRAINT condo_id_pk PRIMARY KEY (condo_id)
);

CREATE TABLE house
(
    house_id        NUMBER(6,0),
    num_of_bedrooms NUMBER      NOT NULL,
    square_area     NUMBER(6,2) NOT NULL,
    lot_size NUMBER(6,2)        NOT NULL,
    
    CONSTRAINT house_id_pk PRIMARY KEY (house_id)
);

CREATE TABLE school
(
    school_id   NUMBER(6,0),
    school_name VARCHAR2(30) NOT NULL,
    school_type VARCHAR2(25) NOT NULL,
    
    CONSTRAINT school_id_pk PRIMARY KEY (school_id)
);

CREATE TABLE area
(
    AREA_id         NUMBER(6,0),
    AREA_name       VARCHAR2(30) NOT NULL,
    STREET          VARCHAR2(40) NOT NULL,
    CITY            VARCHAR2(30) NOT NULL,
    PROVINCE        VARCHAR2(25) NOT NULL,
    POSTAL_CODE     VARCHAR2(12) NOT NULL,
    COMMENTS        VARCHAR2(50) NULL,
    SCHOOL_ID       NUMBER(6,0)  NOT NULL,
    
    CONSTRAINT AREA_id_pk PRIMARY KEY (AREA_id),
    CONSTRAINT SCHOOL_ID_FK FOREIGN KEY (SCHOOL_ID) REFERENCES SCHOOL(SCHOOL_ID)
);

CREATE TABLE agency
(
    agency_id         NUMBER(6,0),
    agency_name       VARCHAR2(35) NOT NULL,
    agency_phone_num  VARCHAR2(20) NOT NULL,
    
    CONSTRAINT agency_id_pk PRIMARY KEY (agency_id)
);

CREATE TABLE client
(
    client_id               NUMBER(6,0),
    fname                   VARCHAR2(25) NOT NULL,
    lname                   VARCHAR2(20) NOT NULL,
    contact_phone_num       VARCHAR2(20) NOT NULL,
    Contact_Type            VARCHAR2(25) NOT NULL,
    email                   VARCHAR2(25) NOT NULL,
    category                VARCHAR2(20) NOT NULL,  
    
    CONSTRAINT client_id_pk PRIMARY KEY (client_id)
);

CREATE TABLE reference
(
    reference_id   NUMBER(6,0),
    reference_fee  NUMBER(5,2) NOT NULL,
    client_id      NUMBER(6,0) NOT NULL,
    
    CONSTRAINT reference_id_pk PRIMARY KEY (reference_id),
    CONSTRAINT reference_client_id_fk FOREIGN KEY (client_id) REFERENCES client(client_id)
);

CREATE TABLE property -- SHOULD BE CREATED AT THE LAST. NEED UNIQUE KEY??
( 
    PROPERTY_ID NUMBER(6,0), 
    AREA_ID     NUMBER(6,0) NOT NULL, 
    CONDO_ID    NUMBER(6,0) NOT NULL,
    HOUSE_ID    NUMBER(6,0) NOT NULL,
    AGENCY_ID   NUMBER(6,0) NOT NULL,
    
    CONSTRAINT PROPERTY_ID_PK PRIMARY KEY (PROPERTY_ID),
    CONSTRAINT AREA_ID_FK FOREIGN KEY (AREA_ID) REFERENCES AREA(AREA_ID),
    CONSTRAINT CONDO_ID_FK FOREIGN KEY (CONDO_ID) REFERENCES CONDO(CONDO_ID),
    CONSTRAINT HOUSE_ID_FK FOREIGN KEY (HOUSE_ID) REFERENCES HOUSE(HOUSE_ID),
    CONSTRAINT AGENCY_ID_FK FOREIGN KEY (AGENCY_ID) REFERENCES AGENCY(AGENCY_ID)
);

CREATE TABLE ownership
(
    client_id               NUMBER(6,0),
    property_id             NUMBER(6,0),
    ownership_pct           VARCHAR2(20) NOT NULL,
    contact_type            VARCHAR2(25) NOT NULL,
    email                   VARCHAR2(25) NOT NULL,
    categories              VARCHAR2(20) NOT NULL,  
    
   CONSTRAINT client_property_PK PRIMARY KEY(client_id, property_id),
   CONSTRAINT ownership_property_id_fk FOREIGN KEY (property_id) REFERENCES property(property_id),
   CONSTRAINT client_id_fk FOREIGN KEY (client_id) REFERENCES client(client_id)
);

CREATE TABLE advertisement
(
    ad_id   NUMBER(6,0),
    ad_type VARCHAR2(20) NOT NULL,
    
    CONSTRAINT ad_id_pk PRIMARY KEY (ad_id)
);

CREATE TABLE ad_outlet
(
    ad_id               NUMBER(6,0),
    property_id         NUMBER(6,0),
    ad_name             VARCHAR2(30) NOT NULL,
    ad_outlet_phone_num VARCHAR2(20) NOT NULL,
    ad_date             DATE         NOT NULL,
    ad_cost             NUMBER(6,2)  NOT NULL,
    
    CONSTRAINT ad_id_property_id_pk PRIMARY KEY (ad_id, property_id),
    CONSTRAINT ad_id_fk FOREIGN KEY (ad_id) REFERENCES advertisement(ad_id),
    CONSTRAINT property_id_fk FOREIGN KEY (property_id) REFERENCES property(property_id)
);

-- Drop Tables
Drop table ad_outlet; 
Drop table ownership;
Drop table property;
Drop table condo;
Drop table house;
Drop table area;
Drop table school;
Drop table advertisement;
Drop table agency;
Drop table reference;
Drop table client;
