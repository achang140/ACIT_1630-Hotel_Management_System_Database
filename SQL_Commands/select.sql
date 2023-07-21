select * from RESORTS;

select * from EMPLOYEES;

select * from SERVICES;

select * from ROOMS;

select * from RESERVATIONS;

select * from RES_ROOM;

select * from CUSTOMERS;

select * from BILLS;

-- Inner Join 
-- The purpose of the query is to allow users, such as concierges, to check room reservations, 
-- including information such as RES_ID, ROOM_NO, ROOM_TYPE, CHECK_IN_DATE, and CHECK_OUT_DATE.

select RESERVATIONS.RES_ID, ROOMS.ROOM_NO, ROOMS.ROOM_TYPE,
    [Check_In_Date] = RESERVATIONS.CHECK_IN_D,
    [Check_Out_Date] = RESERVATIONS.CHECK_OUT_D
from ROOMS
inner join RES_ROOM on ROOMS.ROOM_NO = RES_ROOM.ROOM_NO
inner join RESERVATIONS on RES_ROOM.RES_ID = RESERVATIONS.RES_ID;

-- Outer Join 
-- The purpose of the query is to allow users, such as managers, to know the job responsibilities of the employees.
-- In this case, a supervisor wants to know the services provided to customers by EMP04 (Assistant Chef), EMP05 (Chef), and EMP09 (Fitness Coach).

select EMPLOYEES.EMP_ID,
    [EMP_NAME] = EMPLOYEES.EMP_L_NAME + ', ' + EMPLOYEES.EMP_F_NAME, EMPLOYEES.JOB_TITLE, SERVICES.SER_NAME, SERVICES.SER_COST
from EMPLOYEES
left outer join SERVICES on EMPLOYEES.EMP_ID = SERVICES.EMP_ID
where EMPLOYEES.EMP_ID in ('EMP04', 'EMP05', 'EMP09');

-- Subquery 
-- The purpose of the query is to allow users, such as concierges, to view a customer's reservation details, including reservation date, number of guests, and check in date.
-- In this case, a concierge checks the reservation details of CUS09 named Allen.

select RESERVATIONS.RES_ID, RESERVATIONS.RES_DATE, RESERVATIONS.NUM_GUESTS,
    [CHECK_IN_DATE] = RESERVATIONS.CHECK_IN_D
from RESERVATIONS
where CUS_ID =
    (select CUS_ID
    from CUSTOMERS
    where CUSTOMERS.CUS_ID = 'CUS09'
    AND CUSTOMERS.CUS_F_NAME = 'Allen');

-- Aggregate Function
-- The purpose of the query is to display the highest priced room, the lowest priced room, and the average price of all rooms in the resort hotel.

select [MIN_ROOM_PRICE] = min(ROOM_PRICE),
    [MAX_ROOM_PRICE] = max(ROOM_PRICE),
    [AVG_ROOM_PRICE] = avg(ROOM_PRICE)
from ROOMS;

-- Over Clause 
-- The purpose of the query is to display the average, subtotal, and cumulative of billed prices based on the ten customers.
-- The last row shows the average and (running) total bills of all the customers. The subtotals are totals for individual customers.

select BILL_NO, CUS_ID, BILL_PRICE,
    [AVERAGE_BILLS] = cast(avg(BILL_PRICE) over (order by BILL_NO) as decimal (10, 2)),
    [BILLS_SUB_TOTAL] = sum(BILL_PRICE) over (partition by BILL_NO),
    [BILLS_RUNNING_TOTAL] = sum(BILL_PRICE) over (order by BILL_NO)
from BILLS
order by BILL_NO;

-- The purpose of view is designed for concierges to access customers' detailed reservation information, 
-- including customer name, phone number, room number, room type, number of guests, check-in & check-out date, payment date and time, total payment, payment method, and reservation status.

create view CONCIERGE_VIEW
as
    select CUSTOMERS.CUS_ID,
    [CUS_NAME] = concat(CUSTOMERS.CUS_L_NAME, ', ', CUSTOMERS.CUS_F_NAME),
    CUSTOMERS.CUS_PHONE,
    ROOMS.ROOM_NO, ROOMS.ROOM_TYPE, RESERVATIONS.NUM_GUESTS,
    RESERVATIONS.CHECK_IN_D, RESERVATIONS.CHECK_OUT_D,
    [PAYMENT_DATE_TIME] = concat(BILLS.BILL_DATE, BILLS.BILL_TIME),
    BILLS.BILL_PRICE, BILLS.CASH_CREDIT, RESERVATIONS.RES_STATUS
from CUSTOMERS
inner join BILLS on CUSTOMERS.CUS_ID = BILLS.CUS_ID
inner join RESERVATIONS on CUSTOMERS.CUS_ID = RESERVATIONS.CUS_ID
inner join RES_ROOM on RESERVATIONS.RES_ID = RES_ROOM.RES_ID
inner join ROOMS on ROOMS.ROOM_NO = RES_ROOM.ROOM_NO;

select * from CONCIERGE_VIEW; 