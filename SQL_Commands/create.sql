create database RESORT_HOTEL

/*create tables w/o indication of PK & FK; PK & FK are added by 'Alter Table'*/
create table RESORTS
(
    RESORT_ID char(6) NOT NULL,
    RESO_NAME varchar(30) NOT NULL,
    RESO_PHONE char(12) NOT NULL,
    COUNTRY varchar(15) NOT NULL,
    CITY varchar(20) NOT NULL,
    PARKINGS int NULL
);

create table EMPLOYEES
(
    EMP_ID char(8) NOT NULL,
    EMP_F_NAME varchar(20) NOT NULL,
    EMP_L_NAME varchar(20) NOT NULL,
    EMP_PHONE char(12) NOT NULL,
    EMP_CITY varchar(20) NOT NULL,
    EMP_GENDER char(10) NOT NULL,
    JOB_TITLE varchar(15) NOT NULL,
    RESORT_ID char(6) NOT NULL
);

create table SERVICES
(
    SER_ID char(5) NOT NULL,
    SER_NAME varchar(25) NOT NULL,
    SER_TYPE varchar(25) NULL,
    SER_COST money NULL,
    EMP_ID char(8) NOT NULL
);

create table ROOMS
(
    ROOM_NO char(6) NOT NULL,
    ROOM_TYPE varchar(10) NOT NULL,
    BED_TYPE varchar(15) NOT NULL,
    NUM_OF_BEDS char(2) NOT NULL,
    ROOM_PRICE money NOT NULL,
    RESORT_ID char(6) NOT NULL
);

create table RES_ROOM
(
    RESROOM_ID char(10) NOT NULL,
    RES_ID char(6) NOT NULL,
    ROOM_NO char(6) NOT NULL
);

create table RESERVATIONS
(
    RES_ID char(6) NOT NULL,
    RES_DATE date NOT NULL,
    CHECK_IN_D date NOT NULL,
    CHECK_OUT_D date NOT NULL,
    NUM_GUESTS int NOT NULL,
    RES_STATUS varchar(15) NOT NULL,
    CUS_ID char(10) NOT NULL
);

create table CUSTOMERS
(
    CUS_ID char(10) NOT NULL,
    CUS_F_NAME varchar(20) NOT NULL,
    CUS_L_NAME varchar(20) NOT NULL,
    CUS_PHONE char(12) NOT NULL,
    CUS_COUNTRY varchar(15) NOT NULL,
    CUS_GENDER char(10) NOT NULL,
    CUS_DOB date NULL
);

create table BILLS
(
    BILL_NO char(10) NOT NULL,
    BILL_DATE date NOT NULL,
    BILL_TIME time NOT NULL,
    BILL_PRICE money NOT NULL,
    CASH_CREDIT char(10) NOT NULL,
    CUS_ID char(10) NOT NULL
);