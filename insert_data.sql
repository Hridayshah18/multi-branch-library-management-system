INSERT INTO Library_Branch VALUES
(1, 'North Branch', 'Rohini', 'Delhi', '9000000001', 'north@lib.com'),
(2, 'East Branch', 'Laxmi Nagar', 'Delhi', '9000000002', 'east@lib.com'),
(3, 'South Branch', 'Saket', 'Delhi', '9000000003', 'south@lib.com'),
(4, 'West Branch', 'Janakpuri', 'Delhi', '9000000004', 'west@lib.com');
INSERT INTO Publisher VALUES
(1, 'Pearson', 'Delhi', '9100000001'),
(2, 'Springer', 'Mumbai', '9100000002'),
(3, 'McGraw Hill', 'Bangalore', '9100000003'),
(4, 'Oxford Press', 'Chennai', '9100000004');
INSERT INTO Book VALUES
('ISBN001', 'Database Systems', 2020, 1),
('ISBN002', 'Operating Systems', 2019, 2),
('ISBN003', 'Computer Networks', 2021, 3),
('ISBN004', 'Machine Learning', 2022, 4),
('ISBN005', 'Data Structures', 2018, 1);
INSERT INTO Author VALUES
(1, 'Korth', '1960-01-10', 'American'),
(2, 'Silberschatz', '1952-05-11', 'American'),
(3, 'Tanenbaum', '1950-03-16', 'Dutch'),
(4, 'Andrew Ng', '1976-04-18', 'American'),
(5, 'Mark Allen', '1980-07-20', 'British');
INSERT INTO Book_Author VALUES
('ISBN001', 1),
('ISBN002', 2),
('ISBN003', 3),
('ISBN004', 4),
('ISBN005', 5);
INSERT INTO Employee VALUES
(101, 'Riya', '8000000001', 'Delhi', 'Manager', 1),
(102, 'Aman', '8000000002', 'Delhi', 'Assistant', 2),
(103, 'Sneha', '8000000003', 'Delhi', 'Manager', 3),
(104, 'Karan', '8000000004', 'Delhi', 'Assistant', 4),
(105, 'Priya', '8000000005', 'Delhi', 'Librarian', 1);
INSERT INTO Member VALUES
(201, 'Rahul', '7000000001', 'rahul@mail.com', 'Delhi', 'Gold', '2024-01-10'),
(202, 'Simran', '7000000002', 'simran@mail.com', 'Delhi', 'Silver', '2024-02-15'),
(203, 'Arjun', '7000000003', 'arjun@mail.com', 'Delhi', 'Gold', '2024-03-01'),
(204, 'Neha', '7000000004', 'neha@mail.com', 'Delhi', 'Silver', '2024-03-10'),
(205, 'Kabir', '7000000005', 'kabir@mail.com', 'Delhi', 'Platinum', '2024-03-15');
INSERT INTO Book_Copy VALUES
(301, 'Available', 1001, 'ISBN001', 1),
(302, 'Issued', 1002, 'ISBN002', 2),
(303, 'Available', 1003, 'ISBN003', 3),
(304, 'Available', 1004, 'ISBN004', 4),
(305, 'Issued', 1005, 'ISBN005', 1),
(306, 'Available', 1006, 'ISBN001', 2),
(307, 'Issued', 1007, 'ISBN003', 3);
INSERT INTO Issue_Record VALUES
(401, '2024-03-01', '2024-03-11', '2024-03-08', 201, 101, 302),
(402, '2024-03-05', '2024-03-15', '2024-03-12', 202, 102, 301),
(403, '2024-03-07', '2024-03-17', NULL, 203, 103, 305),
(404, '2024-03-10', '2024-03-20', NULL, 204, 104, 307),
(405, '2024-03-12', '2024-03-22', NULL, 205, 105, 302);