# 📘 Kurs SQL


## 📄 Spis Treści

- 📖 [Wprowadzenie](#wprowadzenie)
- 🛠️ [Język Definicji Danych (DDL)](#język-definicji-danych-ddl)
- 📑 [Indeksy](#indeksy)
- 📝 [Język Manipulacji Danymi (DML)](#język-manipulacji-danymi-dml)
    - 🔭 [Zapytania SQL (wszukujace oraz klauzule)](#Zapytania-SQL)
- 🔣 [Funkcje](#funkcje)
    - [Funkcje agregujace](funkcje-agregujace)
    - [Funkcje Tekstowe](funkcje-tekstowe)
- 🔗 [Joins (łączenia)](#joins-łączenia)
- 🔍 [Widoki](#widoki)
- 🔐 [Język Kontroli Danych (DCL)](#język-kontroli-danych-dcl)
- 📋 [Procedury składowane](#procedury-składowane)
- 📚 [Teoria](#teoria)

## Wprowadzenie
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


## Język Definicji Danych (DDL)
Język Definicji Danych (DDL) w SQL jest używany do definiowania struktury bazy danych, w tym tworzenia, modyfikowania i usuwania tabel, indeksów i widoków.

**CREATE TABLE**: Tworzy nową tabelę.
  ```sql
  CREATE TABLE nazwa_tabeli (
    kolumna1 typ_danych,
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

**Typy danych**

| **Typ danych**       | **Opis**                                                                                         | **Przykład**                             |
|----------------------|--------------------------------------------------------------------------------------------------|-----------------------------------------|
| **INT**              | Liczba całkowita.                                                                            | `id INT`                                |
| **FLOAT**            | Liczba zmiennoprzecinkowa o pojedynczej precyzji.                                                 | `price FLOAT`                           |
| **DOUBLE**           | Liczba zmiennoprzecinkowa o podwójnej precyzji.                                                  | `weight DOUBLE`                         |
| **DECIMAL**          | Liczba dziesiętna o określonej precyzji i skali.                                                 | `amount DECIMAL(10, 2)`                 |
| **CHAR**             | Stała długość łańcucha znaków. Długość od 0 do 255 znaków.                                        | `code CHAR(5)`                          |
| **VARCHAR**          | Zmienna długość łańcucha znaków. Długość od 0 do 65,535 znaków.                                 | `name VARCHAR(100)`                     |
| **TEXT**             | Długi łańcuch tekstowy. Maksymalna długość 65,535 znaków.                                        | `description TEXT`                      |
| **DATE**             | Data w formacie `YYYY-MM-DD`.                                                                    | `birthdate DATE`                        |
| **DATETIME**         | Data i czas w formacie `YYYY-MM-DD HH:MM:SS`.                                                     | `created_at DATETIME`                   |
| **TIMESTAMP**        | Data i czas w formacie `YYYY-MM-DD HH:MM:SS`, z dodatkowym automatycznym aktualizowaniem.         | `updated_at TIMESTAMP`                  |
| **TIME**             | Czas w formacie `HH:MM:SS`.                                                                     | `start_time TIME`                       |
| **YEAR**             | Rok w formacie `YYYY`.                                                                         | `year YEAR`                             |
| **ENUM**             | Lista możliwych wartości. Ogranicza pole do jednej z predefiniowanych wartości.                    | `status ENUM('active', 'inactive')`     |
| **SET**              | Lista możliwych wartości. Można przypisać wiele wartości naraz.                                  | `flags SET('flag1', 'flag2', 'flag3')`  |
| **BIT**              | Bit lub sekwencja bitów.                                                                         | `flag BIT(1)`                           |

**Atrybuty kolumn**

| Nazwa | Zastosowanie |
|-------|--------------|
| PRIMARY KEY | Określa klucz główny dla tabeli |
| NOT NULL | Wartość kolumny nie może być pusta |
| UNIQUE | Wszystkie wartości w kolumnie muszą być unikalne |
| FOREIGN KEY | Określa klucz obcy, który odwołuje się do klucza głównego innej tabeli |
| CHECK | Upewnia się, że wszystkie wartości w kolumnie spełniają określony warunek |
| DEFAULT | Ustawia domyślną wartość dla kolumny, gdy nie zostanie dostarczona żadna wartość |
| AUTO_INCREMENT | Automatycznie zwiększa wartość kolumny przy każdym dodawaniu nowego rekordu (tylko MySQL) |

1. **ALTER TABLE**: Modyfikuje istniejącą tabelę
   
| **Operacja**                 | **Opis**                                        | **Przykład**                                              |
|------------------------------|-------------------------------------------------|-----------------------------------------------------------|
| **ADD COLUMN**               | Dodaje nową kolumnę do istniejącej tabeli       | ``` ALTER TABLE Produkty ADD COLUMN Opis TEXT; ```    |
| **DROP COLUMN**              | Usuwa kolumnę z istniejącej tabeli              | ``` ALTER TABLE Produkty DROP COLUMN Opis; ```        |
| **MODIFY COLUMN**            | Zmienia typ danych lub atrybuty istniejącej kolumny | ``` ALTER TABLE Produkty MODIFY COLUMN Cena Float; ``` |
| **RENAME COLUMN**            | Zmienia nazwę istniejącej kolumny               | ``` ALTER TABLE Produkty RENAME COLUMN Opis TO Opis_skrócony; ``` |

2. **DROP TABLE**: Usuwa tabelę
  ```sql
    DROP TABLE nazwa_tabeli;
  ```
  
  **Przykład**: ``` ALTER TABLE Produkty ADD COLUMN Opis TEXT; ```


## Indeksy
- **CREATE INDEX**: Tworzy indeks na tabeli.
   
   ```sql
   CREATE INDEX nazwa_indeksu ON nazwa_tabeli (kolumna1, kolumna2, ...);
    ```
   **Przykład**: ``` CREATE INDEX idx_nazwisko ON pracownicy (nazwisko);  ```
 
- **DROP INDEX**: Usuwa indeks.
  
  ```sql
  DROP INDEX nazwa_indeksu;
  ```
  
  **Przykład**: ``` DROP INDEX idx_nazwisko ```

  
## Język Manipulacji Danymi (DML)

- **INSERT INTO**: Wstawia nowe dane do tabeli.
  
  ```sql
    INSERT INTO nazwa_tabeli (kolumna1, kolumna2, ...) VALUES (wartość1, wartość2, ...);
  ```
   **Przykład**: ``` INSERT INTO Pracownicy (ID, Imię, Nazwisko) VALUES ('1','Anna', 'Kowalska');  ```

- **UPDATE**: Aktualizuje istniejące dane w tabeli
  ```sql
  UPDATE nazwa_tabeli
  SET kolumna1 = wartość1, kolumna2 = wartość2, ...
  WHERE warunek;
  ```

  **Przykład**: ```UPDATE klienci SET email = 'nowy_email@example.com' WHERE id = 1;```

- **DELETE**: Usuwa dane z tabeli

  ```sql
    DELETE FROM nazwa_tabeli
    WHERE warunek;
  ```
  **Przykład** ```DELETE FROM Pracownicy WHERE ID = 3;```


## Zapytania SQL

**SELECT**: Wyszukiwanie danych w tabeli

  ```sql
  SELECT kolumna1,kolumna2,... from tabela
  ```

  **Przykład** ```SELECT imie,nazwisko FROM uczniowie;```

### **1. WHERE**

Klauzula `WHERE` jest używana do filtrowania rekordów w zapytaniu SQL w oparciu o określone warunki.

| **Operacja**       | **Opis**                                                                                         | **Przykład**                             |
|--------------------|--------------------------------------------------------------------------------------------------|-----------------------------------------|
| **WHERE**          | Filtruje rekordy na podstawie określonego warunku.                                               | `SELECT * FROM klienci WHERE wiek > 30;` |
| **AND**            | Łączy wiele warunków, zwracając rekordy, które spełniają wszystkie warunki.                      | `SELECT * FROM klienci WHERE wiek > 30 AND miasto = 'Warszawa';` |
| **OR**             | Łączy wiele warunków, zwracając rekordy, które spełniają przynajmniej jeden z warunków.           | `SELECT * FROM klienci WHERE wiek > 30 OR miasto = 'Warszawa';` |
| **NOT**            | Neguje warunek, zwracając rekordy, które nie spełniają określonego warunku.                       | `SELECT * FROM klienci WHERE NOT miasto = 'Warszawa';` |
| **BETWEEN**        | Zwraca rekordy, których wartości mieszczą się w określonym zakresie.                              | `SELECT * FROM produkty WHERE cena BETWEEN 10 AND 50;` |
| **IN**             | Zwraca rekordy, których wartości są zgodne z dowolną wartością na liście.                         | `SELECT * FROM klienci WHERE kraj IN ('Polska', 'Niemcy', 'Francja');` |
| **LIKE**           | Zwraca rekordy, których wartości pasują do określonego wzorca.                                    | `SELECT * FROM klienci WHERE imie LIKE 'A%';` |
| **IS NULL**        | Zwraca rekordy, które mają wartość NULL w określonej kolumnie.                                    | `SELECT * FROM klienci WHERE email IS NULL;` |
| **IS NOT NULL**    | Zwraca rekordy, które nie mają wartości NULL w określonej kolumnie.                               | `SELECT * FROM klienci WHERE email IS NOT NULL;` |

### **2. LIKE**

Klauzula `LIKE` jest używana do wyszukiwania określonego wzorca w kolumnie tekstowej.

| **Operator**       | **Opis**                                                                                         | **Przykład**                             |
|--------------------|--------------------------------------------------------------------------------------------------|-----------------------------------------|
| **%**              | Zastępuje dowolną liczbę znaków.                                                                 | `SELECT * FROM klienci WHERE imie LIKE 'A%';` (znajduje imiona zaczynające się na 'A') |
| **_**              | Zastępuje dokładnie jeden znak.                                                                  | `SELECT * FROM klienci WHERE imie LIKE '_a_';` (znajduje imiona z trzema literami, gdzie druga litera to 'a') |
| **[charlist]**     | Zastępuje dowolny pojedynczy znak z listy znaków.                                                | `SELECT * FROM klienci WHERE imie LIKE '[AEIOU]%';` (znajduje imiona zaczynające się na dowolną z podanych liter) |
| **[^charlist]**    | Zastępuje dowolny pojedynczy znak, który nie znajduje się na liście znaków.                      | `SELECT * FROM klienci WHERE imie LIKE '[^AEIOU]%';` (znajduje imiona nie zaczynające się na dowolną z podanych liter) |

## Funkcje

Funkcje w SQL to wbudowane narzędzia służące do wykonywania operacji na danych, takich jak obliczenia matematyczne, manipulacje tekstem, czy agregacje wyników. Ułatwiają one przetwarzanie i analizę danych w bazach danych, umożliwiając bardziej złożone zapytania i operacje.

## Funkcje Agregujące
  
## Procedury składowane

