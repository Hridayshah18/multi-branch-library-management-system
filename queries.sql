Queries :
Q1) Show Issued Books with Member Name and Issue
Date
SELECT b.Title, m.Name, i.Issue_Date
FROM Issue_Record i
JOIN Member m ON i.Member_ID = m.Member_ID
JOIN Book_Copy bc ON i.Copy_ID = bc.Copy_ID
JOIN Book b ON bc.ISBN = b.ISBN
WHERE bc.Status = 'Issued';
Q2) Show Available Books with Branch Name
SELECT lb.Branch_Name, b.Title
FROM Book_Copy bc
JOIN Library_Branch lb ON bc.Branch_ID = lb.Branch_ID
JOIN Book b ON bc.ISBN = b.ISBN
WHERE bc.Status = 'Available';
Q3) Show Members Who Have Issued More Than One
Book
SELECT m.Name, COUNT(i.Issue_ID) AS Books_Issued
FROM Member m
JOIN Issue_Record i ON m.Member_ID = i.Member_ID
GROUP BY m.Name
HAVING COUNT(i.Issue_ID) > 1;
Q4) Show Number of Authors for Each Book
SELECT b.Title, COUNT(ba.Author_ID) AS Author_Count
FROM Book b
JOIN Book_Author ba ON b.ISBN = ba.ISBN
GROUP BY b.Title;
Q5) Find All Books with Publisher Name
SELECT b.Title, p.Publisher_Name
FROM Book b
JOIN Publisher p ON b.Publisher_ID = p.Publisher_ID;
Q6) Show Issued Books with Member Name
SELECT m.Name, b.Title, i.Issue_Date
FROM Issue_Record i
JOIN Member m ON i.Member_ID = m.Member_ID
JOIN Book_Copy bc ON i.Copy_ID = bc.Copy_ID
JOIN Book b ON bc.ISBN = b.ISBN;
Q7) Count Books in Each Branch
SELECT lb.Branch_Name, COUNT(bc.Copy_ID) AS Total_Books
FROM Library_Branch lb
JOIN Book_Copy bc ON lb.Branch_ID = bc.Branch_ID
GROUP BY lb.Branch_Name;
Q8) Members Who Have Not Returned Books
SELECT m.Name, b.Title
FROM Issue_Record i
JOIN Member m ON i.Member_ID = m.Member_ID
JOIN Book_Copy bc ON i.Copy_ID = bc.Copy_ID
JOIN Book b ON bc.ISBN = b.ISBN
WHERE i.Return_Date IS NULL;
Q9) Books with Multiple Authors
SELECT b.Title, COUNT(ba.Author_ID) AS Authors
FROM Book b
JOIN Book_Author ba ON b.ISBN = ba.ISBN
GROUP BY b.Title
HAVING COUNT(ba.Author_ID) > 1;
Q10) Total Books Issued by Each Member
SELECT m.Name, COUNT(i.Issue_ID) AS Total_Issued
FROM Member m
JOIN Issue_Record i ON m.Member_ID = i.Member_ID
GROUP BY m.Name;
Q11) Branch-wise Available Books
SELECT lb.Branch_Name, b.Title
FROM Book_Copy bc
JOIN Library_Branch lb ON bc.Branch_ID = lb.Branch_ID
JOIN Book b ON bc.ISBN = b.ISBN
WHERE bc.Status = 'Available';