# 📘 SQL


## 📄 Spis Treści
- [📖 Wprowadzenie](#wprowadzenie)
- [🔧 Podstawowe Komendy](#podstawowe-komendy)
- [🛠️ Język Definicji Danych (DDL)](#język-definicji-danych-ddl)
- [📝 Język Manipulacji Danymi (DML)](#język-manipulacji-danymi-dml)
- [🔐 Język Kontroli Danych (DCL)](#język-kontroli-danych-dcl)
- [🔗 Joins (łączenia)](#joins-łączenia)
- [📑 Indeksy](#indeksy)
- [🔍 Widoki](#widoki)
- [🔣 Funkcje](#funkcje)
- [📋 Procedury składowane](#procedury-składowane)
- [📚 Teoria](#teoria)


## 📖 Wprowadzenie
SQL (Structured Query Language) to standardowy język zapytań używany do komunikacji z bazami danych. Został zaprojektowany do zarządzania i manipulacji danymi przechowywanymi w systemach zarządzania bazami danych (DBMS). SQL jest wszechstronny i używany w różnych typach baz danych, takich jak MySQL, PostgreSQL, SQLite, Microsoft SQL Server i Oracle.

### Dlaczego SQL jest ważny?
- **Łatwość użycia**: SQL ma prostą i przejrzystą składnię, co ułatwia naukę i stosowanie nawet przez osoby niebędące programistami.
- **Wszechstronność**: SQL umożliwia wykonywanie różnorodnych operacji na danych, od prostych zapytań po skomplikowane analizy danych.
- **Standard**: SQL jest standardowym językiem używanym przez większość systemów zarządzania bazami danych, co oznacza, że umiejętności SQL są przenośne między różnymi platformami.
- **Zarządzanie danymi**: SQL pozwala na tworzenie, modyfikowanie i usuwanie struktur baz danych oraz zarządzanie danymi za pomocą operacji takich jak wstawianie, aktualizacja, usuwanie i selekcja danych.

### Zastosowania SQL
- **Tworzenie i zarządzanie bazami danych**: SQL pozwala na definiowanie struktury bazy danych, tworzenie tabel, indeksów, widoków i procedur składowanych.
- **Manipulacja danymi**: SQL umożliwia wstawianie, aktualizowanie, usuwanie i selekcję danych przechowywanych w bazie danych.
- **Zarządzanie użytkownikami i bezpieczeństwem**: SQL pozwala na kontrolę dostępu do danych i zarządzanie uprawnieniami użytkowników.
- **Analiza danych**: SQL jest często używany do analizowania danych i generowania raportów dzięki możliwości wykonywania złożonych zapytań i agregacji danych.

### Podstawowe elementy SQL
- **DML (Data Manipulation Language)**: Obejmuje komendy do manipulacji danymi, takie jak `SELECT`, `INSERT`, `UPDATE`, `DELETE`.
- **DDL (Data Definition Language)**: Zawiera komendy do definiowania struktury bazy danych, takie jak `CREATE`, `ALTER`, `DROP`.
- **DCL (Data Control Language)**: Zawiera komendy do zarządzania uprawnieniami, takie jak `GRANT`, `REVOKE`.
- **TCL (Transaction Control Language)**: Zawiera komendy do zarządzania transakcjami, takie jak `COMMIT`, `ROLLBACK`, `SAVEPOINT`.

W kolejnych sekcjach tego cheat sheeta znajdziesz przegląd najczęściej używanych komend SQL oraz przykłady ich zastosowania.


## 🔧 Podstawowe Komendy
- **SELECT**: Używane do wybierania danych z bazy danych.
  ```sql
  SELECT kolumna1, kolumna2 FROM nazwa_tabeli;

  
## 🛠️ Język Definicji Danych (DDL)
Język Definicji Danych (DDL) w SQL jest używany do definiowania struktury bazy danych, w tym tworzenia, modyfikowania i usuwania tabel, indeksów i widoków.

1. **CREATE TABLE**: Tworzy nową tabelę.
    ```sql
    CREATE TABLE nazwa_tabeli (
    kolumna1 typ_danych ,atrybut',
    kolumna2 typ_danych,
    ...
    );
    ```
    
    **Przykład**:
    ```sql
      CREATE TABLE klienci (
        id INT AUTO_INCREMENT PRIMARY KEY,
        imie VARCHAR(50),
        nazwisko VARCHAR(50),
        email VARCHAR(100) UNIQUE
      );
    ```
1. **ALTER TABLE**: Modyfikuje istniejącą tabelę
   
| **Operacja**                 | **Opis**                                        | **Przykład**                                              |
|------------------------------|-------------------------------------------------|-----------------------------------------------------------|
| **ADD COLUMN**               | Dodaje nową kolumnę do istniejącej tabeli       | ``` ALTER TABLE Produkty ADD COLUMN Opis TEXT; ```    |
| **DROP COLUMN**              | Usuwa kolumnę z istniejącej tabeli               | ``` ALTER TABLE Produkty DROP COLUMN Opis; ```        |
| **MODIFY COLUMN**            | Zmienia typ danych lub atrybuty istniejącej kolumny | ``` ALTER TABLE Produkty MODIFY COLUMN Cena Float; ``` |
| **RENAME COLUMN**            | Zmienia nazwę istniejącej kolumny                | ``` ALTER TABLE Produkty RENAME COLUMN Opis TO Opis_skrócony; ``` |

2. **DROP TABLE**: Usuwa tabelę
    ```sql
    DROP TABLE nazwa_tabeli;
    ```
  
    **Przykład**:
      ```sql
        ALTER TABLE Produkty ADD COLUMN Opis TEXT;
      ```
  
### **Atrybuty kolumn**

| Nazwa | Zastosowanie |
|-------|--------------|
| PRIMARY KEY | Określa klucz główny dla tabeli |
| NOT NULL | Wartość kolumny nie może być pusta |
| UNIQUE | Wszystkie wartości w kolumnie muszą być unikalne |
| FOREIGN KEY | Określa klucz obcy, który odwołuje się do klucza głównego innej tabeli |
| CHECK | Upewnia się, że wszystkie wartości w kolumnie spełniają określony warunek |
| DEFAULT | Ustawia domyślną wartość dla kolumny, gdy nie zostanie dostarczona żadna wartość |
| AUTO_INCREMENT | Automatycznie zwiększa wartość kolumny przy każdym dodawaniu nowego rekordu (tylko MySQL) |

## 📝 Język Manipulacji Danymi (DML)
