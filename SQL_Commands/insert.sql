insert into RESORTS
values
    ('RESO01', 'Relaxy Resort (CAN)', '604-123-0123', 'Canada', 'Vancouver', 50),
    ('RESO02', 'Relaxy Resort (CAN)', '437-123-3210', 'Canada', 'Toronto', 20),
    ('RESO03', 'Relaxy Resort (CAN)', '418-321-0123', 'Canada', 'Quebec City', 30),
    ('RESO04', 'Relaxy Resort (CAN)', '780-778-8877', 'Canada', 'Edmonton', 70),
    ('RESO05', 'Relaxy Resort (CAN)', '867-090-1080', 'Canada', 'Whitehorse', 30),
    ('RESO06', 'Relaxy Resort (CAN)', '672-012-3456', 'Canada', 'Vernon', 10),
    ('RESO07', 'Relaxy Resort (AUS)', '029-876-6789', 'Australia', 'Canberra', 50),
    ('RESO08', 'Relaxy Resort (USA)', '801-888-7788', 'America', 'Salt Lake City', 30),
    ('RESO09', 'Relaxy Resort (MEX)', '555-521-1235', 'Mexico', 'Mexico City', 50),
    ('RESO10', 'Relaxy Resort (SWE)', '081-222-2233', 'Sweden', 'Stockholm', 30);

insert into EMPLOYEES
values
    ('EMP01', 'Eloise', 'Waters', '604-111-1122', 'Vancouver', 'Female', 'Supervisor', 'RESO01'),
    ('EMP02', 'Emmett', 'Smith', '604-222-2211', 'Vancouver', 'Male', 'Concierge', 'RESO01'),
    ('EMP03', 'Mae', 'Walker', '604-333-3322', 'Vancouver', 'Female', 'Cleaner', 'RESO01'),
    ('EMP04', 'Archer', 'Wringt', '604-555-3355', 'Vancouver', 'Male', 'Assistant Chef', 'RESO01'),
    ('EMP05', 'Embry', 'Cooper', '604-6666-677', 'Vancouver', 'Female', 'Chef', 'RESO01'),
    ('EMP06', 'Ellen', 'Chen', '416-111-6611', 'Toronto', 'Female', 'Supervisor', 'RESO02'),
    ('EMP07', 'Kevin', 'Lee', '416-222-6622', 'Toronto', 'Male', 'Concierge', 'RESO02'),
    ('EMP08', 'Jay', 'Chou', '416-333-6633', 'Toronto', 'Male', 'Cleaner', 'RESO02'),
    ('EMP09', 'Eric', 'Sigh', '416-555-6655', 'Toronto', 'Male', 'Fitness Coach', 'RESO02'),
    ('EMP10', 'Kelly', 'Kim', '416-666-6666', 'Toronto', 'Female', 'Chef', 'RESO02');

7
insert into SERVICES
values
    ('SER01', 'General Inquiries', 'Customer Service', NULL, 'EMP01'),
    ('SER02', 'Room Service', 'Customer Service', 10, 'EMP02'),
    ('SER03', 'Cleaning', 'Cleaning Service', 30, 'EMP03'),
    ('SER04', 'Food Preparation', 'Food Service', NULL, 'EMP04'),
    ('SER05', 'Food Serving', 'Food Service', 20, 'EMP04'),
    ('SER06', 'Cooking', 'Food Service', NULL, 'EMP05'),
    ('SER07', 'Baking', 'Food Service', NULL, 'EMP05'),
    ('SER08', 'Yoga Teaching', 'Health Service', 50, 'EMP09'),
    ('SER09', 'Weight Training', 'Health Service', 100, 'EMP09'),
    ('SER10', 'Zumba Teaching', 'Health Service', 20, 'EMP09');

insert into ROOMS
values
    ('ROOM01', 'Single', 'Twin-Size', '1', 150, 'RESO01'),
    ('ROOM02', 'Double', 'Queen-Size', '1', 250, 'RESO01'),
    ('ROOM03', 'Double', 'King-Size', '1', 350, 'RESO01'),
    ('ROOM04', 'Triple', 'Twin-Size', '3', 350, 'RESO01'),
    ('ROOM05', 'Quad', 'Queen-Size', '2', 400, 'RESO01'),
    ('ROOM06', 'Single', 'Twin-Size', '1', 150, 'RESO02'),
    ('ROOM07', 'Double', 'Queen-Size', '1', 250, 'RESO02'),
    ('ROOM08', 'Double', 'King-Size', '1', 350, 'RESO02'),
    ('ROOM09', 'Triple', 'Twin-Size', '3', 350, 'RESO02'),
    ('ROOM10', 'Quad', 'Queen-Size', '2', 400, 'RESO02');

insert into RESERVATIONS
values
    ('RES01', 'November 30, 2021', 'December 28, 2021', 'January 01, 2022', '1', 'Checked Out', 'CUS01'),
    ('RES02', 'November 29, 2021', 'December 29, 2021', 'January 02, 2022', '2', 'Checked Out', 'CUS02'),
    ('RES03', 'November 30, 2021', 'December 30, 2021', 'January 03, 2022', '2', 'Checked Out', 'CUS03'),
    ('RES04', 'November 29, 2021', 'January 01, 2022', 'January 05, 2022', '3', 'Checked Out', 'CUS04'),
    ('RES05', 'November 28, 2021', 'January 02, 2022', 'January 06, 2022', '4', 'Checked Out', 'CUS05'),
    ('RES06', 'November 29, 2021', 'January 02, 2022', 'January 06, 2022', '1', 'Checked Out', 'CUS06'),
    ('RES07', 'November 30, 2021', 'January 03, 2022', 'January 07, 2022', '2', 'Checked Out', 'CUS07'),
    ('RES08', 'November 29, 2021', 'January 04, 2022', 'January 08, 2022', '2', 'Checked Out', 'CUS08'),
    ('RES09', 'November 30, 2021', 'January 05, 2022', 'January 09, 2022', '3', 'Checked Out', 'CUS09'),
    ('RES10', 'November 29, 2021', 'January 06, 2022', 'January 10, 2022', '4', 'Checked Out', 'CUS10');

insert into RES_ROOM
values
    ('RESROOM01', 'RES01', 'ROOM01'),
    ('RESROOM02', 'RES02', 'ROOM02'),
    ('RESROOM03', 'RES03', 'ROOM03'),
    ('RESROOM04', 'RES04', 'ROOM04'),
    ('RESROOM05', 'RES05', 'ROOM05'),
    ('RESROOM06', 'RES06', 'ROOM01'),
    ('RESROOM07', 'RES07', 'ROOM02'),
    ('RESROOM08', 'RES08', 'ROOM03'),
    ('RESROOM09', 'RES09', 'ROOM04'),
    ('RESROOM10', 'RES10', 'ROOM05');

insert into CUSTOMERS
values
    ('CUS01', 'Susan', 'Shu', '659-876-5678', 'Singapore', 'Female', 'January 20, 1965'),
    ('CUS02', 'Donna', 'Tan', '601-123-3322', 'Malaysia', 'Female', 'February 28, 1963'),
    ('CUS03', 'Melody', 'Saetang', '662-650-5678', 'Thailand', 'Female', 'March 29, 1966'),
    ('CUS04', 'Phoebe', 'Sato', '815-553-2123', 'Japan', 'Female', 'March 08, 1978'),
    ('CUS05', 'Helena', 'Kim', '822-0122-332', 'Korea', 'Female', 'April 04, 1975'),
    ('CUS06', 'Harry', 'Lam', '840-260-332', 'Vietnam', 'Male', 'May 25, 1988'),
    ('CUS07', 'Timothy', 'Cai', '860-000-2312', 'China', 'Male', 'June 29, 1989'),
    ('CUS08', 'James', 'Waters', '604-223-1245', 'Canada', 'Male', 'July 07, 1990'),
    ('CUS09', 'Allen', 'Wu', '860-234-5674', 'China', 'Male', 'August 25, 1969'),
    ('CUS10', 'Leo', 'Lee', '882-987-7865', 'Korea', 'Male', 'September 01, 1996');

insert into BILLS
values
    ('BILL01', 'Jan 01, 2022', '12:00:00', 750, 'Cash', 'CUS01'),
    ('BILL02', 'Jan 02, 2022', '12:01:00', 1250, 'Credit', 'CUS02'),
    ('BILL03', 'Jan 03, 2022', '11:59:00', 1750, 'Credit', 'CUS03'),
    ('BILL04', 'Jan 05, 2022', '12:02:00', 1750, 'Cash', 'CUS04'),
    ('BILL05', 'Jan 06, 2022', '12:03:00', 2000, 'Credit', 'CUS05'),
    ('BILL06', 'Jan 06, 2022', '12:00:00', 750, 'Cash', 'CUS06'),
    ('BILL07', 'Jan 07, 2022', '11:58:00', 1250, 'Cash', 'CUS07'),
    ('BILL08', 'Jan 08, 2022', '11:55:00', 1750, 'Credit', 'CUS08'),
    ('BILL09', 'Jan 09, 2022', '11:56:00', 1750, 'Credit', 'CUS09'),
    ('BILL10', 'Jan 10, 2022', '12:00:00', 2000, 'Credit', 'CUS10');

