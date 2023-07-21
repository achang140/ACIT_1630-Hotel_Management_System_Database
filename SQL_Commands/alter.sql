/*ALTER TABLE - Primary Key*/
ALTER TABLE RESORTS
    add constraint PK_RESORT
    primary key (RESORT_ID);

ALTER TABLE EMPLOYEES
    add constraint PK_EMP
    primary key (EMP_ID);

ALTER TABLE SERVICES
    add constraint PK_SER
    primary key (SER_ID);

ALTER TABLE ROOMS
    add constraint PK_ROOM
    primary key (ROOM_NO);

ALTER TABLE RES_ROOM
    add constraint PK_RESROOM
    primary key (RESROOM_ID);

ALTER TABLE RESERVATIONS
    add constraint PK_RES
    primary key (RES_ID);

ALTER TABLE CUSTOMERS
    add constraint PK_CUS
    primary key (CUS_ID);

ALTER TABLE BILLS
    add constraint PK_BILL
    primary key (BILL_NO);

/*Alter Table - Foreign Key*/
alter table EMPLOYEES
    add constraint FK_EMP
    foreign key (RESORT_ID)
        references RESORTS;

alter table SERVICES
    add constraint FK_SER
    foreign key (EMP_ID)
        references EMPLOYEES;

alter table ROOMS
    add constraint FK_ROOM
    foreign key (RESORT_ID)
        references RESORTS;

alter table RES_ROOM
    add constraint FK_RESROOM_RES
    foreign key (RES_ID)
        references RESERVATIONS,
    constraint FK_RESROOM_ROOM
    foreign key (ROOM_NO)
        references ROOMS;

alter table RESERVATIONS
    add constraint FK_RES
    foreign key (CUS_ID)
        references CUSTOMERS;

alter table BILLS
    add constraint FK_BILLS
    foreign key (CUS_ID)
        references CUSTOMERS;

/*Alter Table – Alter Column*/
alter table BILLS
alter column BILL_TIME TIME(0);