/*****************************************************************
  File:			NWLabsSchema.sql
  Description:	Used for creating the objects
				into the NWLabs schema for MSSQL
  Created:		November 29, 2016
  Modified:		November 29, 2016
  Authors:		Klynt Yardley, Jaden Feddock, Jess Clapier, Matt Christensen
  Version:     1.0
******************************************************************/
Use master;
GO

Drop Database NWLabs;
GO

Create Database NWLabs;
Go

USE NWLabs;
GO

--Drop Table Assay
--Drop Table Assay_Test
--Drop Table Compound
--Drop Table Compound_Item
--Drop Table Customers
--Drop Table Employees
--Drop Table Files
--Drop Table Invoice
--Drop Table Material
--Drop Table Offices
--Drop Table Payment
--Drop Table Position
--Drop Table Quotes
--Drop Table Sample
--Drop Table Test
--Drop Table Test_Material
--Drop Table Test_Results
--Drop Table Test_Schedule
--Drop Table Test_Tube
--Drop Table WorkOrders
--Drop Table Orders_Quotes
--GO

--Creating Table 'Invoice'
CREATE TABLE [Invoice] (
  [Invoice_ID] int,
  [DueDate] datetime,
  [EarlyDate] datetime,
  [EarlyDiscount] decimal,
  [TotalCost] money,
  PRIMARY KEY ([Invoice_ID])
);

--CreatingTable 'Orders_Quotes'
CREATE TABLE [Orders_Quotes] (
  [Quote_ID] int,
  [WorkOrder_ID] int,
  CONSTRAINT PK_OrdersQuotes PRIMARY KEY(Quote_ID, WorkOrder_ID)
);



--Creating Table 'Employees'
CREATE TABLE [Employees] (
  [Emp_ID] int,
  [EmpFirstName] nvarchar(25),
  [EmpLastName] nvarchar(25),
  [EmpAddress] nvarchar(50),
  [EmpCity] nvarchar(30),
  [EmpState] nvarchar(2),
  [EmpZipCode] nvarchar(10),
  [EmpAreaCode] smallint,
  [EmpPhoneNumber] nvarchar(8),
  [EmpEmail] nvarchar(50),
  [Office_ID] int,
  [Position_ID] int,
  PRIMARY KEY ([Emp_ID])
);

CREATE INDEX [FK] ON  [Employees] ([Office_ID], [Position_ID]);

--Creating Table 'Compound'
CREATE TABLE [Compound] (
  [Compound_ID] int,
  [CompoundName] nvarchar(50),
  PRIMARY KEY ([Compound_ID])
);

--Creating Table 'Compound_Item'
CREATE TABLE [Compound_Item] (
  [LT_Number] int,
  [Compound_ID] int,
  [Quantity] int,
  [DateArrived] datetime,
  [ReceivedBy] nvarchar(30),
  [DateDue] datetime,
  [EstimatedWeight] decimal,
  [ActualWeight] decimal,
  [MoelcularMass] decimal,
  [ReceiveConfirmation] bit,
  [MTD] decimal,
  [WorkOrder_ID] int,
  [Status] nvarchar(30),
  [AllTests] bit,
  PRIMARY KEY ([LT_Number])
);

CREATE INDEX [FK] ON  [Compound_Item] ([Compound_ID], [WorkOrder_ID]);

--Creating Table 'Sample'
CREATE TABLE [Sample] (
  [Sample_ID] int,
  [LT_Number] int,
  [SequenceCode] int,
  [Appearance] nvarchar(30),
  [Weight] decimal,
  [Molecular Mass] decimal,
  PRIMARY KEY ([Sample_ID])
);

CREATE INDEX [FK] ON  [Sample] ([LT_Number]);

--Creating Table 'TestTube_ID'
CREATE TABLE [Test_Tube] (
  [TestTube_ID] int,
  [Sample_ID] int,
  [Concentration] decimal,
  [Test_ID] int,
  PRIMARY KEY ([TestTube_ID])
);

CREATE INDEX [FK] ON  [Test_Tube] ([Sample_ID], [Test_ID]);

--Creating Table 'Assay_Test'
CREATE TABLE [Assay_Test] (
  [Assay_ID] int,
  [Test_ID] int,
  [IsRequired] bit
  CONSTRAINT PK_Assay_Test PRIMARY KEY(Assay_ID, Test_ID)
);

CREATE INDEX [PK/FK] ON  [Assay_Test] ([Assay_ID], [Test_ID]);

--Creating Table 'Test_Schedule'
CREATE TABLE [Test_Schedule] (
  [SampleTest_ID] int,
  [Sample_ID] int,
  [Assay_ID] int,
  [Test_ID] int,
  [ScheduledDate] datetime,
  PRIMARY KEY ([SampleTest_ID])
);

CREATE INDEX [FK] ON  [Test_Schedule] ([Sample_ID], [Assay_ID], [Test_ID]);

--Creating Table 'WorkOrders'
CREATE TABLE [WorkOrders] (
  [WorkOrder_ID] int,
  [Customer_ID] int,
  [Comment] nvarchar(50),
  [Discount] money,
  [IsRushed] bit,
  [Invoice_ID] int,
  PRIMARY KEY ([WorkOrder_ID])
);

CREATE INDEX [FK] ON  [WorkOrders] ([Customer_ID], [Invoice_ID]);

--Creating Table 'Payment'
CREATE TABLE [Payment] (
  [Payment_ID] int,
  [Customer_ID] int,
  [PaymentType] nvarchar(30),
  [CardNumber] nvarchar(16),
  [ExpirationDate] datetime,
  PRIMARY KEY ([Payment_ID])
);

CREATE INDEX [FK] ON  [Payment] ([Customer_ID]);

--Creating Table 'Files'
CREATE TABLE [Files] (
  [FileNumber] int,
  [Result_ID] int,
  [FileName] nvarchar(30),
  [Emp_ID] int,
  [HoursWorked] decimal,
  [IsActive] bit,
  PRIMARY KEY ([FileNumber])
);

CREATE INDEX [FK] ON  [Files] ([Result_ID], [Emp_ID]);

--Creating Table 'Position'
CREATE TABLE [Position] (
  [Position_ID] int,
  [PositionName] nvarchar(20),
  [PositionDescription] nvarchar(25),
  [PayMethod] nvarchar(20),
  PRIMARY KEY ([Position_ID])
);

--Creating Table 'Test'
CREATE TABLE [Test] (
  [Test_ID] int,
  [TestDescription] nvarchar(30),
  [BasePrice] money,
  PRIMARY KEY ([Test_ID])
);

--Creating Table 'Offices'
CREATE TABLE [Offices] (
  [Office_ID] int,
  [Location] nvarchar(30),
  [Phone] nvarchar(10),
  PRIMARY KEY ([Office_ID])
);

--Creating Table 'Assay'
CREATE TABLE [Assay] (
  [Assay_ID] int,
  [AssayType] nvarchar(30),
  [Protocol] nvarchar(30),
  [EstimatedDays] int,
  PRIMARY KEY ([Assay_ID])
);

--Creating Table 'Material'
CREATE TABLE [Material] (
  [Material_ID] int,
  [Description] nvarchar(50),
  [CostPerUnit] money,
  PRIMARY KEY ([Material_ID])
);

--Creating Table 'Quotes'
CREATE TABLE [Quotes] (
  [Quote_ID] Int,
  [Assay_ID] Int,
  [Compound_ID] Int,
  [Price] money
  PRIMARY KEY(Quote_ID)
);

CREATE INDEX [PK/FK] ON  [Quotes] ([Assay_ID], [Compound_ID]);

--Creating Table 'Test_Material'
CREATE TABLE [Test_Material] (
  [Test_ID] int,
  [Material_ID] int,
  [QuantityRequired] int
  CONSTRAINT PK_TestMaterial PRIMARY KEY(Test_ID, Material_ID)
);

CREATE INDEX [PK/FK] ON  [Test_Material] ([Test_ID], [Material_ID]);

--Creating Table 'Test_Results'
CREATE TABLE [Test_Results] (
  [Result_ID] int,
  [SampleTest_ID] int,
  [ResultDate] datetime,
  [Emp_ID] int,
  [HoursWorked] decimal,
  [IsActive] bit,
  PRIMARY KEY ([Result_ID])
);

CREATE INDEX [FK] ON  [Test_Results] ([SampleTest_ID], [Emp_ID]);

--Creating Table 'Customers'
CREATE TABLE [Customers] (
  [Customer_ID] int,
  [CustFirstName] nvarchar(25),
  [CustLastName] nvarchar(25),
  [CustAddress] nvarchar(50),
  [CustCity] nvarchar(30),
  [CustState] nvarchar(2),
  [CustZipCode] nvarchar(10),
  [CustPhoneNumber] nvarchar(10),
  [CustEmail] nvarchar(50),
  [AccountBalance] money,
  PRIMARY KEY ([Customer_ID])
);

--  NWLabs.ind

---- Creating Index 'Assay_Test_FK'
CREATE INDEX Assay_Test_FK ON Assay_Test
 (Assay_ID
 , Test_ID)
GO

---- Creating Index 'CompItem_FK'
CREATE INDEX CompItem_FK ON Compound_Item
 (Compound_ID, WorkOrder_ID)
GO

---- Creating Index 'CompItem_FK'
CREATE INDEX Files_FK ON Files
 (Result_ID, Emp_ID)
GO

---- Creating Index 'CompItem_FK'
CREATE INDEX Payment_FK ON Payment
 (Customer_ID)
GO

---- Creating Index 'Quotes_FK'
CREATE INDEX Quotes_FK ON Quotes
 (Assay_ID, Compound_ID, Price)
GO

---- Creating Index 'Quotes_FK'
CREATE INDEX Sample_FK ON Sample
 (LT_Number)
GO

---- Creating Index 'Quotes_FK'
CREATE INDEX Results_FK ON Test_Results
 (Result_ID, SampleTest_ID, Emp_ID)
GO

---- Creating Index 'Schedule_FK'
CREATE INDEX Schedule_FK ON Test_Schedule
 (Sample_ID, Assay_ID, Test_ID)
GO

---- Creating Index 'Schedule_FK'
CREATE INDEX Test_Tube_FK ON Test_Tube
 (Sample_ID, Test_ID)
GO

---- Creating Index 'Schedule_FK'
CREATE INDEX Work_Order_Cust ON WorkOrders
 (Customer_ID)
GO

---- Creating Index 'Schedule_FK'
CREATE INDEX Work_Order_Invoice ON WorkOrders
 (Invoice_ID)
GO




-- Add Constraints
--ALTER TABLE Employees DROP CONSTRAINT FK_EmployeePositionID;
ALTER TABLE Employees
	ADD CONSTRAINT FK_EmployeePositionID FOREIGN KEY(Position_ID) REFERENCES Position(Position_ID);

--ALTER TABLE Employees DROP CONSTRAINT FK_EmployeeOfficeID;
ALTER TABLE Employees
	ADD CONSTRAINT FK_EmployeeOfficeID FOREIGN KEY(Office_ID) REFERENCES Offices(Office_ID);

--ALTER TABLE Compound_Item DROP CONSTRAINT FK_CompoundItemCompID;
ALTER TABLE Compound_Item
	ADD CONSTRAINT FK_CompoundItemCompID FOREIGN KEY(Compound_ID) REFERENCES Compound(Compound_ID);

--ALTER TABLE Compound_Item DROP CONSTRAINT FK_CompoundItemWorkOrder;
ALTER TABLE Compound_Item
	ADD CONSTRAINT FK_CompoundItemWorkOrder FOREIGN KEY(WorkOrder_ID) REFERENCES WorkOrders(WorkOrder_ID)

--ALTER TABLE Sample DROP CONSTRAINT FK_SampleLTNumber;
ALTER TABLE Sample
	ADD CONSTRAINT FK_SampleLTNumber FOREIGN KEY(LT_Number) REFERENCES Compound_Item(LT_Number)

--ALTER TABLE Test_Tube DROP CONSTRAINT FK_Tube_SampleID;
ALTER TABLE Test_Tube
	ADD CONSTRAINT FK_Tube_SampleID FOREIGN KEY(Sample_ID) REFERENCES Sample(Sample_ID)

--ALTER TABLE Test_Tube DROP CONSTRAINT FK_TubeTestID;
ALTER TABLE Test_Tube
	ADD CONSTRAINT FK_TubeTestID FOREIGN KEY(Test_ID) REFERENCES Test(Test_ID)

--ALTER TABLE Assay_Test DROP CONSTRAINT FK_AssayID;
ALTER TABLE Assay_Test
	ADD CONSTRAINT FK_AssayID FOREIGN KEY(Assay_ID) REFERENCES Assay(Assay_ID)

--ALTER TABLE Assay_Test DROP CONSTRAINT FK_AssayTestID;
ALTER TABLE Assay_Test
	ADD CONSTRAINT FK_AssayTestID FOREIGN KEY(Test_ID) REFERENCES Test(Test_ID)

--ALTER TABLE Test_Schedule DROP CONSTRAINT FK_ScheduleSample;
ALTER TABLE Test_Schedule
	ADD CONSTRAINT FK_ScheduleSample FOREIGN KEY(Sample_ID) REFERENCES Sample(Sample_ID)

--ALTER TABLE Test_Schedule DROP CONSTRAINT FK_ScheduleAssay;
ALTER TABLE Test_Schedule
	ADD CONSTRAINT FK_ScheduleAssay FOREIGN KEY(Assay_ID) REFERENCES Assay(Assay_ID)

--ALTER TABLE Test_Schedule DROP CONSTRAINT FK_ScheduleTest;
ALTER TABLE Test_Schedule
	ADD CONSTRAINT FK_ScheduleTest FOREIGN KEY(Test_ID) REFERENCES Test(Test_ID)

--ALTER TABLE WorkOrders DROP CONSTRAINT FK_OrderCustomer;
ALTER TABLE WorkOrders
	ADD CONSTRAINT FK_OrderCustomer FOREIGN KEY(Customer_ID) REFERENCES Customers(Customer_ID)

--ALTER TABLE WorkOrders DROP CONSTRAINT FK_OrderInvoice;
ALTER TABLE WorkOrders
	ADD CONSTRAINT FK_OrderInvoice FOREIGN KEY(Invoice_ID) REFERENCES Invoice(Invoice_ID)

--ALTER TABLE Payment DROP CONSTRAINT FK_PaymentCustomer;
ALTER TABLE Payment
	ADD CONSTRAINT FK_PaymentCustomer FOREIGN KEY(Customer_ID) REFERENCES Customers(Customer_ID)

--ALTER TABLE Files DROP CONSTRAINT FK_FileResultID;
ALTER TABLE Files
	ADD CONSTRAINT FK_FileResultID FOREIGN KEY(Result_ID) REFERENCES Test_Results(Result_ID)

--ALTER TABLE Files DROP CONSTRAINT FK_FileEmpID;
ALTER TABLE Files
	ADD CONSTRAINT FK_FileEmpID FOREIGN KEY(Emp_ID) REFERENCES Employees(Emp_ID)

--ALTER TABLE Quotes DROP CONSTRAINT FK_QuoteAssay;
ALTER TABLE Quotes
	ADD CONSTRAINT FK_QuoteAssay FOREIGN KEY(Assay_ID) REFERENCES Assay(Assay_ID)

--ALTER TABLE Quotes DROP CONSTRAINT FK_QuoteCompound;
ALTER TABLE Quotes
	ADD CONSTRAINT FK_QuoteCompound FOREIGN KEY(Compound_ID) REFERENCES Compound(Compound_ID)

--ALTER TABLE Test_Material DROP CONSTRAINT FK_TestID;
ALTER TABLE Test_Material
	ADD CONSTRAINT FK_TestID FOREIGN KEY(Test_ID) REFERENCES Test(Test_ID)

--ALTER TABLE Test_Material DROP CONSTRAINT FK_MaterialID;
ALTER TABLE Test_Material
	ADD CONSTRAINT FK_MaterialID FOREIGN KEY(Material_ID) REFERENCES Material(Material_ID)

--ALTER TABLE Test_Results DROP CONSTRAINT FK_ResultTestID;
ALTER TABLE Test_Results
	ADD CONSTRAINT FK_ResultTestID FOREIGN KEY(SampleTest_ID) REFERENCES Test_Schedule(SampleTest_ID)

--ALTER TABLE Test_Results DROP CONSTRAINT FK_ResultEmpID;
ALTER TABLE Test_Results
	ADD CONSTRAINT FK_ResultEmpID FOREIGN KEY(Emp_ID) REFERENCES Employees(Emp_ID)

--
--ALTER TABLE Orders_Quotes DROP CONSTRAINT FK_ResultTestID;
ALTER TABLE Orders_Quotes
	ADD CONSTRAINT FK_OrderQuoteID FOREIGN KEY(Quote_ID) REFERENCES Quotes(Quote_ID)

--ALTER TABLE Orders_Quotes DROP CONSTRAINT FK_ResultEmpID;
ALTER TABLE Orders_Quotes
	ADD CONSTRAINT FK_WorkOrderID FOREIGN KEY(WorkOrder_ID) REFERENCES WorkOrders(WorkOrder_ID)