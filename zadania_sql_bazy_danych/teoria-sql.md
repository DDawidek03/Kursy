## **SQL – Podstawowe Informacje**

### **Czym jest SQL?**

SQL (Structured Query Language) to język zapytań strukturalnych używany do zarządzania i manipulacji danymi w relacyjnych bazach danych. Umożliwia tworzenie, modyfikowanie oraz pobieranie danych z baz danych.

---

## **Dostęp do bazy danych (Access)**

### **Logowanie się do terminala SQL**

1. **Logowanie do MySQL:**

   ```bash
   mysql -u użytkownik -p
   ```

   - **-u użytkownik** – nazwa użytkownika, np. `root`
   - **-p** – powoduje, że system poprosi o hasło

2. **Logowanie do PostgreSQL:**

   ```bash
   psql -U użytkownik -d baza_danych
   ```

   - **-U użytkownik** – nazwa użytkownika
   - **-d baza_danych** – nazwa bazy danych, do której chcesz się zalogować

3. **Logowanie do SQL Server:**
   ```bash
   sqlcmd -S nazwa_serwera -U użytkownik -P hasło
   ```
   - **-S nazwa_serwera** – adres serwera SQL
   - **-U użytkownik** – nazwa użytkownika
   - **-P hasło** – hasło użytkownika

---

## **Import i Eksport bazy danych**

### **Eksport bazy danych do pliku SQL:**

1. **MySQL:**
   Aby wyeksportować bazę danych do pliku `.sql`, użyj polecenia `mysqldump`:

   ```bash
   mysqldump -u użytkownik -p nazwa_bazy > nazwa_pliku.sql
   ```

   - Eksportuje całą bazę danych do pliku `nazwa_pliku.sql`.

2. **PostgreSQL:**
   Eksport do pliku `.sql` w PostgreSQL:
   ```bash
   pg_dump -U użytkownik -d nazwa_bazy > nazwa_pliku.sql
   ```

### **Import bazy danych z pliku SQL:**

1. **MySQL:**
   Aby zaimportować bazę danych z pliku `.sql`, użyj polecenia:

   ```bash
   mysql -u użytkownik -p nazwa_bazy < nazwa_pliku.sql
   ```

   - Importuje dane z pliku `nazwa_pliku.sql` do bazy danych `nazwa_bazy`.

2. **PostgreSQL:**
   Import bazy danych w PostgreSQL:
   ```bash
   psql -U użytkownik -d nazwa_bazy < nazwa_pliku.sql
   ```

### **Eksport danych do pliku CSV:**

1. **MySQL:**

   ```sql
   SELECT * INTO OUTFILE '/ścieżka/do/pliku.csv'
   FIELDS TERMINATED BY ','
   OPTIONALLY ENCLOSED BY '"'
   LINES TERMINATED BY '\n'
   FROM nazwa_tabeli;
   ```

2. **PostgreSQL:**
   ```sql
   COPY nazwa_tabeli TO '/ścieżka/do/pliku.csv'
   DELIMITER ','
   CSV HEADER;
   ```

---

## **Dodatkowe Komendy Terminala**

### **Sprawdzanie listy baz danych:**

1. **MySQL:**

   ```sql
   SHOW DATABASES;
   ```

2. **PostgreSQL:**
   ```sql
   \l
   ```

### **Sprawdzanie listy tabel w bazie:**

1. **MySQL:**

   ```sql
   SHOW TABLES;
   ```

2. **PostgreSQL:**
   ```sql
   \dt
   ```

### **Zakończenie sesji w terminalu SQL:**

1. **MySQL:**

   ```bash
   exit;
   ```

2. **PostgreSQL:**
   ```bash
   \q
   ```

---

Oto najważniejsze pojęcia i terminologia związane z Microsoft Access, które są kluczowe dla pracy z bazami danych w tym systemie:

---

## **Terminologia Microsoft Access**

### **1. Baza Danych**

Zbiór powiązanych danych, które są przechowywane i zarządzane w ramach systemu zarządzania bazami danych (DBMS). W Accessie baza danych składa się z różnych obiektów, takich jak tabele, kwerendy, formularze i raporty.

### **2. Tabela**

Podstawowy element bazy danych. Tabela przechowuje dane w postaci wierszy (rekordów) i kolumn (pól). Każda kolumna przechowuje określony typ danych, a każdy wiersz odpowiada pojedynczemu rekordowi danych.

### **3. Pole**

Pojedyncza kolumna w tabeli, która reprezentuje konkretny typ informacji, np. „Imię”, „Data urodzenia”. Każde pole ma określony typ danych, np. tekst, liczby, daty itp.

### **4. Rekord**

Pojedynczy wiersz w tabeli, który zawiera zestaw informacji dotyczących jednego obiektu lub osoby. Na przykład, rekord w tabeli „Klienci” może zawierać dane dotyczące jednego klienta.

### **5. Klucz Główny (Primary Key)**

Unikalny identyfikator rekordu w tabeli. Każda tabela powinna mieć klucz główny, aby jednoznacznie identyfikować każdy rekord. Klucz główny może składać się z jednej kolumny lub zestawu kolumn.

### **6. Kwerenda (Query)**

Kwerenda to zapytanie do bazy danych, które pozwala wybrać, filtrować, sortować lub przetwarzać dane z jednej lub kilku tabel. Kwerendy mogą także wykonywać działania na danych, takie jak aktualizowanie, usuwanie czy dodawanie rekordów.

#### Rodzaje kwerend:

- **Kwerenda wybierająca**: Służy do pobierania danych z tabeli.
  ```sql
  SELECT * FROM Klienci WHERE Miasto = 'Warszawa';
  ```
- **Kwerenda aktualizująca**: Służy do zmiany danych.

  ```sql
  UPDATE Klienci SET Miasto = 'Kraków' WHERE ID = 1;
  ```

- **Kwerenda usuwająca**: Służy do usuwania danych.
  ```sql
  DELETE FROM Klienci WHERE ID = 2;
  ```

### **7. Kwerenda Krzyżowa (Cross-Tab Query)**

Kwerenda, która organizuje dane w formie tabeli krzyżowej, gdzie dane są zgrupowane w formie dwuwymiarowej macierzy. Wyniki są pogrupowane według dwóch różnych kryteriów – jedno w wierszach, drugie w kolumnach. Jest to użyteczne do tworzenia raportów podsumowujących.

### **8. Formularz (Form)**

Formularz jest interfejsem użytkownika, który umożliwia wprowadzanie, edytowanie oraz wyświetlanie danych z tabel. Formularze często są używane do uproszczenia pracy z danymi, pozwalając użytkownikowi na łatwe wprowadzanie informacji bezpośrednio do bazy danych.

### **9. Raport (Report)**

Obiekt używany do prezentowania danych w formacie drukowalnym. Raporty służą do generowania zestawień, podsumowań i prezentacji danych z tabel i kwerend w sposób bardziej zorganizowany, często z układem tabelarycznym lub graficznym.

### **10. Relacje (Relationships)**

Połączenie pomiędzy dwiema tabelami, które umożliwia tworzenie powiązań pomiędzy danymi. Relacje są oparte na kluczach głównych i obcych.

#### Rodzaje relacji:

- **Jeden do jednego**: Jeden rekord w jednej tabeli jest powiązany z jednym rekordem w innej tabeli.
- **Jeden do wielu**: Jeden rekord w jednej tabeli może być powiązany z wieloma rekordami w innej tabeli.
- **Wiele do wielu**: Rekordy w jednej tabeli mogą być powiązane z wieloma rekordami w innej tabeli i odwrotnie.

### **11. Klucz Obcy (Foreign Key)**

Pole w tabeli, które wskazuje na klucz główny w innej tabeli. Używane do tworzenia relacji między tabelami.

### **12. Makro**

Zautomatyzowana akcja lub zestaw akcji, które można uruchomić w Accessie. Makra są używane do automatyzacji powtarzalnych zadań, takich jak otwieranie formularzy, uruchamianie kwerend czy weryfikacja danych.

### **13. Moduł**

Moduł to zestaw procedur napisanych w języku VBA (Visual Basic for Applications), który pozwala na bardziej zaawansowaną automatyzację w bazach danych Access.

### **14. Maski Wprowadzania (Input Masks)**

Maska wprowadzania to wzorzec, który definiuje sposób wprowadzania danych do pola w formularzu lub tabeli. Jest używana do zapewnienia spójności danych. Na przykład maska dla numeru telefonu w formacie `(999) 000-000` wymusi, aby użytkownik wprowadzał numer telefonu tylko w tym formacie.

### **15. Indeksy**

Indeks to struktura danych, która przyspiesza wyszukiwanie rekordów w tabeli. Tworzenie indeksów na polach często stosowanych w kwerendach lub sortowaniach może znacznie zwiększyć wydajność operacji na danych.

### **16. Reguły Spójności (Referential Integrity)**

Zasady te dbają o to, aby relacje między rekordami w powiązanych tabelach były prawidłowe. Na przykład, nie można usunąć rekordu w tabeli, jeśli jest on powiązany z rekordami w innej tabeli.

---

## **Przykłady i Zastosowania**

1. **Maska wprowadzania** dla numeru telefonu:

   - `(999) 000-0000`: Ogranicza wprowadzanie do numeru telefonu w tym formacie.

2. **Kwerenda krzyżowa**:
   Wyciąga dane sprzedażowe według miesięcy i kategorii produktów:

   ```sql
   TRANSFORM SUM(Sprzedaz.Kwota)
   SELECT Sprzedaz.Kategoria
   FROM Sprzedaz
   GROUP BY Sprzedaz.Kategoria
   PIVOT Sprzedaz.Miesiac;
   ```

3. **Relacja jeden-do-wielu**:
   Tabela "Klienci" ma wiele zamówień w tabeli "Zamówienia". Relacja ta może być reprezentowana przez klucz obcy w tabeli "Zamówienia", który wskazuje na klucz główny w tabeli "Klienci".

---

### **Maski Wprowadzania (Input Masks) w Microsoft Access**

Maski wprowadzania to narzędzie używane w Microsoft Access, które pomaga kontrolować sposób, w jaki dane są wprowadzane do pola w formularzu lub tabeli. Służą one do zapewnienia spójności i poprawności danych, narzucając z góry określony format na wprowadzane informacje, np. numery telefonów, daty, numery identyfikacyjne itp.

#### **Dlaczego warto używać masek wprowadzania?**

- **Kontrola formatu danych:** Użytkownicy muszą wprowadzać dane w ściśle określonym formacie, co eliminuje błędy.
- **Zwiększona spójność danych:** Dane wprowadzane w jednolity sposób (np. numer telefonu w formacie „(123) 456-7890”).
- **Automatyczna walidacja:** Jeśli dane są niepoprawne (np. za mało cyfr), nie zostaną zaakceptowane.

---

## **Składnia Masek Wprowadzania**

Maski wprowadzania korzystają z określonych symboli, które definiują, co użytkownik może wprowadzać w danym miejscu.

### **Główne symbole używane w maskach wprowadzania:**

| Symbol                             | Opis                                | Przykład                               |
| ---------------------------------- | ----------------------------------- | -------------------------------------- |
| 0                                  | Cyfra (0-9), wymagane               | „000” (3 cyfry)                        |
| 9                                  | Cyfra (0-9), opcjonalne             | „999” (maksymalnie 3 cyfry)            |
| #                                  | Cyfra, spacja lub znak plus/minus   | „#99”                                  |
| L                                  | Litera (A-Z), wymagane              | „LL” (2 litery)                        |
| ?                                  | Litera (A-Z), opcjonalne            | „L?” (1 litera wymagane, 1 opcjonalne) |
| A                                  | Litera lub cyfra, wymagane          | „AAA” (3 litery lub cyfry)             |
| a                                  | Litera lub cyfra, opcjonalne        | „aaa” (do 3 liter lub cyfr)            |
| &                                  | Dowolny znak lub spacja, wymagane   | „&&” (2 znaki)                         |
| C                                  | Dowolny znak lub spacja, opcjonalne | „CCC” (do 3 znaków)                    |
| . , : ; / - (znaki interpunkcyjne) | Używane jako separator w maskach    | „000-000-0000”                         |

### **Przykłady masek wprowadzania:**

1. **Numer telefonu:**

   ```text
   (999) 000-0000
   ```

   - **(999)**: Klamry wokół 3 cyfr (opcjonalne).
   - **000-0000**: 7 cyfr wymagane.

2. **Kod pocztowy (w formacie USA):**

   ```text
   00000-9999
   ```

   - **00000**: Wymagane pięć cyfr.
   - **-9999**: Opcjonalne cztery dodatkowe cyfry.

3. **Data w formacie DD/MM/RRRR:**

   ```text
   00/00/0000
   ```

   - **00/00/0000**: Wymagane osiem cyfr z separatorem „/”.

4. **Numer identyfikacyjny PESEL (11 cyfr):**

   ```text
   00000000000
   ```

   - Wymaga 11 cyfr bez żadnych separatorów.

5. **Numer REGON (9 lub 14 cyfr):**
   ```text
   000000000;0;00000000000000
   ```
   - 9 lub 14 cyfr bez separatorów (opcjonalnie rozszerzenie do 14 cyfr).

---

## **Sposób tworzenia maski wprowadzania**

Maski wprowadzania są tworzone w polach tabeli lub formularza. Aby dodać maskę wprowadzania:

1. **W tabeli:**

   - Otwórz tabelę w trybie projektu.
   - Zaznacz pole, dla którego chcesz dodać maskę.
   - W dolnej części, w sekcji „Właściwości pola”, znajdź opcję „Maska wprowadzania”.
   - Wprowadź odpowiednią maskę (możesz skorzystać z kreatora masek wprowadzania).

2. **W formularzu:**
   - Otwórz formularz w trybie projektowania.
   - Zaznacz pole, dla którego chcesz dodać maskę.
   - W oknie właściwości pola, w sekcji „Maska wprowadzania”, wprowadź odpowiednią maskę.

---

## **Znaczenie znaków w masce wprowadzania**

W zależności od symbolu, maska może wymuszać wprowadzenie tylko określonych danych, takich jak cyfry czy litery, lub może pozwolić na wprowadzenie dowolnego znaku. Oto kilka bardziej szczegółowych przykładów:

### **Symbole maski i ich zastosowanie:**

- **"0"** – Wymagana cyfra (0-9). Użytkownik musi wprowadzić cyfrę w tym miejscu.

  - Przykład: Maska „000” oznacza, że musisz wprowadzić dokładnie trzy cyfry.

- **"9"** – Opcjonalna cyfra. Użytkownik może wprowadzić cyfrę, ale nie musi.

  - Przykład: Maska „9999” oznacza, że możesz wprowadzić od 0 do 4 cyfr.

- **"L"** – Wymagana litera (A-Z). W tym miejscu użytkownik musi wprowadzić literę.

  - Przykład: Maska „LL” oznacza, że użytkownik musi wprowadzić dwie litery.

- **"A"** – Wymagana litera lub cyfra. Użytkownik może wprowadzić literę lub cyfrę.
  - Przykład: Maska „AAA” oznacza, że można wprowadzić trzy litery lub cyfry.

## **Dodatkowe Opcje w Maskach Wprowadzania**

Maski wprowadzania mają również możliwość definiowania znaków, które są widoczne tylko podczas edycji danych. Oto składnia rozszerzona maski:

- **Maska wprowadzania;Znak zapisu;Znak zastępczy**

  **Przykład:**

  ```text
  (000) 000-0000;0;_
  ```

  - „0” po średniku oznacza, że zapisane będą tylko rzeczywiste dane (bez nawiasów i myślników).
  - „\_” oznacza, że podczas wprowadzania danych, niewypełnione pola będą reprezentowane przez podkreślenie.

---
