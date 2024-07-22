# 📘 Kurs SQL


## 📄 Spis Treści

- 📖 [Wprowadzenie](#wprowadzenie)
- 🛠️ [Język Definicji Danych (DDL)](#język-definicji-danych-ddl)
- 📑 [Indeksy](#indeksy)
- 📝 [Język Manipulacji Danymi (DML)](#język-manipulacji-danymi-dml)
    - 🔭 [Zapytania SQL (wszukujace oraz klauzule)](#Zapytania-SQL)
    - 📥 [Grupowanie, Sortowanie i Klauzula HAVING](#Grupowanie-Sortowanie-i-Klauzula-HAVING)
- 🔣 [Funkcje](#funkcje)
  - 📊 [Funkcje agregujące](#funkcje-agregujące)
  - 📖 [Funkcje tekstowe](#funkcje-tekstowe)
  - 🔢 [Funkcje numeryczne](#funkcje-numeryczne)
  - ⏳ [Funkcje daty i czasu](#funkcje-daty-i-czasu)
  - 🔍 [Funkcje logiczne](#funkcje-logiczne)
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

### Grupowanie, Sortowanie i Klauzula HAVING

 **1. Grupowanie danych**

| **Funkcja/Klaza** | **Opis**                                                | **Przykład**                                      |
|-------------------|---------------------------------------------------------|---------------------------------------------------|
| `GROUP BY`        | Grupuje wiersze, które mają te same wartości w określonych kolumnach. | `SELECT kraj, COUNT(*) FROM klienci GROUP BY kraj;` |

**2. Sortowanie danych**

| **Funkcja/Klaza** | **Opis**                                                | **Przykład**                                      |
|-------------------|---------------------------------------------------------|---------------------------------------------------|
| `ORDER BY`        | Sortuje wynikowe wiersze na podstawie wartości jednej lub więcej kolumn. | `SELECT * FROM klienci ORDER BY nazwisko ASC;`    |

 **3. Klauzula HAVING**

| **Funkcja/Klaza** | **Opis**                                                | **Przykład**                                      |
|-------------------|---------------------------------------------------------|---------------------------------------------------|
|    `HAVING`       | Filtruje wyniki po grupowaniu, podobnie jak `WHERE`, ale stosuje się do agregowanych danych. | `SELECT kraj, COUNT(*) FROM klienci GROUP BY kraj HAVING COUNT(*) > 5;` |



## Funkcje

Funkcje w SQL to wbudowane narzędzia służące do wykonywania operacji na danych, takich jak obliczenia matematyczne, manipulacje tekstem, czy agregacje wyników. Ułatwiają one przetwarzanie i analizę danych w bazach danych, umożliwiając bardziej złożone zapytania i operacje.

### Funkcje Agregujące

| Funkcja | Opis                                        | Przykład                            |
|---------|---------------------------------------------|-------------------------------------|
| COUNT() | Zwraca liczbę wierszy spełniających warunek. | `SELECT COUNT(*) FROM klienci;`     |
| SUM()   | Zwraca sumę wartości w kolumnie.             | `SELECT SUM(cena) FROM produkty;`   |
| AVG()   | Zwraca średnią wartość w kolumnie.           | `SELECT AVG(wiek) FROM klienci;`    |
| MIN()   | Zwraca minimalną wartość w kolumnie.         | `SELECT MIN(cena) FROM produkty;`   |
| MAX()   | Zwraca maksymalną wartość w kolumnie.        | `SELECT MAX(cena) FROM produkty;`   |

### Funkcje Tekstowe

| Funkcja    | Opis                                                         | Przykład                                      |
|------------|--------------------------------------------------------------|-----------------------------------------------|
| CONCAT()   | Łączy dwa lub więcej ciągi znaków.                            | `SELECT CONCAT(imie, ' ', nazwisko) FROM klienci;` |
| LENGTH()   | Zwraca długość ciągu znaków.                                   | `SELECT LENGTH(nazwa) FROM produkty;`          |
| UPPER()    | Konwertuje ciąg znaków na wielkie litery.                      | `SELECT UPPER(imie) FROM klienci;`             |
| LOWER()    | Konwertuje ciąg znaków na małe litery.                         | `SELECT LOWER(nazwisko) FROM klienci;`          |
| SUBSTRING()| Zwraca fragment ciągu znaków.                                  | `SELECT SUBSTRING(imie, 1, 3) FROM klienci;`    |
| REPLACE()  | Zastępuje wszystkie wystąpienia podciągu innym podciągiem.     | `SELECT REPLACE(nazwa, 'stary', 'nowy') FROM produkty;` |
| TRIM()     | Usuwa białe znaki z początku i końca ciągu znaków.              | `SELECT TRIM(imie) FROM klienci;`               |

### Funkcje Numeryczne

| Funkcja   | Opis                                                         | Przykład                |
|-----------|--------------------------------------------------------------|-------------------------|
| ABS()     | Zwraca wartość bezwzględną liczby.                            | `SELECT ABS(-10);`      |
| CEILING() | Zwraca najmniejszą liczbę całkowitą większą lub równą danej liczbie. | `SELECT CEILING(5.7);`  |
| FLOOR()   | Zwraca największą liczbę całkowitą mniejszą lub równą danej liczbie. | `SELECT FLOOR(5.7);`    |
| ROUND()   | Zaokrągla liczbę do określonej liczby miejsc po przecinku.     | `SELECT ROUND(5.678, 2);` |
| MOD()     | Zwraca resztę z dzielenia jednej liczby przez drugą.           | `SELECT MOD(10, 3);`    |
| POWER()   | Podnosi liczbę do określonej potęgi.                            | `SELECT POWER(2, 3);`   |

### Funkcje Daty i Czasu

| Funkcja   | Opis                                      | Przykład                           |
|-----------|-------------------------------------------|------------------------------------|
| NOW()     | Zwraca bieżącą datę i czas.                 | `SELECT NOW();`                    |
| CURDATE() | Zwraca bieżącą datę.                        | `SELECT CURDATE();`                |
| CURTIME() | Zwraca bieżący czas.                        | `SELECT CURTIME();`                |
| DATE_ADD() | Dodaje określoną ilość czasu do daty.        | `SELECT DATE_ADD('2024-07-19', INTERVAL 5 DAY);` |
| DATE_SUB() | Odejmuje określoną ilość czasu od daty.      | `SELECT DATE_SUB('2024-07-19', INTERVAL 5 DAY);` |
| DATEDIFF() | Zwraca różnicę między dwiema datami.         | `SELECT DATEDIFF('2024-07-19', '2024-07-14');` |
| YEAR()    | Zwraca rok z daty.                           | `SELECT YEAR(NOW());`              |
| MONTH()   | Zwraca miesiąc z daty.                       | `SELECT MONTH(NOW());`             |
| DAY()     | Zwraca dzień z daty.                         | `SELECT DAY(NOW());`               |

### Funkcje Logiczne 

| Funkcja   | Opis                                                                                      | Przykład                                              |
|-----------|-------------------------------------------------------------------------------------------|-------------------------------------------------------|
| IF()      | Zwraca jedną wartość, jeśli warunek jest spełniony, a inną wartość, jeśli nie jest.       | `SELECT IF(wiek > 18, 'Dorosły', 'Nieletni') FROM klienci;` |
| IFNULL()  | Zwraca określoną wartość, jeśli dane są NULL.                                             | `SELECT IFNULL(email, 'brak') FROM klienci;`           |
| NULLIF()  | Zwraca NULL, jeśli dwa wyrażenia są równe.                                                | `SELECT NULLIF(cena, 0) FROM produkty;`                |

## Joins (łączenia)

Łączenie tabel (JOIN) w SQL to potężna operacja umożliwiająca pobieranie danych z dwóch lub więcej tabel na podstawie określonych warunków. Istnieje kilka typów połączeń, które pozwalają na różne sposoby łączenia danych

**1. Typy łączeń tabel**

| Typ łączenia          | Opis                                                                                  | Przykład                                                                                     |
|-----------------------|---------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------|
| INNER JOIN        | Zwraca wiersze, które mają pasujące wartości w obu tabelach.                           | `SELECT a.*, b.* FROM tabela1 as a INNER JOIN tabela2 as b ON a.id = b.a_id;` |
| LEFT JOIN (LEFT OUTER JOIN) | Zwraca wszystkie wiersze z lewej tabeli i pasujące wiersze z prawej tabeli.        | `SELECT a.*, b.* FROM tabela1 as a LEFT JOIN tabela2 as b ON a.id = b.a_id;` |
| RIGHT JOIN (RIGHT OUTER JOIN) | Zwraca wszystkie wiersze z prawej tabeli i pasujące wiersze z lewej tabeli.       | `SELECT a.*, b.* FROM tabela1 as a RIGHT JOIN tabela2 as b ON a.id = b.a_id;`|
| FULL JOIN (FULL OUTER JOIN) | Zwraca wszystkie wiersze, gdy jest dopasowanie w jednej z tabel.                   | *MySQL nie obsługuje FULL JOIN bezpośrednio, można go zasymulować przy użyciu UNION.*         |
| CROSS JOIN        | Zwraca iloczyn kartezjański wierszy z obu tabel.                                       | `SELECT a.*, b.* FROM tabela1 as a CROSS JOIN tabela2 as b;`                  |
| SELF JOIN         | Łączy wiersze w tej samej tabeli.                                                     | `SELECT a.*, b.* FROM tabela1 as a INNER JOIN tabela2 as b ON a.id = b.parent_id;`|

**2. Opis**

- **INNER JOIN**: Zwraca tylko te rekordy, które mają dopasowanie w obu tabelach.
- **LEFT JOIN (LEFT OUTER JOIN)**: Zwraca wszystkie rekordy z lewej tabeli oraz dopasowane rekordy z prawej tabeli. Jeśli nie ma dopasowania, zwraca NULL dla kolumn z prawej tabeli.
- **RIGHT JOIN (RIGHT OUTER JOIN)**: Zwraca wszystkie rekordy z prawej tabeli oraz dopasowane rekordy z lewej tabeli. Jeśli nie ma dopasowania, zwraca NULL dla kolumn z lewej tabeli.
- **FULL JOIN (FULL OUTER JOIN)**: Zwraca wszystkie rekordy, które mają dopasowanie w jednej z tabel. (MySQL nie obsługuje tej klauzuli bezpośrednio, można użyć kombinacji LEFT i RIGHT JOIN z UNION).
- **CROSS JOIN**: Zwraca iloczyn kartezjański tabel. Każdy rekord z jednej tabeli jest połączony z każdym rekordem z drugiej tabeli.
- **SELF JOIN**: Używany do łączenia wierszy tej samej tabeli. Często używany do hierarchicznych struktur danych.

`as` - **Alias** to tymczasowa nazwa nadawana tabeli lub kolumnie w celu ułatwienia odczytu i zrozumienia wyników zapytań. Alias nie zmienia danych w bazie, działa tylko na czas wykonania zapytania.

## Widoki

Widok to wirtualna tabela stworzona na podstawie zapytania SELECT. Widoki nie przechowują danych, lecz wynik zapytania, które je definiuje. Mogą być używane do uproszczenia złożonych zapytań, zapewnienia bezpieczeństwa danych i poprawy czytelności kodu.

**1. Aby stworzyć widok, używamy instrukcji `CREATE VIEW`.**

```sql
CREATE VIEW widok_nazwa AS
SELECT kolumna1, kolumna2, ...
FROM tabela
WHERE warunek;
```

**Przykład**: `CREATE VIEW Pracownicy_Wysokie_Zarobki AS SELECT Imie, Nazwisko FROM Pracownicy WHERE Zarobki > 50000;`

**2. Używanie widoku**

 Widok można traktować jak zwykłą tabelę w zapytaniach SELECT, INSERT, UPDATE oraz DELETE (jeśli widok jest modyfikowalny).
```sql
SELECT * FROM widok_nazwa;
```

**3. Aktualizacja widoku.**

Widoki mogą być modyfikowalne, co oznacza, że można wprowadzać zmiany w danych przez widok, które zostaną odzwierciedlone w oryginalnych tabelach. Jednak nie wszystkie widoki są modyfikowalne.

```sql
UPDATE widok_nazwa
SET kolumna = 'Przykładowy tekst'
WHERE warunek;
```

**Przykład**: ` UPDATE aktywni_klienci
SET email = 'nowy_email@example.com'
WHERE id = 1;
`

**4.Modifikacja widoku**

```sql
CREATE OR REPLACE VIEW 
widok_nazwa AS
SELECT kolumna1, kolumna2, ...
FROM tabela
WHERE warunek;
```

**Przykład**: `CREATE OR REPLACE VIEW Pracownicy_ Wysokie_Zarobki AS
SELECT Imię, Nazwisko
FROM Pracownicy
WHERE Zarobki > 60000;
`


**5.Usuwanie widoku**

Aby usunąć widok, używamy instrukcji `DROP VIEW`.

```sql
DROP VIEW widok_nazwa;
```

## Język Kontroli Danych (DCL)

Język Kontroli Danych (DCL) w SQL jest używany do kontrolowania dostępu do danych w bazie danych. Obejmuje to tworzenie użytkowników, nadawanie uprawnień oraz ich odbieranie.

**1.Tworzenie Użytkownika**
- `CREATE USER`: Tworzy nowego użytkownika bazy danych.
   ```sql
   CREATE USER 'nazwa_użytkownika'@'host' IDENTIFIED BY 'hasło';
   ```

**Przykład**: `CREATE USER 'jan_kowalski'@'localhost' IDENTIFIED BY 'bezpieczne_haslo';`

**2.Usuwanie Użytkownika**
 - `DROP USER`: Usuwa istniejącego użytkownika bazy danych.
   ```sql
   DROP USER 'nazwa_użytkownika'@'host';
   ```

**Przykład**: `DROP USER 'jan_kowalski'@'localhost';`

**3.Nadawanie Uprawnień**

| Uprawnienie   | Opis                                                                                          |
| ------------- | -------------------------------------------------------------------------------------------- |
| ALL           | Nadaje wszystkie uprawnienia oprócz opcji nadawania uprawnień                                 |
| ALTER         | Nadaje uprawnienie do modyfikowania struktury tabeli                                          |
| CREATE        | Nadaje uprawnienie do tworzenia obiektów, takich jak bazy danych, tabele, kolumny              |
| DELETE        | Nadaje uprawnienie do usuwania wierszy w wybranej tabeli                                      |
| DROP          | Nadaje uprawnienie do usuwania tabeli                                                         |
| INSERT        | Nadaje uprawnienie do wstawiania wierszy do tabeli                                             |
| SELECT        | Nadaje uprawnienie do zapytania danych                                                        |
| SHOW DATABASES| Nadaje uprawnienie do wyświetlania listy baz danych                                            |
| UPDATE        | Nadaje uprawnienie do modyfikowania zawartości tabeli                                          |
| USAGE         | Nadaje dostęp do bazy danych bez dodatkowych uprawnień                                         |

 - `GRANT`: Przyznaje określone uprawnienia użytkownikowi.
 - `GRANT ALL PRIVILEGES`: Przyznaje wszystkie uprawnienia użytkownikowi.

   ```sql
   GRANT uprawnienia ON nazwa_bazy.nazwa_tabeli TO 'nazwa_użytkownika'@'host';
   ```

**Przykład**: `GRANT SELECT, INSERT, UPDATE ON sklep.produkty TO 'jan_kowalski'@'localhost';`

**4.Odbieranie Uprawnień**

- `REVOKE`: Odbiera określone uprawnienia od użytkownika.

   ```sql
   REVOKE uprawnienia ON nazwa_bazy.nazwa_tabeli FROM 'nazwa_użytkownika'@'host';
   ```

***Pzykład**: `REVOKE SELECT, INSERT ON sklep.produkty FROM 'jan_kowalski'@'localhost';`

**5.Wyświetlanie Uprawnień Użytkownika**

- `SHOW GRANTS`: Wyświetla uprawnienia użytkownika.

   ```sql
   SHOW GRANTS FOR 'nazwa_użytkownika'@'host';
   ```

**Przykład**: `SHOW GRANTS FOR 'jan_kowalski'@'localhost';`


## Procedury składowane

Procedury składowane to zestaw wcześniej skompilowanych instrukcji SQL przechowywanych w bazie danych, które można wykonywać wielokrotnie. Zapewniają one sposób na enkapsulację złożonej logiki i reguł biznesowych w samej bazie danych. Procedury składowane oferują wiele korzyści, w tym poprawioną wydajność, możliwość ponownego wykorzystania kodu i zwiększone bezpieczeństwo.

Oto przykład prostego procedury składowanej w SQL:

```sql
CREATE PROCEDURE GetCustomerByID
  @CustomerID INT
AS
BEGIN
  SELECT * FROM Customers WHERE CustomerID = @CustomerID;
END;
```

W powyższym przykładzie tworzymy procedurę składowaną o nazwie `GetCustomerByID`, która przyjmuje parametr wejściowy `@CustomerID` i pobiera informacje o kliencie z tabeli `Customers` na podstawie podanego identyfikatora.

Procedury składowane mogą również mieć parametry wyjściowe, które mogą zwracać wartości do kodu wywołującego. Oto przykład:

```sql
CREATE PROCEDURE CalculateOrderTotal
  @OrderID INT,
  @TotalAmount DECIMAL(10, 2) OUTPUT
AS
BEGIN
  SELECT @TotalAmount = SUM(Quantity * Price)
  FROM OrderItems
  WHERE OrderID = @OrderID;
END;
```

W tym przykładzie procedura składowana `CalculateOrderTotal` oblicza całkowitą kwotę dla danego identyfikatora zamówienia i zwraca wynik przez parametr wyjściowy `@TotalAmount`.

Procedury składowane można wykonywać za pomocą instrukcji `EXECUTE` lub `EXEC`. Oto przykład:

```sql
DECLARE @CustomerID INT = 1;
EXECUTE GetCustomerByID @CustomerID;
```

W tym przykładzie deklarujemy zmienną `@CustomerID`, a następnie wykonujemy procedurę składowaną `GetCustomerByID`, przekazując `@CustomerID` jako parametr.

Procedury składowane można również wywoływać z innych instrukcji SQL, takich jak `SELECT`, `INSERT`, `UPDATE` lub `DELETE`. Oto przykład:

```sql
SELECT * FROM Customers
WHERE CustomerID IN (SELECT CustomerID FROM GetActiveCustomers);
```


