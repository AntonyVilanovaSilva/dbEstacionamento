Use master
go
Create Database dbEstacionamento
use dbEstacionamento
go

Create Table Marca(
MARID int identity(1,1) primary key,
MARDESCRICAO varchar(100) not null,
)
go

Create Table Veiculo (
VEIID int identity(1,1) primary key,
VEIPLACA varchar(10) not null,
COR varchar(10) null,
MARID int not null FOREIGN KEY REFERENCES Marca(MARID)
)
go

Create Table Vaga(
 VAIID int identity(1,1) primary key,
 VAINUMERO int not null UNIQUE
)
go

Create Table TicketVaga(
TICKID int identity(1,1) primary key,
VAIID int,
VEIID int,
DATAHORAENTRADA datetime,
DATAHORASAIDA datetime
)