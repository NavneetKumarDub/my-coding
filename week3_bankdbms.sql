
create table Branches(
Branch_name varchar(20),
    Branch_city varchar(20),
    assets float,
    primary key(Branch_name)
);

create table BankAccount(
    accno int,
    branch_name varchar(20),
    balance float,
    primary key(accno),
    foreign key(branch_name) references Branches(branch_name)
);
create table BankCustomer(
customer_name varchar(20),
    customer_street varchar(40),
    customer_city varchar(20),
    primary key(customer_name)
);
create table Depositer(
customer_name varchar(20),
    accno int,
    primary key(customer_name),
    foreign key(customer_name) references BankCustomer(customer_name),
    foreign key(accno) references BankAccount(accno)
);
create table loan(
loan_number int,
    branch_name varchar(20),
    amount float,
    primary key(loan_number),
    foreign key(branch_name) references Branches(branch_name)
);

insert into Branches values ('SBI_Chamrajpet','Banglore',50000);
insert into Branches values ('SBI_ResidencyRoad','Banglore',10000);
insert into Branches values ('SBI_ShvajiRoad','Bombay',20000);
insert into Branches values ('SBI_ParliamentRoad','Delhi',10000);
insert into Branches values ('SBI_Jantarmantar','Delhi',20000);
select * from branches;

insert into BankAccount values (1,'SBI_Chamrajpet',2000);
insert into BankAccount values (2,'SBI_ResidencyRoad',5000);
insert into BankAccount values (3,'SBI_ShvajiRoad',6000);
insert into BankAccount values (4,'SBI_ParliamentRoad',9000);
insert into BankAccount values (5,'SBI_Jantarmantar',8000);
insert into BankAccount values (6,'SBI_ShivajiRoad',4000);
insert into BankAccount values (7,'SBI_ResidencyRoad',4000);
insert into BankAccount values (8,'SBI_ParliamentRoad',3000);
insert into BankAccount values (9,'SBI_ResidencyRoad',5000);
insert into BankAccount values (10,'SBI_Jantarmantar',2000);
select * from bankaccount;


insert into BankCustomer values ('avinash','bull_temple_road','banglore');
insert into BankCustomer values ('dinesh','bannergatta_road','banglore');
insert into BankCustomer values ('mohan','nationalcollege_road','banglore');
insert into BankCustomer values ('nikil','akbar_road','delhi');
insert into BankCustomer values ('ravi','prithviraj_road','delhi');
select*from bankcustomer;


insert into Depositer values('avinash',1);
insert into Depositer values('dinesh',2);
insert into Depositer values('nikil',4);
insert into Depositer values('ravi',5);
insert into Depositer values('avinash',8);
insert into Depositer values('nikil',8);
insert into Depositer values('dinesh',10);
insert into Depositer values('nikil',10);
select* from depositer;

insert into loan values (1,'SBI_Chamrajpet',1000);
insert into loan values (2,'SBI_ResidencyRoad',2000);
insert into loan values (3,'SBI_ShvajiRoad',3000);
insert into loan values (4,'SBI_ParliamentRoad',4000);s
insert into loan values (5,'SBI_Jantarmantar',5000);

select* from loan;
