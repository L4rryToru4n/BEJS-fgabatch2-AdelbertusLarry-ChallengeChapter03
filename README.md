# Basic Banking System ER Diagram
## Introduction
Basic Banking System ER diagram shows the relationships between entities of clients, accounts and its operations. By viewing the ER diagram, the data structure of the system can be displayed in a clear and concise manner.

![basic_banking_system_erd](https://github.com/user-attachments/assets/ea200384-57da-4c11-a69a-626dbc9db1b1)

## Entities of Basic Banking System
There are five entities of Basic Banking System, these entities are:
- Client (Nasabah)
- Account (Akun)
- Transfer_Transaction (Transaksi_Transfer)
- Deposit_Transaction (Transaksi_Deposit)
- Withdrawal_Transaction (Transaksi_Penarikan)

The `Client` entity only has a relationship with the `Account` entity, while the entity of `Account` has relationships with `Transfer_Transaction`, `Deposit_Transaction` and `Withdarwal_Transaction`. Each entities and relationships explained in the sections below.

### Client (Nasabah)
`Client` entity has the following attributes:
- id [Primary Key]
- no_ktp (ID_number)
- nama (name)
- tgl_lahir (date_of_birth)
- alamat (address)
- nama_ibu (mother's_name)
- tgl_pembuatan (date_of_creation)

It has one-to-many relationships with `Account` entity, which means one client able to have many accounts.

### Account (Akun)
`Account` entity has the following attributes:
- id [Primary Key]
- id_nasabah (client_id)
- saldo (balance)
- tipe (type)
- tgl_pembuatan (date_of_creation)
- kantor_cabang (branch_office)
- jenis_tabungan (savings_type)

It has one-to-many relationships with `Transfer_Transaction` entity, `Deposit_Transaction` entity and `Withdrawal_Transaction` entity. These relationships means that one account able to have many transactions, categorized as either transfers, deposits or withdrawals.

### Transfer_Transaction (Transaksi_Transfer)
`Transfer_Transaction` entity has the following attributes:
- id [Primary Key]
- id_akun (account_id)
- id_akun_tujuan (designated_account_id)
- kode_transaksi (transaction_code)
- jenis_transaksi (type_of_transaction)
- deskripsi (description)
- jumlah (amount)
- waktu_transaksi (time_of_transaction)

It has many-to-one relationships with `Account` entity, which means many transfer transactions are possessed by one account.

### Deposit_Transaction (Transaksi_Deposit)
`Deposit_Transaction` entity has the following attributes:
- id [Primary Key]
- id_akun (account_id)
- kode_transaksi (transaction_code)
- jenis_transaksi (type_of_transaction)
- deskripsi (description)
- jumlah (amount)
- waktu_transaksi (time_of_transaction)

It has many-to-one relationships with `Account` entity, which means many deposit transactions are possessed by one account.

### Withdrawal_Transaction (Transaksi_Penarikan)
`Withdrawal_Transaction` entity has the following attributes:
- id [Primary Key]
- id_akun (account_id)
- kode_transaksi (transaction_code)
- jenis_transaksi (type_of_transaction)
- deskripsi (description)
- jumlah (amount)
- waktu_transaksi (time_of_transaction)

It has many-to-one relationships with `Account` entity, which means many withdrawal transactions are possessed by one account.

## Setup
In order to do demo, clone the project by typing this command into the terminal: 
```
git clone https://github.com/L4rryToru4n/bankaccount-binar-academy-be-chapter-03.git
```
or download the project then extract the .zip file.

## Usage Instructions
After downloading or cloning the repository, open the .sql files using a DB Administration Tool (e.g. Dbeaver) to view and run the queries.
