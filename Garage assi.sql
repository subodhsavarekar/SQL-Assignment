------------Garage system -----------


CREATE TABLE Customer_table
(
CID NUMBER PRIMARY KEY,
CNAME VARCHAR2(100),
CADD VARCHAR2(100),
C_CONTACT NUMBER,
C_CREDITDAYS NUMBER,
CJ_DATE DATE,
SEX VARCHAR2(100)
);

INSERT INTO Customer_table(CID,CNAME,CADD,C_CONTACT,C_CREDITDAYS,CJ_DATE,SEX)
VALUES (1001,'Cyona blake','NEW YORK',1235684,20,to_date('20-JAN-2011', 'dd-mm-yyyy'),'FEMALE');
INSERT INTO Customer_table(CID,CNAME,CADD,C_CONTACT,C_CREDITDAYS,CJ_DATE,SEX)
VALUES (1002,'JOHN SMITH','NEW JERSI',1341684,20,to_date('21-FEB-2011', 'dd-mm-yyyy'),'MALE');
INSERT INTO Customer_table(CID,CNAME,CADD,C_CONTACT,C_CREDITDAYS,CJ_DATE,SEX)
VALUES (1003,'JORDAN WOOD','PRAG',1805184,20,to_date('22-MAR-2011', 'dd-mm-yyyy'),'MALE');
INSERT INTO Customer_table(CID,CNAME,CADD,C_CONTACT,C_CREDITDAYS,CJ_DATE,SEX)
VALUES (1004,'CHRISTNA','MANHATTON',1125684,31,to_date('23-APR-2013', 'dd-mm-yyyy'),'FEMALE');
INSERT INTO Customer_table(CID,CNAME,CADD,C_CONTACT,C_CREDITDAYS,CJ_DATE,SEX)
VALUES (1005,'TOM HILL','LONDON',1239284,10,to_date('25-JUN-2015', 'dd-mm-yyyy'),'MALE');
INSERT INTO Customer_table(CID,CNAME,CADD,C_CONTACT,C_CREDITDAYS,CJ_DATE,SEX)
VALUES (1006,'KAMILA JOSEF','PARISE',124568,9,to_date('28-JUL-2011', 'dd-mm-yyyy'),'FEMALE');
INSERT INTO Customer_table(CID,CNAME,CADD,C_CONTACT,C_CREDITDAYS,CJ_DATE,SEX)
VALUES (1007,'ANDRU SYMON','TAXES',125654,15,to_date('01-APR-2016', 'dd-mm-yyyy'),'MALE');
INSERT INTO Customer_table(CID,CNAME,CADD,C_CONTACT,C_CREDITDAYS,CJ_DATE,SEX)
VALUES (1008,'SUNJU SAMSUNG','NEW YORK',12346341,4,to_date('20-JAN-2016', 'dd-mm-yyyy'),'MALE');

SELECT * FROM Customer_table;


CREATE TABLE Vendors_table
(
VID NUMBER PRIMARY KEY,
VNAME VARCHAR2(100),
VADD VARCHAR(100),
VCONTACT NUMBER,
VCREDITDAYS NUMBER,
VJ_DATE DATE
);

INSERT INTO Vendors_table(VID,VNAME,VADD,VCONTACT,VCREDITDAYS,VJ_DATE)
VALUES (2001,'KIRAN PATIL','PUNE',20535535,20,to_date('20-JAN-2010', 'dd-mm-yyyy'));
INSERT INTO Vendors_table(VID,VNAME,VADD,VCONTACT,VCREDITDAYS,VJ_DATE)
VALUES (2002,'PRAKASH JAIN','MUMBAI',2063564,10,to_date('05-NOV-2011', 'dd-mm-yyyy'));
INSERT INTO Vendors_table(VID,VNAME,VADD,VCONTACT,VCREDITDAYS,VJ_DATE)
VALUES (2003,'SWAPNIL THETE','NASHIK',25355352,15,to_date('18-MAR-2010', 'dd-mm-yyyy'));
INSERT INTO Vendors_table(VID,VNAME,VADD,VCONTACT,VCREDITDAYS,VJ_DATE)
VALUES (2004,'AMOL SHENDE','SATARA',23674776,18,to_date('07-APR-2015', 'dd-mm-yyyy'));
INSERT INTO Vendors_table(VID,VNAME,VADD,VCONTACT,VCREDITDAYS,VJ_DATE)
VALUES (2005,'KARAN SINTRE','BULDHANA',256756,30,to_date('22-APR-2009', 'dd-mm-yyyy'));
INSERT INTO Vendors_table(VID,VNAME,VADD,VCONTACT,VCREDITDAYS,VJ_DATE)
VALUES (2006,'RAM KULKARNI','OSMANABAD',20367454,21,to_date('09-JUL-2010', 'dd-mm-yyyy'));

SELECT * FROM Vendors_table;



CREATE TABLE Employee_table
(
EID NUMBER PRIMARY KEY,
ENAME VARCHAR2(100),
EJOB VARCHAR2(100),
EADD VARCHAR2 (100),
ECONTACT NUMBER,
ESAL NUMBER,
EDOJ DATE,
EDOL DATE
);

INSERT INTO Employee_table(EID,ENAME,EJOB,EADD,ECONTACT,ESAL,EDOJ,EDOL)
VALUES (3001,'STEVEN KING','PAINTER','NEW YORK',10367454,1200,to_date('09-JUL-2010', 'dd-mm-yyyy'),NULL);
INSERT INTO Employee_table(EID,ENAME,EJOB,EADD,ECONTACT,ESAL,EDOJ,EDOL)
VALUES (3002,'DAVID AUSTIN','FITTER','MAN HATON',10367434,1100,to_date('19-AUG-2010', 'dd-mm-yyyy'),NULL);
INSERT INTO Employee_table(EID,ENAME,EJOB,EADD,ECONTACT,ESAL,EDOJ,EDOL)
VALUES (3003,'BRUCE ERNST','MECHANIC','NEW JERSEY', 10367264,2200,to_date('08-SEP-2010', 'dd-mm-yyyy'),NULL);
INSERT INTO Employee_table(EID,ENAME,EJOB,EADD,ECONTACT,ESAL,EDOJ,EDOL)
VALUES (3004,'LUIS POPP','MECHANIC','NEW JERSEY',10367264,1700,to_date('19-OCT-2009', 'dd-mm-yyyy'),to_date('06-SEP-2010', 'dd-mm-yyyy'));
INSERT INTO Employee_table(EID,ENAME,EJOB,EADD,ECONTACT,ESAL,EDOJ,EDOL)
VALUES (3005,'SHERI GOMES','FITTER','PARIS',10327264,1000,to_date('19-OCT-2009', 'dd-mm-yyyy'),to_date('01-AUG-2010', 'dd-mm-yyyy'));
INSERT INTO Employee_table(EID,ENAME,EJOB,EADD,ECONTACT,ESAL,EDOJ,EDOL)
VALUES (3000,'JAMES PHILLIP','FITTER','PARIS',10322264,NULL,to_date('01-JAN-2008', 'dd-mm-yyyy'),NULL);

SELECT * FROM Employee_table;


CREATE TABLE Sparepart_table
(
SPID NUMBER PRIMARY KEY,
SPNAME VARCHAR2(250),
SPRATE NUMBER,
SPUNIT VARCHAR2(100)
);

INSERT INTO Sparepart_table(SPID,SPNAME,SPRATE,SPUNIT)
VALUES (4001, 'TWO WHEELER TUBE', 250, 'NOS');
INSERT INTO Sparepart_table(SPID,SPNAME,SPRATE,SPUNIT)
VALUES (4002, 'TWO WHEELER ENGINE OIL', 400, 'LTRS');
INSERT INTO Sparepart_table(SPID,SPNAME,SPRATE,SPUNIT)
VALUES (4003, 'FOUR WHEELER ENGINE OIL', 5000, 'LTRS');
INSERT INTO Sparepart_table(SPID,SPNAME,SPRATE,SPUNIT)
VALUES (4004, 'TWO WHEELER CARBORATOR', 680, 'NOS');
INSERT INTO Sparepart_table(SPID,SPNAME,SPRATE,SPUNIT)
VALUES (4005, 'TWO WHEELER CLUTCH WIRE', 129, 'MTRS');
INSERT INTO Sparepart_table(SPID,SPNAME,SPRATE,SPUNIT)
VALUES (4006, 'TWO WHEELER TAIIL LIGHT', 100, 'NOS');
INSERT INTO Sparepart_table(SPID,SPNAME,SPRATE,SPUNIT)
VALUES (4007, 'TWO WHEELER INDICATORS', 150, 'NOS');
INSERT INTO Sparepart_table(SPID,SPNAME,SPRATE,SPUNIT)
VALUES (4008, 'FOUR WHEELER GASKIT', 1340, 'NOS');
INSERT INTO Sparepart_table(SPID,SPNAME,SPRATE,SPUNIT)
VALUES (4009, 'WHITE COLOUR', 340, 'LTRS');
INSERT INTO Sparepart_table(SPID,SPNAME,SPRATE,SPUNIT)
VALUES (4010, 'BLACK COLOUR', 240, 'LTRS');
INSERT INTO Sparepart_table(SPID,SPNAME,SPRATE,SPUNIT)
VALUES (4011, 'TWO WHEELER SIDE MIRROR', 250, 'NOS');
INSERT INTO Sparepart_table(SPID,SPNAME,SPRATE,SPUNIT)
VALUES (4012, 'FOUR WHEELER SIDE MIRROR', 450, 'NOS');
INSERT INTO Sparepart_table(SPID,SPNAME,SPRATE,SPUNIT)
VALUES (4013, 'TWO WHEELER SHOCKUP', 1320, 'PAIR');
INSERT INTO Sparepart_table(SPID,SPNAME,SPRATE,SPUNIT)
VALUES (4014, 'FOUR WHEELER BUMPER', 6000, 'NOS');
INSERT INTO Sparepart_table(SPID,SPNAME,SPRATE,SPUNIT)
VALUES (4015, 'FOUR WHEELER FRONT GLASS', 7000, 'PCS');

SELECT * FROM Sparepart_table;


CREATE TABLE Purchase_table
(
PID NUMBER PRIMARY KEY,
VID NUMBER ,
SPID NUMBER ,
PQTY NUMBER,
SPRATE NUMBER,
SPGST DECIMAL(10, 2),
PDATE DATE,
TRANCOST NUMBER,
TOTAL DECIMAL(10, 2),
RCV_EID NUMBER,
FOREIGN KEY (VID) REFERENCES Vendors_table(VID),
FOREIGN KEY (SPID) REFERENCES Sparepart_table(SPID),
FOREIGN KEY (RCV_EID) REFERENCES Employee_table(EID)
);

INSERT INTO Purchase_table(PID,VID,SPID,PQTY,SPRATE,SPGST,PDATE,TRANCOST,TOTAL,RCV_EID)
VALUES (5001, 2001, 4001, 10, 250, 350,to_date('01-JAN-2011', 'dd-mm-yyyy'), 1300, 4150, 3001);
INSERT INTO Purchase_table(PID,VID,SPID,PQTY,SPRATE,SPGST,PDATE,TRANCOST,TOTAL,RCV_EID)
VALUES (5002, 2002, 4002, 4, 400, 288,to_date('02-MAR-2011', 'dd-mm-yyyy'), 100, 1988, 3001);
INSERT INTO Purchase_table(PID,VID,SPID,PQTY,SPRATE,SPGST,PDATE,TRANCOST,TOTAL,RCV_EID)
VALUES (5003, 2003, 4004, 8, 680, 761.6,to_date('12-JUN-2011', 'dd-mm-yyyy'), 50, 6251.6, 3003);
INSERT INTO Purchase_table(PID,VID,SPID,PQTY,SPRATE,SPGST,PDATE,TRANCOST,TOTAL,RCV_EID)
VALUES (5004, 2004, 4005, 10, 129, 154.8,to_date('22-AUG-2011', 'dd-mm-yyyy'), 125, 1569.8, 3004);
INSERT INTO Purchase_table(PID,VID,SPID,PQTY,SPRATE,SPGST,PDATE,TRANCOST,TOTAL,RCV_EID)
VALUES (5005, 2005, 4006, 20, 100, 300,to_date('07-SEP-2011', 'dd-mm-yyyy'), 20, 2320, 3003);
INSERT INTO Purchase_table(PID,VID,SPID,PQTY,SPRATE,SPGST,PDATE,TRANCOST,TOTAL,RCV_EID)
VALUES (5006, 2006, 4007, 30, 150, 630,to_date('12-OCT-2011', 'dd-mm-yyyy'), 60, 5190, 3004);
INSERT INTO Purchase_table(PID,VID,SPID,PQTY,SPRATE,SPGST,PDATE,TRANCOST,TOTAL,RCV_EID)
VALUES (5007, 2001, 4003, 20, 5000, 14000,to_date('07-SEP-2011', 'dd-mm-yyyy'), 1000, 115000, 3001);
INSERT INTO Purchase_table(PID,VID,SPID,PQTY,SPRATE,SPGST,PDATE,TRANCOST,TOTAL,RCV_EID)
VALUES (5008, 2006, 4005, 1, 129, 15.48,to_date('12-OCT-2011', 'dd-mm-yyyy'), 50, 194.48, 3005);
INSERT INTO Purchase_table(PID,VID,SPID,PQTY,SPRATE,SPGST,PDATE,TRANCOST,TOTAL,RCV_EID)
VALUES (5009, 2006, 4005, 1, 129, 15.48,to_date('15-OCT-2011', 'dd-mm-yyyy'), 50, 194.48, 3005);
INSERT INTO Purchase_table(PID,VID,SPID,PQTY,SPRATE,SPGST,PDATE,TRANCOST,TOTAL,RCV_EID)
VALUES (5010, 2006, 4009, 5, 340, 0,to_date('20-OCT-2011', 'dd-mm-yyyy'), 0, 2938, 3005);

SELECT * FROM Purchase_table;


CREATE TABLE ser_det 
(
SID NUMBER PRIMARY KEY,
CID NUMBER,
EID NUMBER,
SPID NUMBER,
TYP_VEH VARCHAR2(50),
VEH_NO VARCHAR2(20),
TYP_SER VARCHAR2(100),
SER_DATE DATE,
QTY DECIMAL(5, 1),
SP_RATE DECIMAL(10, 1),
SP_AMT DECIMAL(10, 1),
SP_GST DECIMAL(10, 1),
SER_AMT DECIMAL(10, 1),
COMM DECIMAL(10, 1),
TOTAL DECIMAL(10, 1),
FOREIGN KEY (CID) REFERENCES Customer_table(CID),
FOREIGN KEY (EID) REFERENCES Employee_table(EID),
FOREIGN KEY (SPID) REFERENCES Sparepart_table(SPID)
);

INSERT INTO ser_det(SID,CID,EID,SPID,TYP_VEH,VEH_NO,TYP_SER,SER_DATE,QTY,SP_RATE,SP_AMT,SP_GST,SER_AMT,COMM,TOTAL)
VALUES (6001, 1001, 3001, 4001, 'TWO WHEELER', 'MH15CA3228', 'TUBE DAMAGED', to_date('02-JAN-2011', 'dd-mm-yyyy'), 1, 250, 250, 35, 50, 0, 335);
INSERT INTO ser_det(SID,CID,EID,SPID,TYP_VEH,VEH_NO,TYP_SER,SER_DATE,QTY,SP_RATE,SP_AMT,SP_GST,SER_AMT,COMM,TOTAL)
VALUES (6002, 1002, 3002, 4002, 'TWO WHEELER', 'MH-16U5713', 'FULL SERVICING', to_date('04-MAR-2011', 'dd-mm-yyyy'), 1, 400, 400, 52, 300, 50, 752);
INSERT INTO ser_det(SID,CID,EID,SPID,TYP_VEH,VEH_NO,TYP_SER,SER_DATE,QTY,SP_RATE,SP_AMT,SP_GST,SER_AMT,COMM,TOTAL)
VALUES (6003, 1003, 3004, 4005, 'TWO WHEELER', 'MH12PQ1313', 'CLUCH WIRE',to_date('22-AUG-2011', 'dd-mm-yyyy'), 1, 129, 129, 0, 10, 0, 139);
INSERT INTO ser_det(SID,CID,EID,SPID,TYP_VEH,VEH_NO,TYP_SER,SER_DATE,QTY,SP_RATE,SP_AMT,SP_GST,SER_AMT,COMM,TOTAL)
VALUES (6004, 1002, 3002, 4002, 'TWO WHEELER', 'MH-16U5713', 'FULL SERVICING',to_date('05-MAY-2011', 'dd-mm-yyyy'), 1, 400, 400, 52, 300, 50, 752);
INSERT INTO ser_det(SID,CID,EID,SPID,TYP_VEH,VEH_NO,TYP_SER,SER_DATE,QTY,SP_RATE,SP_AMT,SP_GST,SER_AMT,COMM,TOTAL)
VALUES (6005, 1004, 3001, 4009, 'TWO WHEELER', 'MH-14PA335', 'COLOR',to_date('21-OCT-2011', 'dd-mm-yyyy'), 2.5, 340, 850, 119, 500, 150, 1469);
INSERT INTO ser_det(SID,CID,EID,SPID,TYP_VEH,VEH_NO,TYP_SER,SER_DATE,QTY,SP_RATE,SP_AMT,SP_GST,SER_AMT,COMM,TOTAL)
VALUES (6006, 1006, 3001, 4009, 'TWO WHEELER', 'MH-12WE334', 'COLOR',to_date('01-DEC-2011', 'dd-mm-yyyy'), 2.5, 340, 850, 119, 500, 150, 1469);
INSERT INTO ser_det(SID,CID,EID,SPID,TYP_VEH,VEH_NO,TYP_SER,SER_DATE,QTY,SP_RATE,SP_AMT,SP_GST,SER_AMT,COMM,TOTAL)
VALUES (6007, 1007, 3001, 4001, 'FOUR WHEELER', 'MH17BB1345', 'TUBE DAMAGED',to_date('01-JAN-2012', 'dd-mm-yyyy'), 1, 250, 250, 35, 150, 0, 435);

SELECT * FROM ser_det;


-------------------------------------------


--Q.1 List all the customers serviced.

select s.cid, c.cname 
from ser_det s join customer_table c 
on s.cid=c.cid;

----Q.2 Customers who are not serviced.

select s.cid, c.cname 
from ser_det s join customer_table c 
on s.cid=c.cid

--Q.3 Employees who have not received the commission.
select * from Employee_table 
where eid in (
        select eid from SER_DET 
        where comm = 0);
        
--Q.4 Name the employee who have maximum Commission.
select e.eid , e.ename ,s.comm
from Employee_table e join ser_det s
on e.eid=s.eid
where s.comm=(select max(comm) from ser_det)
        

--Q.5 Show employee name and minimum commission amount received by an employee.

select e.ename , s.comm
from employee_table e join ser_det s
on e.eid=s.eid
where s.comm=(select min(comm) from ser_det)

--Q.6 Display the Middle record from any table.

--Q.7 Display last 4 records of any table.

--Q.8 Count the number of records without count function from any table.

--Q.9 Delete duplicate records from "Ser_det" table on cid.(note Please rollback after execution).

--Q.10 Show the name of Customer who have paid maximum amount 

select c.cid , c.cname
from Customer_table c join SER_DET s
on c.cid=s.cid
where s.total =(select max(total)from ser_det)

--Q.11 Display Employees who are not currently working.


--Q.12 How many customers serviced their two wheelers.

select count(cid) from ser_det
where typ_veh='TWO WHEELER';

--Q.14 Customers who have Colored their vehicles.

select s.cid,c.cname, s.typ_ser 
from ser_det s join customer_table c 
on s.cid=c.cid 
where s.typ_ser = 'COLOR';

--Q.15 Find the annual income of each employee inclusive of Commission

select eid, ename ,(esal*12) Annual_sal 
from employee_table

--Q.16 Vendor Names who provides the engine oil.

--Q.17 Total Cost to purchase the Color and name the color purchased.

select sp.spname, p.total 
from sparepart_table sp join purchase_table p 
on sp.spid=p.spid 
where sp.spname in('BLACK COLOUR','WHITE COLOUR');































