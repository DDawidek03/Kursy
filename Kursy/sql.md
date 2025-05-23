<div align="center">

# 📘 Kurs MySQL - Kompleksowy Przewodnik

</div>

<p align="center">
  <img src="https://img.shields.io/badge/Poziom-Od%20Podstaw%20Do%20Eksperta-brightgreen" alt="Poziom: Od Podstaw Do Eksperta">
  <img src="https://img.shields.io/badge/Format-Markdown-blue" alt="Format: Markdown">
  <img src="https://img.shields.io/badge/Zawartość-Kompletny%20Kurs-orange" alt="Zawartość: Kompletny Kurs">
</p>

> 💬 **O kursie**: Ten kompletny kurs MySQL przeprowadzi Cię od podstaw po zaawansowane techniki baz danych. Zawiera praktyczne przykłady, wyjaśnienia składni i najlepsze praktyki pracy z SQL.

---

<div align="center">

## 📄 Spis Treści

</div>

<div align="center">
  <table>
    <tr>
      <th>📚 Podstawy</th>
      <th>🛠️ Techniki</th>
      <th>🔍 Zaawansowane</th>
    </tr>
    <tr>
      <td><a href="#wprowadzenie">Wprowadzenie</a></td>
      <td><a href="#język-definicji-danych-ddl">Język Definicji Danych (DDL)</a></td>
      <td><a href="#joins-łączenia">Joins (łączenia)</a></td>
    </tr>
    <tr>
      <td><a href="#podstawowe-pojecia">Podstawowe Pojęcia</a></td>
      <td><a href="#indeksy">Indeksy</a></td>
      <td><a href="#widoki">Widoki</a></td>
    </tr>
    <tr>
      <td><a href="#relacyjny-model-danych">Relacyjny Model Danych</a></td>
      <td><a href="#Zapytania-SQL">Zapytania SQL</a></td>
      <td><a href="#język-kontroli-danych-dcl">Język Kontroli Danych (DCL)</a></td>
    </tr>
    <tr>
      <td><a href="#roznice-miedzy-systemami">Różnice między systemami</a></td>
      <td><a href="#Grupowanie-Sortowanie-i-Klauzula-HAVING">Grupowanie i Sortowanie</a></td>
      <td><a href="#procedury-składowane">Procedury Składowane</a></td>
    </tr>
    <tr>
      <td><a href="#sql-vs-nosql">SQL vs NoSQL</a></td>
      <td><a href="#funkcje">Funkcje SQL</a></td>
      <td><a href="#Optymalizacja">Optymalizacja</a></td>
    </tr>
    <tr>
      <td><a href="#język-manipulacji-danymi-dml">Manipulacja Danymi (DML)</a></td>
      <td><a href="#normalizacja">Normalizacja Baz Danych</a></td>
      <td><a href="#podzapytania">Podzapytania</a></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td><a href="#common-table-expressions">CTE</a></td>
    </tr>
  </table>
</div>

---

<div align="center" id="wprowadzenie">

## 📖 Wprowadzenie

</div>

SQL (Structured Query Language) to standardowy język zapytań używany do komunikacji z bazami danych. Został zaprojektowany do zarządzania i manipulacji danymi przechowywanymi w systemach zarządzania bazami danych (DBMS). SQL jest wszechstronny i używany w różnych typach baz danych, takich jak MySQL, PostgreSQL, SQLite, Microsoft SQL Server i Oracle.

### Dlaczego SQL jest ważny?

<div align="center">
  <table>
    <tr>
      <th>Cecha</th>
      <th>Korzyść</th>
    </tr>
    <tr>
      <td>🔍 <strong>Łatwość użycia</strong></td>
      <td>SQL ma prostą i przejrzystą składnię, co ułatwia naukę i stosowanie nawet przez osoby niebędące programistami.</td>
    </tr>
    <tr>
      <td>🔄 <strong>Wszechstronność</strong></td>
      <td>SQL umożliwia wykonywanie różnorodnych operacji na danych, od prostych zapytań po skomplikowane analizy danych.</td>
    </tr>
    <tr>
      <td>🌐 <strong>Standard</strong></td>
      <td>SQL jest standardowym językiem używanym przez większość systemów zarządzania bazami danych, co oznacza, że umiejętności SQL są przenośne między różnymi platformami.</td>
    </tr>
    <tr>
      <td>⚙️ <strong>Zarządzanie danymi</strong></td>
      <td>SQL pozwala na tworzenie, modyfikowanie i usuwanie struktur baz danych oraz zarządzanie danymi za pomocą operacji takich jak wstawianie, aktualizacja, usuwanie i selekcja danych.</td>
    </tr>
  </table>
</div>

### Zastosowania SQL

<div align="center">
  <table>
    <tr>
      <th>Zastosowanie</th>
      <th>Opis</th>
    </tr>
    <tr>
      <td>📊 <strong>Tworzenie i zarządzanie bazami danych</strong></td>
      <td>SQL pozwala na definiowanie struktury bazy danych, tworzenie tabel, indeksów, widoków i procedur składowanych.</td>
    </tr>
    <tr>
      <td>🔄 <strong>Manipulacja danymi</strong></td>
      <td>SQL umożliwia wstawianie, aktualizowanie, usuwanie i selekcję danych przechowywanych w bazie danych.</td>
    </tr>
    <tr>
      <td>🔒 <strong>Zarządzanie użytkownikami i bezpieczeństwem</strong></td>
      <td>SQL pozwala na kontrolę dostępu do danych i zarządzanie uprawnieniami użytkowników.</td>
    </tr>
    <tr>
      <td>📈 <strong>Analiza danych</strong></td>
      <td>SQL jest często używany do analizowania danych i generowania raportów dzięki możliwości wykonywania złożonych zapytań i agregacji danych.</td>
    </tr>
  </table>
</div>

### Podstawowe elementy SQL

<div align="center">
  <table>
    <tr>
      <th>Element</th>
      <th>Opis</th>
      <th>Przykładowe komendy</th>
    </tr>
    <tr>
      <td>📝 <strong>DML</strong><br>(Data Manipulation Language)</td>
      <td>Komendy do manipulacji danymi</td>
      <td><code>SELECT</code>, <code>INSERT</code>, <code>UPDATE</code>, <code>DELETE</code></td>
    </tr>
    <tr>
      <td>🛠️ <strong>DDL</strong><br>(Data Definition Language)</td>
      <td>Komendy do definiowania struktury bazy danych</td>
      <td><code>CREATE</code>, <code>ALTER</code>, <code>DROP</code></td>
    </tr>
    <tr>
      <td>🔐 <strong>DCL</strong><br>(Data Control Language)</td>
      <td>Komendy do zarządzania uprawnieniami</td>
      <td><code>GRANT</code>, <code>REVOKE</code></td>
    </tr>
    <tr>
      <td>🔄 <strong>TCL</strong><br>(Transaction Control Language)</td>
      <td>Komendy do zarządzania transakcjami</td>
      <td><code>COMMIT</code>, <code>ROLLBACK</code>, <code>SAVEPOINT</code></td>
    </tr>
  </table>
</div>

<div align="center" id="podstawowe-pojecia">

## 📚 Podstawowe Pojęcia

</div>

<div align="center">
  <table>
    <tr>
      <th>Pojęcie</th>
      <th>Definicja</th>
    </tr>
    <tr>
      <td>📊 <strong>Tabela</strong></td>
      <td>Struktura danych w bazie danych, składająca się z wierszy i kolumn.</td>
    </tr>
    <tr>
      <td>📋 <strong>Kolumna</strong></td>
      <td>Element tabeli odpowiadający konkretnemu typowi danych.</td>
    </tr>
    <tr>
      <td>📋 <strong>Wiersz</strong></td>
      <td>Jedna pojedyncza rekordowa jednostka danych w tabeli.</td>
    </tr>
    <tr>
      <td>🔑 <strong>Główny klucz</strong></td>
      <td>Unikalna kolumna w tabeli, identyfikująca każdy rekord w tej tabeli.</td>
    </tr>
    <tr>
      <td>🔗 <strong>Klucz obcy</strong></td>
      <td>Kolumna lub zestaw kolumn w tabeli, odnoszące się do głównego klucza innej tabeli.</td>
    </tr>
    <tr>
      <td>📑 <strong>Indeks</strong></td>
      <td>Struktura danych przyspieszająca procesy wyszukiwania i dostępu do danych.</td>
    </tr>
    <tr>
      <td>🧩 <strong>Normalizacja</strong></td>
      <td>Proces projektowania bazy danych w celu minimalizacji redundancji danych.</td>
    </tr>
    <tr>
      <td>❓ <strong>Zapytanie SQL</strong></td>
      <td>Polecenie lub zestaw poleceń w języku SQL do komunikacji z bazą danych.</td>
    </tr>
    <tr>
      <td>📐 <strong>Schemat bazy danych</strong></td>
      <td>Struktura definiująca organizację i relacje między tabelami w bazie danych.</td>
    </tr>
    <tr>
      <td>🔄 <strong>Zapytanie JOIN</strong></td>
      <td>Operacja łączenia danych z dwóch lub więcej tabel na podstawie określonych kolumn.</td>
    </tr>
    <tr>
      <td>⚙️ <strong>Procedura składowana</strong></td>
      <td>Przechowywany w bazie danych zestaw instrukcji SQL, wielokrotnie wywoływany.</td>
    </tr>
    <tr>
      <td>👁️ <strong>Widok</strong></td>
      <td>Wirtualna tabela wynikająca z zapytania SQL, umożliwiająca dostęp do danych w określony sposób.</td>
    </tr>
    <tr>
      <td>📊 <strong>Raportowanie</strong></td>
      <td>Proces tworzenia raportów na podstawie danych z bazy danych w celu analizy i prezentacji informacji.</td>
    </tr>
    <tr>
      <td>💾 <strong>Backup</strong> (Kopia zapasowa)</td>
      <td>Proces tworzenia kopii zapasowych danych i przywracania ich w przypadku awarii lub utraty.</td>
    </tr>
    <tr>
      <td>🔀 <strong>Transakcja</strong></td>
      <td>Logiczna jednostka pracy składająca się z jednej lub więcej operacji SQL, która jest wykonywana w całości lub wcale.</td>
    </tr>
    <tr>
      <td>🔒 <strong>Ograniczenie</strong> (Constraint)</td>
      <td>Reguła określająca warunki, które muszą spełniać dane w tabeli (np. NOT NULL, UNIQUE, CHECK).</td>
    </tr>
    <tr>
      <td>🔌 <strong>Trigger</strong></td>
      <td>Procedura automatycznie uruchamiana w odpowiedzi na określone zdarzenia w tabeli.</td>
    </tr>
  </table>
</div>

<div align="center" id="relacyjny-model-danych">

## 🧩 Relacyjny Model Danych

</div>

Relacyjny model danych stanowi podstawę większości współczesnych systemów zarządzania bazami danych, w tym MySQL. Zrozumienie tego modelu jest kluczowe dla efektywnego projektowania i używania baz danych.

### Fundamenty modelu relacyjnego

<div align="center">
  <table>
    <tr>
      <th>Pojęcie</th>
      <th>Definicja</th>
      <th>Przykład</th>
    </tr>
    <tr>
      <td>🏛️ <strong>Relacja</strong></td>
      <td>Tabela składająca się z wierszy i kolumn</td>
      <td>Tabela "Pracownicy" z kolumnami: id, imię, nazwisko</td>
    </tr>
    <tr>
      <td>📝 <strong>Krotka</strong></td>
      <td>Pojedynczy wiersz w tabeli (rekord)</td>
      <td>Wiersz: (1, "Jan", "Kowalski")</td>
    </tr>
    <tr>
      <td>🔖 <strong>Atrybut</strong></td>
      <td>Kolumna w tabeli, opisująca cechę</td>
      <td>Kolumna "imię" w tabeli "Pracownicy"</td>
    </tr>
    <tr>
      <td>🔑 <strong>Dziedzina</strong></td>
      <td>Zbiór dozwolonych wartości dla atrybutu</td>
      <td>Liczby całkowite dla atrybutu "wiek"</td>
    </tr>
    <tr>
      <td>🪢 <strong>Stopień relacji</strong></td>
      <td>Liczba atrybutów (kolumn) w relacji</td>
      <td>Tabela "Klienci" z 5 kolumnami ma stopień 5</td>
    </tr>
    <tr>
      <td>📊 <strong>Kardynalność relacji</strong></td>
      <td>Liczba krotek (wierszy) w relacji</td>
      <td>Tabela z 100 wierszami ma kardynalność 100</td>
    </tr>
  </table>
</div>

### Typy relacji między tabelami

<div align="center">
  <table>
    <tr>
      <th>Typ relacji</th>
      <th>Opis</th>
      <th>Przykład</th>
    </tr>
    <tr>
      <td>1️⃣:1️⃣ <strong>Jeden do jednego</strong></td>
      <td>Jeden rekord w tabeli A odpowiada dokładnie jednemu rekordowi w tabeli B</td>
      <td>Osoba ↔ Dowód osobisty</td>
    </tr>
    <tr>
      <td>1️⃣:🔢 <strong>Jeden do wielu</strong></td>
      <td>Jeden rekord w tabeli A może być powiązany z wieloma rekordami w tabeli B</td>
      <td>Klient ↔ Zamówienia</td>
    </tr>
    <tr>
      <td>🔢:🔢 <strong>Wiele do wielu</strong></td>
      <td>Wiele rekordów z tabeli A może być powiązanych z wieloma rekordami z tabeli B</td>
      <td>Studenci ↔ Kursy (wymaga tabeli łączącej)</td>
    </tr>
  </table>
</div>

### Klucze w modelu relacyjnym

<div align="center">
  <table>
    <tr>
      <th>Typ klucza</th>
      <th>Definicja</th>
      <th>Zastosowanie</th>
    </tr>
    <tr>
      <td>🔑 <strong>Klucz kandydujący</strong></td>
      <td>Minimalny zestaw atrybutów jednoznacznie identyfikujący krotkę</td>
      <td>PESEL, Email, Numer telefonu</td>
    </tr>
    <tr>
      <td>🔐 <strong>Klucz główny</strong></td>
      <td>Wybrany klucz kandydujący, podstawowy identyfikator</td>
      <td>ID klienta, używane do identyfikacji wierszy</td>
    </tr>
    <tr>
      <td>🔗 <strong>Klucz obcy</strong></td>
      <td>Atrybut odnoszący się do klucza głównego innej tabeli</td>
      <td>ID klienta w tabeli zamówień</td>
    </tr>
    <tr>
      <td>📑 <strong>Klucz złożony</strong></td>
      <td>Klucz składający się z wielu atrybutów</td>
      <td>Kombinacja "ID_kursu" i "ID_studenta"</td>
    </tr>
    <tr>
      <td>🔄 <strong>Klucz zastępczy</strong></td>
      <td>Sztuczny identyfikator, często autoinkrementowany</td>
      <td>Automatycznie generowane ID</td>
    </tr>
  </table>
</div>

### Integralność danych

<div align="center">
  <table>
    <tr>
      <th>Typ integralności</th>
      <th>Opis</th>
      <th>Przykład</th>
    </tr>
    <tr>
      <td>🔐 <strong>Integralność encji</strong></td>
      <td>Każda tabela musi mieć unikalny klucz główny, niepusty</td>
      <td>ID klienta musi być unikalne i nie NULL</td>
    </tr>
    <tr>
      <td>🔗 <strong>Integralność referencyjna</strong></td>
      <td>Klucze obce muszą odwoływać się do istniejących kluczy głównych</td>
      <td>Zamówienie może istnieć tylko dla istniejącego klienta</td>
    </tr>
    <tr>
      <td>✅ <strong>Integralność dziedziny</strong></td>
      <td>Wartości muszą spełniać ograniczenia dla danej kolumny</td>
      <td>Wiek musi być dodatnią liczbą całkowitą</td>
    </tr>
  </table>
</div>

<div align="center" id="roznice-miedzy-systemami">

## 🔄 Różnice między systemami bazodanowymi

</div>

Chociaż SQL jest standardem, każdy system bazodanowy ma swoje unikalne cechy, składnię i ograniczenia. Zrozumienie tych różnic jest kluczowe przy przenoszeniu aplikacji między systemami lub pracując w środowisku z wieloma bazami danych.

<div align="center">
  <table>
    <tr>
      <th>System</th>
      <th>Unikalne cechy</th>
      <th>Składnia i funkcje</th>
      <th>Ograniczenia</th>
    </tr>
    <tr>
      <td>🐬 <strong>MySQL</strong></td>
      <td>
        • Szybkie odczyty<br>
        • Dobra integracja z PHP<br>
        • Różne silniki (InnoDB, MyISAM)<br>
        • Popularny w aplikacjach webowych
      </td>
      <td>
        • LIMIT (zamiast TOP)<br>
        • Funkcja IF zamiast IIF<br>
        • AUTO_INCREMENT dla kluczy<br>
        • Wsparcie dla indeksów FULLTEXT
      </td>
      <td>
        • Ograniczone wsparcie dla funkcji okienkowych (przed 8.0)<br>
        • Brak natywnego FULL JOIN<br>
        • Brak typów ARRAY i JSON (przed 5.7)
      </td>
    </tr>
    <tr>
      <td>🐘 <strong>PostgreSQL</strong></td>
      <td>
        • Zgodność ze standardami SQL<br>
        • Zaawansowana obsługa typów (JSON, Array)<br>
        • Mocne wsparcie dla transakcji<br>
        • Widoki zmaterializowane
      </td>
      <td>
        • Sekwencje zamiast AUTO_INCREMENT<br>
        • SERIAL do autoinkrementacji<br>
        • Operator || do łączenia stringów<br>
        • ILIKE dla case-insensitive wyszukiwania
      </td>
      <td>
        • Wolniejszy w prostych operacjach niż MySQL<br>
        • Bardziej zasobożerny<br>
        • Stroma krzywa uczenia
      </td>
    </tr>
    <tr>
      <td>🪟 <strong>SQL Server</strong></td>
      <td>
        • Silna integracja z ekosystemem Microsoft<br>
        • Rozbudowane narzędzia administracyjne<br>
        • Transakcje rozproszone<br>
        • Procedury CLR (.NET)
      </td>
      <td>
        • TOP zamiast LIMIT<br>
        • [ ] zamiast " " dla nazw obiektów<br>
        • IDENTITY zamiast AUTO_INCREMENT<br>
        • += dla konkatenacji stringów
      </td>
      <td>
        • Komercyjna licencja (pełna wersja)<br>
        • Wysoka zależność od systemu Windows<br>
        • Inna składnia niektórych funkcji
      </td>
    </tr>
    <tr>
      <td>🗄️ <strong>SQLite</strong></td>
      <td>
        • Baza danych w jednym pliku<br>
        • Zero konfiguracji<br>
        • Brak serwera<br>
        • Idealna do aplikacji mobilnych
      </td>
      <td>
        • Brak silnego typowania (typ afinity)<br>
        • Brak zarządzania użytkownikami<br>
        • ROWID zamiast AUTO_INCREMENT<br>
        • Uproszczona składnia ALTER TABLE
      </td>
      <td>
        • Brak współbieżności zapisu<br>
        • Ograniczone typy danych<br>
        • Brak złożonych trigggerów<br>
        • Ograniczone funkcje zarządzania
      </td>
    </tr>
  </table>
</div>

### Najczęstsze problemy przy zmianie systemu

1. **Zmiana składni paginacji**:

   ```sql
   -- MySQL/PostgreSQL
   SELECT * FROM produkty ORDER BY nazwa LIMIT 10 OFFSET 20;

   -- SQL Server
   SELECT * FROM produkty ORDER BY nazwa OFFSET 20 ROWS FETCH NEXT 10 ROWS ONLY;
   ```

2. **Różnice w autoinkrementacji**:

   ```sql
   -- MySQL
   CREATE TABLE produkty (id INT AUTO_INCREMENT PRIMARY KEY);

   -- PostgreSQL
   CREATE TABLE produkty (id SERIAL PRIMARY KEY);

   -- SQL Server
   CREATE TABLE produkty (id INT IDENTITY(1,1) PRIMARY KEY);

   -- SQLite
   CREATE TABLE produkty (id INTEGER PRIMARY KEY AUTOINCREMENT);
   ```

3. **Funkcje tekstowe**:

   ```sql
   -- MySQL/SQL Server
   SELECT CONCAT('Hello', ' ', 'World');

   -- PostgreSQL
   SELECT 'Hello' || ' ' || 'World';

   -- SQLite (obsługuje obie metody)
   SELECT CONCAT('Hello', ' ', 'World');
   SELECT 'Hello' || ' ' || 'World';
   ```

4. **Funkcje daty i czasu**:

   ```sql
   -- MySQL
   SELECT DATE_ADD(NOW(), INTERVAL 1 DAY);

   -- PostgreSQL
   SELECT NOW() + INTERVAL '1 day';

   -- SQL Server
   SELECT DATEADD(day, 1, GETDATE());

   -- SQLite
   SELECT date('now', '+1 day');
   ```

> 💡 **Wskazówka**: Przy przenoszeniu aplikacji między systemami, najpierw zidentyfikuj elementy specyficzne dla danego systemu i szukaj ich odpowiedników. Wykorzystuj funkcje kompatybilności lub abstrakcje w kodzie aplikacji, by zminimalizować problemy przy migracji.

<div align="center" id="sql-vs-nosql">

## 🔄 SQL vs NoSQL: MongoDB i inne bazy nierelacyjne

</div>

Oprócz tradycyjnych systemów SQL, istnieją również bazy danych NoSQL, które obsługują dane w sposób nierelacyjny. MongoDB jest jednym z najpopularniejszych przedstawicieli tej kategorii.

<div align="center">
  <table>
    <tr>
      <th>Cecha</th>
      <th>SQL (np. MySQL)</th>
      <th>NoSQL (np. MongoDB)</th>
    </tr>
    <tr>
      <td>📊 <strong>Model danych</strong></td>
      <td>Relacyjny (tabele, wiersze, kolumny)</td>
      <td>Dokumentowy (kolekcje dokumentów JSON/BSON)</td>
    </tr>
    <tr>
      <td>🧩 <strong>Struktura</strong></td>
      <td>Sztywna schema (z góry zdefiniowana)</td>
      <td>Elastyczna schema (może się różnić między dokumentami)</td>
    </tr>
    <tr>
      <td>🔍 <strong>Zapytania</strong></td>
      <td>SQL (standardowy język)</td>
      <td>Język specyficzny dla bazy (np. MQL w MongoDB)</td>
    </tr>
    <tr>
      <td>🔄 <strong>Relacje</strong></td>
      <td>Relacje między tabelami (JOIN)</td>
      <td>Dokumenty zagnieżdżone lub referencje</td>
    </tr>
    <tr>
      <td>📈 <strong>Skalowalność</strong></td>
      <td>Skalowanie pionowe (większy serwer)</td>
      <td>Skalowanie poziome (więcej serwerów)</td>
    </tr>
    <tr>
      <td>🛠️ <strong>Zastosowanie</strong></td>
      <td>Aplikacje z jasnymi relacjami, transakcje finansowe</td>
      <td>Duże dane, szybko zmieniające się struktury, aplikacje mobilne</td>
    </tr>
  </table>
</div>

### MongoDB: Podstawy

MongoDB to popularna baza danych NoSQL, która przechowuje dane w dokumentach podobnych do JSON (format BSON). Oto kluczowe elementy:

<div align="center">
  <table>
    <tr>
      <th>SQL</th>
      <th>MongoDB</th>
      <th>Przykład MongoDB</th>
    </tr>
    <tr>
      <td>Baza danych</td>
      <td>Baza danych</td>
      <td><code>use sklepOnline</code></td>
    </tr>
    <tr>
      <td>Tabela</td>
      <td>Kolekcja</td>
      <td><code>db.produkty</code></td>
    </tr>
    <tr>
      <td>Wiersz</td>
      <td>Dokument</td>
      <td><code>{ nazwa: "Laptop", cena: 3499, kategoria: "Elektronika" }</code></td>
    </tr>
    <tr>
      <td>Kolumna</td>
      <td>Pole</td>
      <td><code>nazwa</code>, <code>cena</code></td>
    </tr>
    <tr>
      <td>JOIN</td>
      <td>$lookup (od MongoDB 3.2)</td>
      <td><code>$lookup: { from: "kategorie", localField: "kategoria_id", foreignField: "_id", as: "kategoria_info" }</code></td>
    </tr>
  </table>
</div>

### Podstawowe operacje MongoDB

```javascript
// Wstawianie dokumentu
db.produkty.insertOne({
  nazwa: "Smartfon",
  cena: 1299,
  specyfikacja: {
    pamiec: "128GB",
    kolor: "czarny",
    aparat: "48MP",
  },
});

// Wyszukiwanie
db.produkty.find({ cena: { $lt: 2000 } }); // produkty tańsze niż 2000 zł

// Aktualizacja
db.produkty.updateOne({ nazwa: "Smartfon" }, { $set: { cena: 1199 } });

// Usuwanie
db.produkty.deleteOne({ nazwa: "Smartfon" });
```

### Kiedy wybrać MongoDB zamiast SQL?

<div align="center">
  <table>
    <tr>
      <th>Wybierz MongoDB, gdy:</th>
      <th>Wybierz SQL, gdy:</th>
    </tr>
    <tr>
      <td>
        ✅ Dane mają zmienną strukturę<br>
        ✅ Potrzebujesz szybkiego skalowania poziomego<br>
        ✅ Przechowujesz duże ilości danych<br>
        ✅ Tworzysz aplikacje z dużą liczbą odczytów<br>
        ✅ Rozwijasz aplikację w metodologii Agile
      </td>
      <td>
        ✅ Dane mają jasno określone relacje<br>
        ✅ Potrzebujesz niezawodnych transakcji<br>
        ✅ Wymagana jest zgodność z ACID<br>
        ✅ Zależy Ci na standardzie i przenośności<br>
        ✅ Masz zespół z doświadczeniem SQL
      </td>
    </tr>
  </table>
</div>

> 💡 **Wskazówka**: Wiele nowoczesnych aplikacji używa podejścia hybrydowego - MongoDB do przechowywania dynamicznych danych i SQL dla danych transakcyjnych.

<div align="center" id="normalizacja">

## 📐 Normalizacja Baz Danych

</div>

Normalizacja to proces projektowania struktur baz danych w celu zmniejszenia redundancji i zależności. Stosując reguły normalizacji, eliminujemy problemy z duplikacją danych i poprawiamy integralność bazy.

### Formy normalne

<div align="center">
  <table>
    <tr>
      <th>Forma normalna</th>
      <th>Wymagania</th>
      <th>Cel</th>
    </tr>
    <tr>
      <td>1️⃣ <strong>Pierwsza forma normalna (1NF)</strong></td>
      <td>• Każda kolumna zawiera wartości atomowe (niepodzielne)<br>• Brak powtarzających się grup</td>
      <td>Eliminacja wielowartościowych atrybutów</td>
    </tr>
    <tr>
      <td>2️⃣ <strong>Druga forma normalna (2NF)</strong></td>
      <td>• Spełnia 1NF<br>• Atrybuty niekluczowe zależą od całego klucza głównego</td>
      <td>Eliminacja częściowych zależności funkcyjnych</td>
    </tr>
    <tr>
      <td>3️⃣ <strong>Trzecia forma normalna (3NF)</strong></td>
      <td>• Spełnia 2NF<br>• Brak zależności tranzytywnych (pośrednich)</td>
      <td>Eliminacja zależności niekluczowych atrybutów od innych niekluczowych</td>
    </tr>
    <tr>
      <td>🔍 <strong>Forma normalna Boyce'a-Codda (BCNF)</strong></td>
      <td>• Spełnia 3NF<br>• Każda zależność funkcyjna X → Y, X musi być nadkluczem</td>
      <td>Silniejsza wersja 3NF, eliminująca anomalie aktualizacji</td>
    </tr>
    <tr>
      <td>4️⃣ <strong>Czwarta forma normalna (4NF)</strong></td>
      <td>• Spełnia BCNF<br>• Brak zależności wielowartościowych</td>
      <td>Eliminacja niezależnych zależności wielowartościowych</td>
    </tr>
    <tr>
      <td>5️⃣ <strong>Piąta forma normalna (5NF)</strong></td>
      <td>• Spełnia 4NF<br>• Brak zależności złączeniowych</td>
      <td>Eliminacja redundancji niemożliwych do wykrycia przez inne formy</td>
    </tr>
  </table>
</div>

### Przykład normalizacji

**Tabela wyjściowa (nienormalizowana):**

```
| ID_Zamówienia | Klient_Imię | Klient_Nazwisko | Klient_Email        | Produkt         | Cena  | Kategoria    |
|---------------|-------------|-----------------|---------------------|-----------------|-------|--------------|
| 1             | Anna        | Kowalska        | anna@example.com    | Laptop          | 3500  | Elektronika  |
| 2             | Anna        | Kowalska        | anna@example.com    | Mysz            | 50    | Akcesoria    |
| 3             | Jan         | Nowak           | jan@example.com     | Słuchawki       | 200   | Akcesoria    |
```

**Po normalizacji:**

Tabela Klienci:

```
| ID_Klienta | Imię  | Nazwisko  | Email             |
|------------|-------|-----------|-------------------|
| 1          | Anna  | Kowalska  | anna@example.com  |
| 2          | Jan   | Nowak     | jan@example.com   |
```

Tabela Produkty:

```
| ID_Produktu | Nazwa      | Cena  | ID_Kategorii |
|-------------|------------|-------|--------------|
| 1           | Laptop     | 3500  | 1            |
| 2           | Mysz       | 50    | 2            |
| 3           | Słuchawki  | 200   | 2            |
```

Tabela Kategorie:

```
| ID_Kategorii | Nazwa       |
|--------------|-------------|
| 1            | Elektronika |
| 2            | Akcesoria   |
```

Tabela Zamówienia:

```
| ID_Zamówienia | ID_Klienta | ID_Produktu |
|---------------|------------|-------------|
| 1             | 1          | 1           |
| 2             | 1          | 2           |
| 3             | 2          | 3           |
```

### Zalety i wady normalizacji

<div align="center">
  <table>
    <tr>
      <th>Zalety</th>
      <th>Wady</th>
    </tr>
    <tr>
      <td>
        ✅ Minimalizacja redundancji danych<br>
        ✅ Większa spójność danych<br>
        ✅ Łatwiejsze aktualizacje<br>
        ✅ Mniejsze zapotrzebowanie na pamięć
      </td>
      <td>
        ❌ Bardziej złożone zapytania (więcej JOIN)<br>
        ❌ Potencjalnie wolniejsze zapytania analityczne<br>
        ❌ Większa liczba tabel<br>
        ❌ Bardziej skomplikowana struktura bazy
      </td>
    </tr>
  </table>
</div>

### Denormalizacja

Denormalizacja to celowe wprowadzenie redundancji do bazy danych w celu poprawy wydajności zapytań. Stosuje się ją głównie w hurtowniach danych i bazach analitycznych.

**Przykład denormalizacji:**

```sql
-- Denormalizacja - dodanie kolumny z nazwą kategorii do tabeli produktów
CREATE TABLE produkty_denormalizowane (
  id INT PRIMARY KEY,
  nazwa VARCHAR(100),
  cena DECIMAL(10,2),
  id_kategorii INT,
  nazwa_kategorii VARCHAR(50)
);
```

<div align="center" id="język-definicji-danych-ddl">

## 🛠️ Język Definicji Danych (DDL)

</div>

Język Definicji Danych (DDL) w SQL jest używany do definiowania struktury bazy danych, w tym tworzenia, modyfikowania i usuwania tabel, indeksów i widoków.

### CREATE TABLE: Tworzenie nowej tabeli

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

### Typy danych w MySQL

<div align="center">
  <table>
    <tr>
      <th>Typ danych</th>
      <th>Opis</th>
      <th>Przykład</th>
    </tr>
    <tr>
      <td>🔢 <strong>INT</strong></td>
      <td>Liczba całkowita</td>
      <td><code>id INT</code></td>
    </tr>
    <tr>
      <td>🔢 <strong>FLOAT</strong></td>
      <td>Liczba zmiennoprzecinkowa o pojedynczej precyzji</td>
      <td><code>price FLOAT</code></td>
    </tr>
    <tr>
      <td>🔢 <strong>DOUBLE</strong></td>
      <td>Liczba zmiennoprzecinkowa o podwójnej precyzji</td>
      <td><code>weight DOUBLE</code></td>
    </tr>
    <tr>
      <td>🔢 <strong>DECIMAL</strong></td>
      <td>Liczba dziesiętna o określonej precyzji i skali</td>
      <td><code>amount DECIMAL(10, 2)</code></td>
    </tr>
    <tr>
      <td>📝 <strong>CHAR</strong></td>
      <td>Stała długość łańcucha znaków (0-255 znaków)</td>
      <td><code>code CHAR(5)</code></td>
    </tr>
    <tr>
      <td>📝 <strong>VARCHAR</strong></td>
      <td>Zmienna długość łańcucha znaków (0-65,535 znaków)</td>
      <td><code>name VARCHAR(100)</code></td>
    </tr>
    <tr>
      <td>📄 <strong>TEXT</strong></td>
      <td>Długi łańcuch tekstowy (max 65,535 znaków)</td>
      <td><code>description TEXT</code></td>
    </tr>
    <tr>
      <td>📅 <strong>DATE</strong></td>
      <td>Data w formacie <code>YYYY-MM-DD</code></td>
      <td><code>birthdate DATE</code></td>
    </tr>
    <tr>
      <td>⏰ <strong>DATETIME</strong></td>
      <td>Data i czas w formacie <code>YYYY-MM-DD HH:MM:SS</code></td>
      <td><code>created_at DATETIME</code></td>
    </tr>
    <tr>
      <td>⏰ <strong>TIMESTAMP</strong></td>
      <td>Data i czas z automatycznym aktualizowaniem</td>
      <td><code>updated_at TIMESTAMP</code></td>
    </tr>
    <tr>
      <td>⏱️ <strong>TIME</strong></td>
      <td>Czas w formacie <code>HH:MM:SS</code></td>
      <td><code>start_time TIME</code></td>
    </tr>
    <tr>
      <td>📅 <strong>YEAR</strong></td>
      <td>Rok w formacie <code>YYYY</code></td>
      <td><code>year YEAR</code></td>
    </tr>
    <tr>
      <td>📋 <strong>ENUM</strong></td>
      <td>Lista możliwych wartości</td>
      <td><code>status ENUM('active', 'inactive')</code></td>
    </tr>
    <tr>
      <td>📋 <strong>SET</strong></td>
      <td>Zbiór możliwych wartości</td>
      <td><code>flags SET('flag1', 'flag2', 'flag3')</code></td>
    </tr>
    <tr>
      <td>🔢 <strong>BIT</strong></td>
      <td>Bit lub sekwencja bitów</td>
      <td><code>flag BIT(1)</code></td>
    </tr>
  </table>
</div>

### Atrybuty kolumn

<div align="center">
  <table>
    <tr>
      <th>Atrybut</th>
      <th>Zastosowanie</th>
    </tr>
    <tr>
      <td>🔑 <strong>PRIMARY KEY</strong></td>
      <td>Określa klucz główny dla tabeli</td>
    </tr>
    <tr>
      <td>❗ <strong>NOT NULL</strong></td>
      <td>Wartość kolumny nie może być pusta</td>
    </tr>
    <tr>
      <td>🔍 <strong>UNIQUE</strong></td>
      <td>Wszystkie wartości w kolumnie muszą być unikalne</td>
    </tr>
    <tr>
      <td>🔗 <strong>FOREIGN KEY</strong></td>
      <td>Określa klucz obcy, który odwołuje się do klucza głównego innej tabeli</td>
    </tr>
    <tr>
      <td>✅ <strong>CHECK</strong></td>
      <td>Upewnia się, że wszystkie wartości w kolumnie spełniają określony warunek</td>
    </tr>
    <tr>
      <td>⚙️ <strong>DEFAULT</strong></td>
      <td>Ustawia domyślną wartość dla kolumny</td>
    </tr>
    <tr>
      <td>🔄 <strong>AUTO_INCREMENT</strong></td>
      <td>Automatycznie zwiększa wartość kolumny przy każdym dodawaniu nowego rekordu</td>
    </tr>
  </table>
</div>

### ALTER TABLE: Modyfikowanie istniejącej tabeli

<div align="center">
  <table>
    <tr>
      <th>Operacja</th>
      <th>Opis</th>
      <th>Przykład</th>
    </tr>
    <tr>
      <td>➕ <strong>ADD COLUMN</strong></td>
      <td>Dodaje nową kolumnę do istniejącej tabeli</td>
      <td><code>ALTER TABLE Produkty ADD COLUMN Opis TEXT;</code></td>
    </tr>
    <tr>
      <td>➖ <strong>DROP COLUMN</strong></td>
      <td>Usuwa kolumnę z istniejącej tabeli</td>
      <td><code>ALTER TABLE Produkty DROP COLUMN Opis;</code></td>
    </tr>
    <tr>
      <td>🔄 <strong>MODIFY COLUMN</strong></td>
      <td>Zmienia typ danych lub atrybuty istniejącej kolumny</td>
      <td><code>ALTER TABLE Produkty MODIFY COLUMN Cena FLOAT;</code></td>
    </tr>
    <tr>
      <td>✏️ <strong>RENAME COLUMN</strong></td>
      <td>Zmienia nazwę istniejącej kolumny</td>
      <td><code>ALTER TABLE Produkty RENAME COLUMN Opis TO Opis_skrócony;</code></td>
    </tr>
  </table>
</div>

### DROP TABLE: Usuwanie tabeli

```sql
DROP TABLE nazwa_tabeli;
```

<div align="center" id="indeksy">

## 📑 Indeksy

</div>

Indeksy przyspieszają operacje wyszukiwania i sortowania danych w tabeli, działając podobnie do indeksu w książce.

### Tworzenie i usuwanie indeksów

<div align="center">
  <table>
    <tr>
      <th>Operacja</th>
      <th>Składnia</th>
      <th>Przykład</th>
    </tr>
       <tr>
      <td>📝 <strong>CREATE INDEX</strong></td>
      <td><code>CREATE INDEX nazwa_indeksu ON nazwa_tabeli (kolumna1, kolumna2, ...);</code></td>
      <td><code>CREATE INDEX idx_nazwisko ON pracownicy (nazwisko);</code></td>
    </tr>
    <tr>
      <td>🗑️ <strong>DROP INDEX</strong></td>
      <td><code>DROP INDEX nazwa_indeksu;</code></td>
      <td><code>DROP INDEX idx_nazwisko;</code></td>
    </tr>
  </table>
</div>

### Rodzaje indeksów

<div align="center">
  <table>
    <tr>
      <th>Rodzaj indeksu</th>
      <th>Opis</th>
      <th>Zastosowanie</th>
    </tr>
    <tr>
      <td>🔑 <strong>PRIMARY</strong></td>
      <td>Unikalny indeks definiujący klucz główny</td>
      <td>Szybki dostęp do rekordów po kluczach głównych</td>
    </tr>
    <tr>
      <td>🔍 <strong>UNIQUE</strong></td>
      <td>Zapewnia unikalność wartości w kolumnie</td>
      <td>Adresy email, numery ID</td>
    </tr>
    <tr>
      <td>📚 <strong>INDEX</strong></td>
      <td>Standardowy indeks przyspieszający wyszukiwanie</td>
      <td>Często przeszukiwane kolumny</td>
    </tr>
    <tr>
      <td>📝 <strong>FULLTEXT</strong></td>
      <td>Indeks do wyszukiwania pełnotekstowego</td>
      <td>Blogi, artykuły, opisy produktów</td>
    </tr>
    <tr>
      <td>🌳 <strong>SPATIAL</strong></td>
      <td>Indeks dla danych przestrzennych</td>
      <td>Dane geograficzne, mapy</td>
    </tr>
  </table>
</div>

### Kiedy używać indeksów

- ✅ Na kolumnach często używanych w klauzuli WHERE
- ✅ Na kolumnach używanych do JOIN
- ✅ Na kolumnach używanych w ORDER BY i GROUP BY
- ❌ Unikaj indeksowania małych tabel
- ❌ Unikaj indeksowania kolumn często aktualizowanych
- ❌ Unikaj nadmiernego indeksowania (zwiększa czas INSERT/UPDATE/DELETE)

<div align="center" id="język-manipulacji-danymi-dml">

## 📝 Język Manipulacji Danymi (DML)

</div>

Język Manipulacji Danymi (DML) służy do zarządzania danymi w bazie danych poprzez operacje dodawania, modyfikowania i usuwania rekordów.

<div align="center">
  <table>
    <tr>
      <th>Operacja</th>
      <th>Składnia</th>
      <th>Przykład</th>
    </tr>
    <tr>
      <td>➕ <strong>INSERT INTO</strong></td>
      <td><code>INSERT INTO nazwa_tabeli (kolumna1, kolumna2, ...) VALUES (wartość1, wartość2, ...);</code></td>
      <td><code>INSERT INTO Pracownicy (ID, Imię, Nazwisko) VALUES ('1', 'Anna', 'Kowalska');</code></td>
    </tr>
    <tr>
      <td>🔄 <strong>UPDATE</strong></td>
      <td><code>UPDATE nazwa_tabeli SET kolumna1 = wartość1, kolumna2 = wartość2, ... WHERE warunek;</code></td>
      <td><code>UPDATE klienci SET email = 'nowy_email@example.com' WHERE id = 1;</code></td>
    </tr>
    <tr>
      <td>🗑️ <strong>DELETE</strong></td>
      <td><code>DELETE FROM nazwa_tabeli WHERE warunek;</code></td>
      <td><code>DELETE FROM Pracownicy WHERE ID = 3;</code></td>
    </tr>
  </table>
</div>

<div align="center" id="Zapytania-SQL">

## 🔍 Zapytania SQL

</div>

### SELECT: Wyszukiwanie danych

```sql
SELECT kolumna1, kolumna2, ... FROM tabela;
```

**Przykład**: `SELECT imie, nazwisko FROM uczniowie;`

### WHERE: Filtrowanie wyników

<div align="center">
  <table>
    <tr>
      <th>Operacja</th>
      <th>Opis</th>
      <th>Przykład</th>
    </tr>
    <tr>
      <td>🔍 <strong>WHERE</strong></td>
      <td>Filtruje rekordy na podstawie określonego warunku</td>
      <td><code>SELECT * FROM klienci WHERE wiek > 30;</code></td>
    </tr>
    <tr>
      <td>🔄 <strong>AND</strong></td>
      <td>Łączy warunki, zwraca rekordy spełniające wszystkie</td>
      <td><code>SELECT * FROM klienci WHERE wiek > 30 AND miasto = 'Warszawa';</code></td>
    </tr>
    <tr>
      <td>🔄 <strong>OR</strong></td>
      <td>Zwraca rekordy spełniające przynajmniej jeden warunek</td>
      <td><code>SELECT * FROM klienci WHERE wiek > 30 OR miasto = 'Warszawa';</code></td>
    </tr>
    <tr>
      <td>❌ <strong>NOT</strong></td>
      <td>Neguje warunek</td>
      <td><code>SELECT * FROM klienci WHERE NOT miasto = 'Warszawa';</code></td>
    </tr>
    <tr>
      <td>📊 <strong>BETWEEN</strong></td>
      <td>Zwraca rekordy z zakresu wartości</td>
      <td><code>SELECT * FROM produkty WHERE cena BETWEEN 10 AND 50;</code></td>
    </tr>
    <tr>
      <td>📋 <strong>IN</strong></td>
      <td>Zwraca rekordy zgodne z wartościami z listy</td>
      <td><code>SELECT * FROM klienci WHERE kraj IN ('Polska', 'Niemcy', 'Francja');</code></td>
    </tr>
    <tr>
      <td>🔍 <strong>LIKE</strong></td>
      <td>Wyszukuje według określonego wzorca</td>
      <td><code>SELECT * FROM klienci WHERE imie LIKE 'A%';</code></td>
    </tr>
    <tr>
      <td>❓ <strong>IS NULL</strong></td>
      <td>Zwraca rekordy z wartością NULL</td>
      <td><code>SELECT * FROM klienci WHERE email IS NULL;</code></td>
    </tr>
    <tr>
      <td>✅ <strong>IS NOT NULL</strong></td>
      <td>Zwraca rekordy bez wartości NULL</td>
      <td><code>SELECT * FROM klienci WHERE email IS NOT NULL;</code></td>
    </tr>
  </table>
</div>

### LIKE: Wyszukiwanie wzorców

<div align="center">
  <table>
    <tr>
      <th>Operator</th>
      <th>Opis</th>
      <th>Przykład</th>
    </tr>
    <tr>
      <td>% (procent)</td>
      <td>Zastępuje dowolną liczbę znaków</td>
      <td><code>SELECT * FROM klienci WHERE imie LIKE 'A%';</code><br>(znajduje imiona zaczynające się na 'A')</td>
    </tr>
    <tr>
      <td>_ (podkreślenie)</td>
      <td>Zastępuje dokładnie jeden znak</td>
      <td><code>SELECT * FROM klienci WHERE imie LIKE '_a_';</code><br>(znajduje imiona z trzema literami, gdzie druga to 'a')</td>
    </tr>
    <tr>
      <td>[charlist]</td>
      <td>Zastępuje dowolny pojedynczy znak z listy</td>
      <td><code>SELECT * FROM klienci WHERE imie LIKE '[AEIOU]%';</code><br>(znajduje imiona zaczynające się na samogłoskę)</td>
    </tr>
    <tr>
      <td>[^charlist]</td>
      <td>Zastępuje dowolny znak spoza listy</td>
      <td><code>SELECT * FROM klienci WHERE imie LIKE '[^AEIOU]%';</code><br>(znajduje imiona nie zaczynające się na samogłoskę)</td>
    </tr>
  </table>
</div>

<div align="center" id="Grupowanie-Sortowanie-i-Klauzula-HAVING">

## 📊 Grupowanie, Sortowanie i Klauzula HAVING

</div>

<div align="center">
  <table>
    <tr>
      <th>Funkcja/Klauzula</th>
      <th>Opis</th>
      <th>Przykład</th>
    </tr>
    <tr>
      <td>📊 <strong>GROUP BY</strong></td>
      <td>Grupuje wiersze o tych samych wartościach</td>
      <td><code>SELECT kraj, COUNT(*) FROM klienci GROUP BY kraj;</code></td>
    </tr>
    <tr>
      <td>🔢 <strong>ORDER BY</strong></td>
      <td>Sortuje wyniki według wartości kolumn</td>
      <td><code>SELECT * FROM klienci ORDER BY nazwisko ASC;</code></td>
    </tr>
    <tr>
      <td>🔍 <strong>HAVING</strong></td>
      <td>Filtruje wyniki po grupowaniu</td>
      <td><code>SELECT kraj, COUNT(*) FROM klienci GROUP BY kraj HAVING COUNT(*) > 5;</code></td>
    </tr>
  </table>
</div>

<div align="center" id="funkcje">

## 🔣 Funkcje

</div>

Funkcje w SQL to wbudowane narzędzia służące do wykonywania operacji na danych, takich jak obliczenia matematyczne, manipulacje tekstem czy agregacje wyników.

<div align="center" id="funkcje-agregujące">

### 📊 Funkcje Agregujące

</div>

<div align="center">
  <table>
    <tr>
      <th>Funkcja</th>
      <th>Opis</th>
      <th>Przykład</th>
    </tr>
    <tr>
      <td>🔢 <strong>COUNT()</strong></td>
      <td>Zwraca liczbę wierszy</td>
      <td><code>SELECT COUNT(*) FROM klienci;</code></td>
    </tr>
    <tr>
      <td>➕ <strong>SUM()</strong></td>
      <td>Sumuje wartości w kolumnie</td>
      <td><code>SELECT SUM(cena) FROM produkty;</code></td>
    </tr>
    <tr>
      <td>📊 <strong>AVG()</strong></td>
      <td>Oblicza średnią wartość</td>
      <td><code>SELECT AVG(wiek) FROM klienci;</code></td>
    </tr>
    <tr>
      <td>⬇️ <strong>MIN()</strong></td>
      <td>Znajduje minimalną wartość</td>
      <td><code>SELECT MIN(cena) FROM produkty;</code></td>
    </tr>
    <tr>
      <td>⬆️ <strong>MAX()</strong></td>
      <td>Znajduje maksymalną wartość</td>
      <td><code>SELECT MAX(cena) FROM produkty;</code></td>
    </tr>
  </table>
</div>

<div align="center" id="funkcje-tekstowe">

### 📝 Funkcje Tekstowe

</div>

<div align="center">
  <table>
    <tr>
      <th>Funkcja</th>
      <th>Opis</th>
      <th>Przykład</th>
    </tr>
    <tr>
      <td>🔄 <strong>CONCAT()</strong></td>
      <td>Łączy ciągi znaków</td>
      <td><code>SELECT CONCAT(imie, ' ', nazwisko) FROM klienci;</code></td>
    </tr>
    <tr>
      <td>📏 <strong>LENGTH()</strong></td>
      <td>Zwraca długość ciągu</td>
      <td><code>SELECT LENGTH(nazwa) FROM produkty;</code></td>
    </tr>
    <tr>
      <td>⬆️ <strong>UPPER()</strong></td>
      <td>Konwertuje na wielkie litery</td>
      <td><code>SELECT UPPER(imie) FROM klienci;</code></td>
    </tr>
    <tr>
      <td>⬇️ <strong>LOWER()</strong></td>
      <td>Konwertuje na małe litery</td>
      <td><code>SELECT LOWER(nazwisko) FROM klienci;</code></td>
    </tr>
    <tr>
      <td>✂️ <strong>SUBSTRING()</strong></td>
      <td>Wyodrębnia fragment tekstu</td>
      <td><code>SELECT SUBSTRING(imie, 1, 3) FROM klienci;</code></td>
    </tr>
    <tr>
      <td>🔄 <strong>REPLACE()</strong></td>
      <td>Zastępuje tekst innym tekstem</td>
      <td><code>SELECT REPLACE(nazwa, 'stary', 'nowy') FROM produkty;</code></td>
    </tr>
    <tr>
      <td>✂️ <strong>TRIM()</strong></td>
      <td>Usuwa białe znaki</td>
      <td><code>SELECT TRIM(imie) FROM klienci;</code></td>
    </tr>
  </table>
</div>

<div align="center" id="funkcje-numeryczne">

### 🔢 Funkcje Numeryczne

</div>

<div align="center">
  <table>
    <tr>
      <th>Funkcja</th>
      <th>Opis</th>
      <th>Przykład</th>
    </tr>
    <tr>
      <td>📏 <strong>ABS()</strong></td>
      <td>Wartość bezwzględna</td>
      <td><code>SELECT ABS(-10);</code></td>
    </tr>
    <tr>
      <td>⬆️ <strong>CEILING()</strong></td>
      <td>Zaokrągla w górę</td>
      <td><code>SELECT CEILING(5.7);</code></td>
    </tr>
    <tr>
      <td>⬇️ <strong>FLOOR()</strong></td>
      <td>Zaokrągla w dół</td>
      <td><code>SELECT FLOOR(5.7);</code></td>
    </tr>
    <tr>
      <td>🔄 <strong>ROUND()</strong></td>
      <td>Zaokrągla do podanej precyzji</td>
      <td><code>SELECT ROUND(5.678, 2);</code></td>
    </tr>
    <tr>
      <td>➗ <strong>MOD()</strong></td>
      <td>Reszta z dzielenia</td>
      <td><code>SELECT MOD(10, 3);</code></td>
    </tr>
    <tr>
      <td>📈 <strong>POWER()</strong></td>
      <td>Potęgowanie</td>
      <td><code>SELECT POWER(2, 3);</code></td>
    </tr>
  </table>
</div>

<div align="center" id="funkcje-daty-i-czasu">

### ⏰ Funkcje Daty i Czasu

</div>

<div align="center">
  <table>
    <tr>
      <th>Funkcja</th>
      <th>Opis</th>
      <th>Przykład</th>
    </tr>
    <tr>
      <td>⌚ <strong>NOW()</strong></td>
      <td>Aktualna data i czas</td>
      <td><code>SELECT NOW();</code></td>
    </tr>
    <tr>
      <td>📅 <strong>CURDATE()</strong></td>
      <td>Aktualna data</td>
      <td><code>SELECT CURDATE();</code></td>
    </tr>
    <tr>
      <td>⏰ <strong>CURTIME()</strong></td>
      <td>Aktualny czas</td>
      <td><code>SELECT CURTIME();</code></td>
    </tr>
    <tr>
      <td>➕ <strong>DATE_ADD()</strong></td>
      <td>Dodaje określony czas do daty</td>
      <td><code>SELECT DATE_ADD('2024-07-19', INTERVAL 5 DAY);</code></td>
    </tr>
    <tr>
      <td>➖ <strong>DATE_SUB()</strong></td>
      <td>Odejmuje określony czas od daty</td>
      <td><code>SELECT DATE_SUB('2024-07-19', INTERVAL 5 DAY);</code></td>
    </tr>
    <tr>
      <td>📏 <strong>DATEDIFF()</strong></td>
      <td>Różnica między datami w dniach</td>
      <td><code>SELECT DATEDIFF('2024-07-19', '2024-07-14');</code></td>
    </tr>
    <tr>
      <td>📅 <strong>YEAR()</strong></td>
      <td>Wyodrębnia rok z daty</td>
      <td><code>SELECT YEAR(NOW());</code></td>
    </tr>
    <tr>
      <td>📅 <strong>MONTH()</strong></td>
      <td>Wyodrębnia miesiąc z daty</td>
      <td><code>SELECT MONTH(NOW());</code></td>
    </tr>
    <tr>
      <td>📅 <strong>DAY()</strong></td>
      <td>Wyodrębnia dzień z daty</td>
      <td><code>SELECT DAY(NOW());</code></td>
    </tr>
  </table>
</div>

<div align="center" id="funkcje-logiczne">

### 🔍 Funkcje Logiczne

</div>

<div align="center">
  <table>
    <tr>
      <th>Funkcja</th>
      <th>Opis</th>
      <th>Przykład</th>
    </tr>
    <tr>
      <td>🔀 <strong>IF()</strong></td>
      <td>Zwraca wartość w zależności od warunku</td>
      <td><code>SELECT IF(wiek > 18, 'Dorosły', 'Nieletni') FROM klienci;</code></td>
    </tr>
    <tr>
      <td>❓ <strong>IFNULL()</strong></td>
      <td>Zwraca alternatywną wartość dla NULL</td>
      <td><code>SELECT IFNULL(email, 'brak') FROM klienci;</code></td>
    </tr>
    <tr>
      <td>🔄 <strong>NULLIF()</strong></td>
      <td>Zwraca NULL gdy dwa wyrażenia są równe</td>
      <td><code>SELECT NULLIF(cena, 0) FROM produkty;</code></td>
    </tr>
  </table>
</div>
<div align="center" id="null-values">

## ❓ Obsługa wartości NULL

</div>

Wartości NULL w SQL reprezentują brak danych, nieznaną wartość lub nieokreśloną wartość. Są one wyjątkowe i wymagają specjalnego traktowania, ponieważ nie są równe żadnej wartości, nawet innemu NULL.

### Podstawowe zasady NULL

<div align="center">
  <table>
    <tr>
      <th>Zasada</th>
      <th>Opis</th>
      <th>Przykład</th>
    </tr>
    <tr>
      <td>❌ <strong>NULL ≠ NULL</strong></td>
      <td>Dwie wartości NULL nie są sobie równe</td>
      <td><code>SELECT NULL = NULL; -- Zwraca NULL, nie TRUE</code></td>
    </tr>
    <tr>
      <td>❓ <strong>NULL w warunkach</strong></td>
      <td>Warunki z NULL zwracają NULL (traktowane jako FALSE)</td>
      <td><code>WHERE kolumna = NULL -- Nie zadziała poprawnie!</code></td>
    </tr>
    <tr>
      <td>🔍 <strong>Specjalne operatory</strong></td>
      <td>Do sprawdzania NULL używaj IS NULL / IS NOT NULL</td>
      <td><code>WHERE kolumna IS NULL</code></td>
    </tr>
    <tr>
      <td>🧮 <strong>NULL w obliczeniach</strong></td>
      <td>Operacje arytmetyczne z NULL zwracają NULL</td>
      <td><code>SELECT 5 + NULL; -- Zwraca NULL</code></td>
    </tr>
    <tr>
      <td>🔢 <strong>NULL w agregacjach</strong></td>
      <td>Większość funkcji agregujących ignoruje NULL</td>
      <td><code>AVG, SUM, MIN, MAX</code> - wszystkie pomijają NULL</td>
    </tr>
  </table>
</div>

### Funkcje do obsługi NULL

<div align="center">
  <table>
    <tr>
      <th>Funkcja</th>
      <th>Opis</th>
      <th>Przykład</th>
    </tr>
    <tr>
      <td>🔄 <strong>IFNULL()</strong></td>
      <td>Zwraca pierwszy argument, jeśli nie jest NULL, w przeciwnym razie drugi</td>
      <td><code>SELECT IFNULL(email, 'Brak adresu') FROM klienci;</code></td>
    </tr>
    <tr>
      <td>🔄 <strong>COALESCE()</strong></td>
      <td>Zwraca pierwszy argument, który nie jest NULL</td>
      <td><code>SELECT COALESCE(telefon_kom, telefon_dom, email, 'Brak kontaktu') FROM klienci;</code></td>
    </tr>
    <tr>
      <td>🔁 <strong>NULLIF()</strong></td>
      <td>Zwraca NULL, jeśli dwa argumenty są równe, w przeciwnym razie pierwszy argument</td>
      <td><code>SELECT NULLIF(wartosc, 0) -- Unikanie dzielenia przez zero</code></td>
    </tr>
    <tr>
      <td>🔀 <strong>CASE</strong></td>
      <td>Wielokierunkowa logika warunkowa, może obsługiwać NULL</td>
      <td><code>CASE WHEN email IS NULL THEN 'Brak' ELSE email END</code></td>
    </tr>
  </table>
</div>

### Praktyczne problemy z NULL i ich rozwiązania

#### Problem 1: Sortowanie NULL

NULL w sortowaniu może zachowywać się różnie w zależności od bazy danych. W MySQL, domyślnie, NULL jest traktowane jako najmniejsza wartość.

```sql
-- Sortowanie z kontrolą pozycji NULL
SELECT imie, nazwisko, data_zwolnienia
FROM pracownicy
ORDER BY
    CASE WHEN data_zwolnienia IS NULL THEN 1 ELSE 0 END, -- NULL na końcu
    data_zwolnienia;
```

#### Problem 2: Grupowanie po kolumnach z NULL

Wartości NULL są traktowane jako jedna grupa podczas grupowania.

```sql
-- Zmiana etykiety dla grupy NULL
SELECT
    COALESCE(dzial, 'Brak przypisania') AS nazwa_dzialu,
    COUNT(*) AS liczba_pracownikow
FROM pracownicy
GROUP BY dzial;
```

#### Problem 3: Łączenia (JOIN) z kolumnami NULL

JOIN na kolumnach zawierających NULL może pomijać wiersze, ponieważ NULL nie pasuje do NULL.

```sql
-- Poprawne łączenie przy możliwych NULL
SELECT p.imie, d.nazwa
FROM pracownicy p
LEFT JOIN dzialy d ON p.dzial_id = d.id
                   OR (p.dzial_id IS NULL AND d.id IS NULL);
```

#### Problem 4: NULL w warunkach WHERE

```sql
-- Niepoprawnie (nic nie znajdzie):
SELECT * FROM pracownicy WHERE data_zwolnienia = NULL;

-- Poprawnie:
SELECT * FROM pracownicy WHERE data_zwolnienia IS NULL;
```

#### Problem 5: Matematyczne operacje z NULL

```sql
-- Unikanie NULL w obliczeniach
SELECT
    imie,
    pensja_podstawowa,
    premia,


    COALESCE(pensja_podstawowa, 0) + COALESCE(premia, 0) AS suma
FROM pracownicy;
```

### NULL w różnych kontekstach

<div align="center">
  <table>
    <tr>
      <th>Kontekst</th>
      <th>Zachowanie NULL</th>
    </tr>
    <tr>
      <td>🔍 <strong>Warunek WHERE</strong></td>
      <td>WHERE kolumna = NULL nie zwróci żadnych wyników<br>Użyj WHERE kolumna IS NULL</td>
    </tr>
    <tr>
      <td>🧮 <strong>Funkcje agregujące</strong></td>
      <td>COUNT(*) zlicza wszystkie wiersze<br>COUNT(kolumna) pomija NULL<br>AVG, SUM, MIN, MAX - wszystkie pomijają NULL</td>
    </tr>
    <tr>
      <td>🔢 <strong>GROUP BY</strong></td>
      <td>Wszystkie NULL są grupowane razem</td>
    </tr>
    <tr>
      <td>🔄 <strong>DISTINCT</strong></td>
      <td>Wszystkie NULL są traktowane jako jedna unikalna wartość</td>
    </tr>
    <tr>
      <td>🔗 <strong>JOIN</strong></td>
      <td>NULL nie pasuje do innego NULL w warunku JOIN</td>
    </tr>
    <tr>
      <td>📊 <strong>UNION</strong></td>
      <td>NULL w jednej tabeli pasuje do NULL w drugiej tabeli</td>
    </tr>
    <tr>
      <td>⚙️ <strong>Indeksy</strong></td>
      <td>NULL jest przechowywany w indeksie w specjalny sposób</td>
    </tr>
    <tr>
      <td>🔒 <strong>UNIQUE</strong></td>
      <td>Większość baz danych pozwala na wiele NULL w kolumnach UNIQUE</td>
    </tr>
  </table>
</div>

> 💡 **Wskazówka**: Najlepszą praktyką jest świadome projektowanie bazy danych z uwzględnieniem wartości NULL. Określ, czy kolumna powinna akceptować NULL, i konsekwentnie obsługuj te wartości w kodzie.

<div align="center" id="joins-łączenia">

## 🔗 Joins (łączenia)

</div>

Łączenia (JOIN) to fundamentalna koncepcja SQL, pozwalająca na pobieranie danych z wielu powiązanych tabel w jednym zapytaniu. Działają one jak mosty między tabelami, umożliwiając tworzenie kompletnego obrazu danych.

### 🌟 Dlaczego JOIN są tak istotne?

Bazy danych relacyjne są projektowane z myślą o normalizacji - dane są podzielone na wiele tabel, by uniknąć redundancji. JOIN to narzędzie, które pozwala nam "poskładać" fragmenty danych z powrotem w całość, gdy potrzebujemy przeprowadzić analizę.

Przykładowo, zamiast przechowywać wszystkie dane klientów wraz z ich zamówieniami w jednej ogromnej tabeli (co powodowałoby wiele duplikacji), tworzymy oddzielne tabele dla klientów i zamówień, a następnie łączymy je przy użyciu JOIN, gdy potrzebujemy pełnego obrazu.

### Wizualne porównanie typów łączeń

<div align="center">
  <table>
    <tr>
      <th>Typ łączenia</th>
      <th>Diagram</th>
      <th>Opis</th>
      <th>Przykład</th>
    </tr>
    <tr>
      <td>🔄 <strong>INNER JOIN</strong></td>
      <td>○●●○<br>○●●○<br>(tylko część wspólna)</td>
      <td>Zwraca tylko wiersze, które mają pasujące wartości w obu tabelach. To najbardziej restrykcyjny typ JOIN.</td>
      <td><code>SELECT a.nazwa, b.data FROM produkty a INNER JOIN zamowienia b ON a.id = b.produkt_id;</code><br>Pokazuje tylko produkty, które zostały zamówione.</td>
    </tr>
    <tr>
      <td>👈 <strong>LEFT JOIN</strong><br>(LEFT OUTER JOIN)</td>
      <td>●●●○<br>●●●○<br>(cała lewa + pasująca prawa)</td>
      <td>Zwraca wszystkie wiersze z lewej tabeli i tylko pasujące z prawej. Gdy nie ma dopasowania, pola z prawej tabeli mają wartość NULL.</td>
      <td><code>SELECT k.imie, z.numer FROM klienci k LEFT JOIN zamowienia z ON k.id = z.klient_id;</code><br>Pokazuje wszystkich klientów, nawet tych bez zamówień.</td>
    </tr>
    <tr>
      <td>👉 <strong>RIGHT JOIN</strong><br>(RIGHT OUTER JOIN)</td>
      <td>○●●●<br>○●●●<br>(cała prawa + pasująca lewa)</td>
      <td>Zwraca wszystkie wiersze z prawej tabeli i tylko pasujące z lewej. Gdy nie ma dopasowania, pola z lewej tabeli mają wartość NULL.</td>
      <td><code>SELECT p.nazwa, k.nazwa FROM produkt_kategorie p RIGHT JOIN kategorie k ON p.kategoria_id = k.id;</code><br>Pokazuje wszystkie kategorie, nawet te bez przypisanych produktów.</td>
    </tr>
    <tr>
      <td>🔄 <strong>FULL JOIN</strong><br>(FULL OUTER JOIN)</td>
      <td>●●●●<br>●●●●<br>(wszystko z obu tabel)</td>
      <td>Zwraca wszystkie wiersze, gdy istnieje dopasowanie w jednej z tabel. Wypełnia NULL, gdy nie ma dopasowania.</td>
      <td><i>MySQL nie obsługuje bezpośrednio FULL JOIN, ale można go symulować za pomocą LEFT JOIN, UNION i RIGHT JOIN.</i></td>
    </tr>
    <tr>
      <td>❌ <strong>CROSS JOIN</strong></td>
      <td>●●●●<br>●●●●<br>●●●●<br>(każdy z każdym)</td>
      <td>Zwraca iloczyn kartezjański - każdy wiersz z pierwszej tabeli łączony jest z każdym wierszem z drugiej tabeli. Uwaga: może generować ogromne zbiory wyników!</td>
      <td><code>SELECT p.nazwa, r.kolor FROM produkty p CROSS JOIN rozmiary_kolory r;</code><br>Generuje wszystkie możliwe kombinacje produktów i kolorów.</td>
    </tr>
    <tr>
      <td>🔄 <strong>SELF JOIN</strong></td>
      <td>⭕️➡️⭕️<br>⭕️➡️⭕️<br>(tabela łączy się sama ze sobą)</td>
      <td>Specjalny przypadek, gdy tabela jest łączona sama ze sobą. Używany najczęściej dla danych hierarchicznych.</td>
      <td><code>SELECT p1.imie AS pracownik, p2.imie AS manager FROM pracownicy p1 JOIN pracownicy p2 ON p1.manager_id = p2.id;</code><br>Pokazuje pracowników i ich przełożonych.</td>
    </tr>
  </table>
</div>

### Kluczowe zasady używania JOIN

1. **Warunek łączenia** (JOIN ON) określa, na podstawie jakich kolumn tabele są łączone - najczęściej klucz obcy i klucz główny
2. **Aliasy tabel** (np. `klienci k`) zwiększają czytelność zapytań, szczególnie przy złożonych łączeniach
3. **Kolejność tabel** ma znaczenie tylko w przypadku LEFT i RIGHT JOIN; dla INNER JOIN możesz zamieniać kolejność
4. **Wydajność** - JOIN może być kosztowny obliczeniowo, dlatego ważne jest odpowiednie indeksowanie kolumn używanych w warunku łączenia

### 💡 Porady dotyczące JOIN:

<div align="center">
  <table>
    <tr>
      <th>Porada</th>
      <th>Wyjaśnienie</th>
    </tr>
    <tr>
      <td>📊 <strong>Wybieraj kolumny, nie "*"</strong></td>
      <td>Używaj <code>SELECT a.nazwa, b.data</code> zamiast <code>SELECT *</code> w złączeniach - to poprawia czytelność i wydajność.</td>
    </tr>
    <tr>
      <td>🔎 <strong>Używaj warunków WHERE</strong></td>
      <td>Po JOIN możesz dodać klauzulę WHERE, aby dalej filtrować wyniki.</td>
    </tr>
    <tr>
      <td>🏭 <strong>Łącz wiele tabel</strong></td>
      <td>Możesz łączyć więcej niż dwie tabele za pomocą kilku klauzul JOIN.</td>
    </tr>
    <tr>
      <td>⚠️ <strong>Uwaga na NULL</strong></td>
      <td>Wartości NULL w kolumnach łączących mogą wykluczać wiersze z wyników INNER JOIN.</td>
    </tr>
    <tr>
      <td>🔄 <strong>USING zamiast ON</strong></td>
      <td>Jeśli kolumny mają takie same nazwy, możesz użyć <code>JOIN USING(id)</code> zamiast <code>JOIN ON a.id = b.id</code>.</td>
    </tr>
  </table>
</div>

### Szczegóły pracy z NATURAL JOIN

<div align="center">
  <table>
    <tr>
      <th>Typ JOINa</th>
      <th>Opis</th>
      <th>Zalety</th>
      <th>Wady</th>
      <th>Przykład</th>
    </tr>
    <tr>
      <td>🔄 <strong>NATURAL JOIN</strong></td>
      <td>Automatycznie łączy tabele na podstawie kolumn o identycznych nazwach.</td>
      <td>Krótszy kod, mniej pisania dla prostych przypadków</td>
      <td>Mniejsza kontrola, ryzyko nieoczekiwanych połączeń, gdy dodane są nowe kolumny</td>
      <td><code>SELECT * FROM klienci NATURAL JOIN zamowienia;</code><br>Łączy po wszystkich kolumnach o tej samej nazwie (np. id).</td>
    </tr>
  </table>
</div>

> ⚠️ **Uwaga**: NATURAL JOIN powinien być używany ostrożnie, ponieważ zachowanie może się zmienić, gdy struktura tabeli zostanie zmodyfikowana.

---

<div align="center" id="zaawansowane-techniki-łączenia">

## 🔗 Zaawansowane techniki łączenia tabel

</div>

### 1. Self Join z warunkami złożonymi

```sql
-- Znajdź pary pracowników z tego samego działu, którzy mają podobny poziom doświadczenia
SELECT
    p1.imie AS pracownik1_imie,
    p1.nazwisko AS pracownik1_nazwisko,
    p2.imie AS pracownik2_imie,
    p2.nazwisko AS pracownik2_nazwisko,
    p1.dzial,
    p1.lata_doswiadczenia AS doswiadczenie1,
    p2.lata_doswiadczenia AS doswiadczenie2
FROM
    pracownicy p1
JOIN
    pracownicy p2 ON p1.dzial = p2.dzial
                  AND ABS(p1.lata_doswiadczenia - p2.lata_doswiadczenia) <= 1
                  AND p1.id < p2.id  -- Uniknięcie duplikatów
ORDER BY
    p1.dzial, p1.nazwisko;
```

### 2. Złączenia zewnętrzne zagnieżdżone

```sql
-- Raport pokazujący klientów, ich zamówienia i produkty (nawet gdy nie mają zamówień)
SELECT
    k.imie,
    k.nazwisko,
    COALESCE(z.id, 'Brak zamówień') AS zamowienie_id,
    COALESCE(p.nazwa, 'N/D') AS produkt
FROM
    klienci k
LEFT JOIN
    zamowienia z ON k.id = z.klient_id
LEFT JOIN
    pozycje_zamowienia pz ON z.id = pz.zamowienie_id
LEFT JOIN
    produkty p ON pz.produkt_id = p.id
ORDER BY
    k.nazwisko, z.id;
```

### 3. Emulacja FULL JOIN w MySQL

```sql
-- MySQL nie ma natywnego FULL JOIN, ale można go zasymulować za pomocą UNION
-- Lista wszystkich pracowników i projektów, nawet niepowiązanych
SELECT
    p.imie,
    p.nazwisko,
    pr.nazwa AS projekt
FROM
    pracownicy p
LEFT JOIN
    pracownicy_projekty pp ON p.id = pp.pracownik_id
LEFT JOIN
    projekty pr ON pp.projekt_id = pr.id

UNION

SELECT
    p.imie,
    p.nazwisko,
    pr.nazwa
FROM
    projekty pr
LEFT JOIN
    pracownicy_projekty pp ON pr.id = pp.projekt_id
LEFT JOIN
    pracownicy p ON pp.pracownik_id = p.id
WHERE
    p.id IS NULL;  -- Tylko projekty bez przypisanych pracowników
```

### 4. JOIN z zastosowaniem GROUP BY i funkcji agregujących

```sql
-- Lista klientów z sumą ich zamówień i liczbą zamówionych produktów
SELECT
    k.id,
    CONCAT(k.imie, ' ', k.nazwisko) AS klient,
    COUNT(DISTINCT z.id) AS liczba_zamowien,
    SUM(z.kwota) AS suma_zamowien,
    COUNT(pz.produkt_id) AS liczba_produktow
FROM
    klienci k
LEFT JOIN
    zamowienia z ON k.id = z.klient_id
LEFT JOIN
    pozycje_zamowienia pz ON z.id = pz.zamowienie_id
GROUP BY
    k.id, k.imie, k.nazwisko
ORDER BY
    suma_zamowien DESC NULLS LAST;
```

### 5. Złączenia warunkowe z CASE

```sql
-- Klasyfikacja klientów w zależności od historii zakupów
SELECT
    k.id,
    k.imie,
    k.nazwisko,
    k.email,
    CASE
        WHEN COUNT(z.id) = 0 THEN 'Brak aktywności'
        WHEN COUNT(z.id) BETWEEN 1 AND 3 THEN 'Klient okazjonalny'
        WHEN COUNT(z.id) BETWEEN 4 AND 10 THEN 'Klient regularny'
        ELSE 'Klient premium'
    END AS segment_klienta,
    SUM(COALESCE(z.kwota, 0)) AS suma_wydatkow
FROM
    klienci k
LEFT JOIN
    zamowienia z ON k.id = z.klient_id AND z.data_zamowienia >= DATE_SUB(CURRENT_DATE, INTERVAL 1 YEAR)
GROUP BY
    k.id, k.imie, k.nazwisko, k.email;
```

<div align="center" id="transakcje-acid">

## 🔄 Transakcje i zasady ACID

</div>

### Co to jest transakcja?

Transakcja to sekwencja operacji wykonywanych jako jedna niepodzielna (atomowa) jednostka pracy. To jak przesyłanie pieniędzy z jednego konta bankowego na drugie - albo cała operacja się powiedzie (pieniądze znikną z jednego konta i pojawią się na drugim), albo w ogóle się nie wykona (żadne konto nie zmieni stanu).

```sql
START TRANSACTION;
    UPDATE konta SET saldo = saldo - 1000 WHERE id = 1;  -- Pobierz 1000 zł z konta nr 1
    UPDATE konta SET saldo = saldo + 1000 WHERE id = 2;  -- Dodaj 1000 zł do konta nr 2
COMMIT;  -- Zatwierdź wszystkie zmiany
```

<div align="center">

### Zasady ACID - fundament niezawodnych baz danych

</div>

Właściwości ACID gwarantują niezawodność transakcji nawet w przypadku błędów, awarii czy problemów z zasilaniem.

<div align="center">
  <table>
    <tr>
      <th>Zasada</th>
      <th>Wyjaśnienie</th>
      <th>Przykład z życia</th>
    </tr>
    <tr>
      <td>🔄 <strong>Atomicity</strong><br>(Atomowość)</td>
      <td>Transakcja jest niepodzielna - albo wszystkie operacje się wykonują, albo żadna</td>
      <td>Wypłata z bankomatu: albo otrzymujesz pieniądze i konto jest obciążone, albo nie ma wypłaty i stan konta nie zmienia się</td>
    </tr>
    <tr>
      <td>✅ <strong>Consistency</strong><br>(Spójność)</td>
      <td>Transakcja przenosi bazę danych z jednego poprawnego stanu do innego poprawnego stanu</td>
      <td>Po przelewie suma pieniędzy w systemie musi pozostać taka sama (to co ubyło z jednego konta, przybyło na drugie)</td>
    </tr>
    <tr>
      <td>🔒 <strong>Isolation</strong><br>(Izolacja)</td>
      <td>Transakcje działające równolegle nie wpływają na siebie</td>
      <td>Gdy dwie osoby jednocześnie wypłacają pieniądze z tego samego konta, każda operacja "widzi" poprawny, aktualny stan konta</td>
    </tr>
    <tr>
      <td>💾 <strong>Durability</strong><br>(Trwałość)</td>
      <td>Po zatwierdzeniu transakcji, zmiany są trwałe nawet w przypadku awarii</td>
      <td>Jeśli bankomat potwierdził wypłatę, to nawet gdy system się zawiesi, bank nie "zapomni" o tej transakcji</td>
    </tr>
  </table>
</div>

### Podstawowe komendy transakcji

<div align="center">
  <table>
    <tr>
      <th>Komenda</th>
      <th>Opis</th>
      <th>Przykład</th>
    </tr>
    <tr>
      <td>🎬 <strong>START TRANSACTION</strong><br>lub <strong>BEGIN</strong></td>
      <td>Rozpoczyna nową transakcję</td>
      <td><code>START TRANSACTION;</code></td>
    </tr>
    <tr>
      <td>✅ <strong>COMMIT</strong></td>
      <td>Zatwierdza wszystkie zmiany wykonane w transakcji</td>
      <td><code>COMMIT;</code></td>
    </tr>
    <tr>
      <td>↩️ <strong>ROLLBACK</strong></td>
      <td>Cofa wszystkie zmiany wykonane w transakcji</td>
      <td><code>ROLLBACK;</code></td>
    </tr>
    <tr>
      <td>🔖 <strong>SAVEPOINT</strong></td>
      <td>Tworzy punkt kontrolny w transakcji</td>
      <td><code>SAVEPOINT nazwa_punktu;</code></td>
    </tr>
    <tr>
      <td>↩️ <strong>ROLLBACK TO</strong></td>
      <td>Cofa transakcję do określonego punktu kontrolnego</td>
      <td><code>ROLLBACK TO nazwa_punktu;</code></td>
    </tr>
  </table>
</div>

### Praktyczny przykład użycia transakcji

```sql
-- Scenariusz: Przenoszenie pracownika do nowego działu
START TRANSACTION;

-- 1. Sprawdź, czy nowy dział istnieje
SELECT @czy_istnieje := COUNT(*) FROM dzialy WHERE id = 5;

-- 2. Jeśli dział nie istnieje, przerwij transakcję
IF @czy_istnieje = 0 THEN
    ROLLBACK;
    SELECT 'Transakcja przerwana: dział nie istnieje';
ELSE
    -- 3. Zapisz historię zatrudnienia w starym dziale
    INSERT INTO historia_zatrudnienia (pracownik_id, dzial_id, data_rozpoczecia, data_zakonczenia)
    SELECT id, dzial_id, data_zatrudnienia, CURRENT_DATE()
    FROM pracownicy
    WHERE id = 101;

    -- 4. Aktualizuj dział pracownika
    UPDATE pracownicy
    SET dzial_id = 5, data_zatrudnienia = CURRENT_DATE()
    WHERE id = 101;

    -- 5. Zatwierdź wszystkie zmiany
    COMMIT;
    SELECT 'Pracownik przeniesiony do nowego działu';
END IF;
```

### Poziomy izolacji transakcji

Poziom izolacji określa, jak transakcje "widzą" zmiany wprowadzane przez inne równoległe transakcje.

<div align="center">
  <table>
    <tr>
      <th>Poziom izolacji</th>
      <th>Dirty Read</th>
      <th>Non-repeatable Read</th>
      <th>Phantom Read</th>
      <th>Opis</th>
    </tr>
    <tr>
      <td>🔍 <strong>READ UNCOMMITTED</strong></td>
      <td>Możliwy</td>
      <td>Możliwy</td>
      <td>Możliwy</td>
      <td>Najniższy poziom izolacji; transakcja może widzieć niezatwierdzone zmiany innych transakcji</td>
    </tr>
    <tr>
      <td>📖 <strong>READ COMMITTED</strong></td>
      <td>Niemożliwy</td>
      <td>Możliwy</td>
      <td>Możliwy</td>
      <td>Transakcja widzi tylko zatwierdzone zmiany innych transakcji</td>
    </tr>
    <tr>
      <td>🔄 <strong>REPEATABLE READ</strong></td>
      <td>Niemożliwy</td>
      <td>Niemożliwy</td>
      <td>Możliwy</td>
      <td>Transakcja widzi te same dane przy każdym odczycie (domyślny w MySQL)</td>
    </tr>
    <tr>
      <td>🔒 <strong>SERIALIZABLE</strong></td>
      <td>Niemożliwy</td>
      <td>Niemożliwy</td>
      <td>Niemożliwy</td>
      <td>Najwyższy poziom izolacji; transakcje są całkowicie izolowane od siebie</td>
    </tr>
  </table>
</div>

#### Problemy izolacji transakcji wyjaśnione prostym językiem:

1. **Dirty Read (Brudny odczyt)** - Jedna transakcja widzi dane, które druga transakcja zmieniła, ale jeszcze ich nie zatwierdziła. Jeśli druga transakcja zostanie wycofana, pierwsza operowała na niepoprawnych danych.

2. **Non-repeatable Read (Niepowtarzalny odczyt)** - Transakcja odczytuje te same dane dwukrotnie, ale między odczytami inna transakcja modyfikuje i zatwierdza te dane, więc wyniki są różne.

3. **Phantom Read (Odczyt fantomów)** - Transakcja wykonuje zapytanie zwracające zbiór wierszy, ale inna transakcja wstawia nowe wiersze spełniające warunki pierwszego zapytania, które pojawią się w wynikach, jeśli zapytanie zostanie wykonane ponownie.

### Ustawianie poziomu izolacji

```sql
-- Ustawienie poziomu izolacji dla całej sesji
SET SESSION TRANSACTION ISOLATION LEVEL READ COMMITTED;

-- Ustawienie poziomu izolacji dla następnej transakcji
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
```

### Deadlock - zakleszczenie transakcji

Deadlock (zakleszczenie) występuje, gdy dwie lub więcej transakcji wzajemnie blokuje się, czekając na zasoby zajęte przez drugą transakcję.

```
Transakcja A:                         Transakcja B:
1. Blokuje wiersz w tabeli X          1. Blokuje wiersz w tabeli Y
2. Próbuje uzyskać dostęp             2. Próbuje uzyskać dostęp
   do tabeli Y, ale czeka                do tabeli X, ale czeka
   na zwolnienie przez B                 na zwolnienie przez A
```

#### Jak unikać deadlocków:

1. Zawsze blokuj zasoby w tej samej kolejności
2. Utrzymuj transakcje krótkie i szybkie
3. Używaj odpowiednich poziomów izolacji
4. Dodaj logikę obsługi deadlocków w aplikacji

```sql
START TRANSACTION;
SELECT * FROM tabela1 WHERE id = 1 FOR UPDATE;  -- Jawne blokowanie
SELECT * FROM tabela2 WHERE id = 1 FOR UPDATE;
-- Reszta transakcji...
COMMIT;
```

> 💡 **Wskazówka**: Większość systemów bazodanowych automatycznie wykrywa deadlocki i przerywa jedną z transakcji, aby rozwiązać problem. Przerwana transakcja zwraca błąd, a aplikacja powinna spróbować wykonać ją ponownie.

### Transakcje w różnych systemach bazodanowych

<div align="left">
  <table>
    <tr>
      <th>System</th>
      <th>Specyfika transakcji</th>
    </tr>
    <tr>
      <td>🐬 <strong>MySQL</strong></td>
      <td>
        • InnoDB obsługuje pełne transakcje ACID<br>
        • Domyślny poziom izolacji: REPEATABLE READ<br>
        • MyISAM nie obsługuje transakcji
      </td>
    </tr>
    <tr>
      <td>🐘 <strong>PostgreSQL</strong></td>
      <td>
        • Pełne wsparcie transakcji ACID<br>
        • Domyślny poziom izolacji: READ COMMITTED<br>
        • Zaawansowane mechanizmy MVCC (Multi-Version Concurrency Control)
      </td>
    </tr>
    <tr>
      <td>🪟 <strong>SQL Server</strong></td>
      <td>
        • Obsługuje wszystkie poziomy izolacji ACID<br>
        • Wprowadza dodatkowy poziom: SNAPSHOT ISOLATION<br>
        • Zaawansowany mechanizm zarządzania blokadami
      </td>
    </tr>
    <tr>
      <td>🗄️ <strong>SQLite</strong></td>
      <td>
        • Obsługuje transakcje ACID<br>
        • Trzy poziomy izolacji: DEFERRED, IMMEDIATE, EXCLUSIVE<br>
        • Wspiera zagnieżdżone transakcje przez punkty zapisu (savepoint)
      </td>
    </tr>
  </table>
</div>

### Dobór strategii transakcyjnej

1. **Dla krótkich, prostych operacji:**

   - Używaj domyślnego poziomu izolacji
   - Minimalizuj czas trwania transakcji

2. **Dla operacji wymagających spójności odczytu:**

   - Używaj poziomów REPEATABLE READ lub SERIALIZABLE
   - Unikaj długiego blokowania zasobów

3. **Dla raportów i analiz (dużo odczytów):**

   - Rozważ niższe poziomy izolacji dla lepszej wydajności
   - Akceptuj, że dane mogą się nieznacznie zmieniać w trakcie analizy

4. **Dla operacji krytycznych (np. finansowych):**
   - Używaj najwyższego poziomu izolacji (SERIALIZABLE)
   - Implementuj dodatkową logikę weryfikacji w aplikacji

> 💡 **Wskazówka praktyczna**: W większości przypadków domyślny poziom izolacji bazy danych jest dobrym kompromisem między bezpieczeństwem a wydajnością. Zmieniaj go tylko wtedy, gdy masz specyficzne wymagania lub problemy z wydajnością.

<div align="center" id="okna-funkcje-okienkowe">

## 📊 Funkcje okienkowe (Window Functions)

</div>

### Co to są funkcje okienkowe i po co ich używać?

Wyobraź sobie, że pracujesz w klasie i chcesz dowiedzieć się:

- Jaką masz średnią ocenę z matematyki
- Jak Twoja ocena wypada na tle średniej klasy
- Które miejsce zajmujesz w rankingu klasy

**Bez funkcji okienkowych** musiałbyś wykonać trzy oddzielne zapytania:

1. Zapytanie o Twoje oceny
2. Zapytanie o średnią ocen w klasie
3. Zapytanie o pozycję w rankingu

**Z funkcjami okienkowymi** możesz zrobić to wszystko w JEDNYM zapytaniu!

### Funkcje okienkowe - prosta definicja

Funkcje okienkowe to specjalne funkcje SQL, które:

- Wykonują obliczenia na grupie wierszy (tzw. "oknie")
- Ale zwracają wynik dla KAŻDEGO wiersza osobno
- Nie zmniejszają liczby wierszy w wyniku (w przeciwieństwie do GROUP BY)

### Dlaczego nazywają się "okienkowe"?

Nazwa "okienkowe" wzięła się stąd, że określamy "okno" wierszy, które funkcja ma "widzieć" podczas obliczeń dla każdego wiersza. To jak patrzenie przez okno na grupę danych, zamiast na pojedynczy wiersz.

### Porównanie z klasyczną agregacją (GROUP BY)

<div align="center">
  <table>
    <tr>
      <th>Zwykła agregacja (GROUP BY)</th>
      <th>Funkcja okienkowa</th>
    </tr>
    <tr>
      <td><img src="https://i.imgur.com/XwTRsgJ.png" width="300" alt="GROUP BY zmniejsza liczbę wierszy"></td>
      <td><img src="https://i.imgur.com/A9XXUdD.png" width="300" alt="Window function zachowuje wszystkie wiersze"></td>
    </tr>
    <tr>
      <td>Z 5 wierszy robi 2 wiersze wynikowe</td>
      <td>Zachowuje wszystkie 5 wierszy, dodając wyniki agregacji</td>
    </tr>
    <tr>
      <td>
      <pre>
SELECT miasto, AVG(pensja)
FROM pracownicy
GROUP BY miasto;
      </pre>
      </td>
      <td>
      <pre>
SELECT imie, pensja, miasto,
  AVG(pensja) OVER (
    PARTITION BY miasto
  ) as srednia_w_miescie
FROM pracownicy;
      </pre>
      </td>
    </tr>
  </table>
</div>

### Praktyczny przykład na danych, które znasz

Załóżmy, że mamy tabelę z ocenami uczniów:

```
| ID | Uczeń      | Klasa | Przedmiot  | Ocena |
|----|------------|-------|------------|-------|
| 1  | Anna       | 3A    | Matematyka | 5     |
| 2  | Bartek     | 3A    | Matematyka | 4     |
| 3  | Czarek     | 3A    | Historia   | 3     |
| 4  | Dominika   | 3B    | Matematyka | 5     |
| 5  | Ewa        | 3B    | Matematyka | 4     |
| 6  | Filip      | 3B    | Historia   | 5     |
```

Chcemy wiedzieć:

1. Jaką ocenę dostał każdy uczeń
2. Jaka jest średnia ocena z danego przedmiotu w danej klasie
3. O ile ocena ucznia różni się od tej średniej

**Rozwiązanie bez funkcji okienkowych** - potrzebowalibyśmy skomplikowanego JOIN:

```sql
SELECT o1.Uczeń, o1.Klasa, o1.Przedmiot, o1.Ocena,
  srednie.SredniaOcena,
  o1.Ocena - srednie.SredniaOcena as Różnica
FROM Oceny o1
JOIN (
  SELECT Klasa, Przedmiot, AVG(Ocena) as SredniaOcena
  FROM Oceny
  GROUP BY Klasa, Przedmiot
) srednie ON o1.Klasa = srednie.Klasa AND o1.Przedmiot = srednie.Przedmiot;
```

**Rozwiązanie z funkcją okienkową** - prosto i czytelnie:

```sql
SELECT Uczeń, Klasa, Przedmiot, Ocena,
  AVG(Ocena) OVER (PARTITION BY Klasa, Przedmiot) as SredniaOcena,
  Ocena - AVG(Ocena) OVER (PARTITION BY Klasa, Przedmiot) as Różnica
FROM Oceny;
```

### Jak działa klauzula OVER?

Klauzula `OVER()` mówi: "To jest funkcja okienkowa". Wewnątrz nawiasów definiujemy, jak ma wyglądać nasze "okno":

```
OVER (
  PARTITION BY kolumna1, kolumna2...   -- Podział na grupy, jak GROUP BY
  ORDER BY kolumna3...                 -- Sortowanie wierszy w grupie
  ROWS/RANGE BETWEEN ... AND ...       -- Konkretne wiersze w grupie
)
```

#### PARTITION BY (czyli "podziel na grupy")

- Działa podobnie jak GROUP BY, ale nie redukuje liczby wierszy
- Tworzy osobne grupy (okna) dla każdej unikalnej wartości
- Przykład: `PARTITION BY klasa` - obliczenia będą wykonywane osobno dla każdej klasy

#### ORDER BY (czyli "uporządkuj wiersze")

- Określa kolejność wierszy w oknie
- Kluczowe dla funkcji takich jak ROW_NUMBER(), RANK(), LAG(), itp.
- Przykład: `ORDER BY data` - numeracja wierszy według daty

#### ROWS/RANGE (czyli "które dokładnie wiersze")

- Opcjonalnie określa, które dokładnie wiersze mają być w oknie
- Przydatne do obliczeń narastających, średnich kroczących, itp.
- Przykład: `ROWS BETWEEN 2 PRECEDING AND CURRENT ROW` - bieżący wiersz i 2 poprzednie

### Najczęstsze funkcje okienkowe na prostych przykładach

#### 1. Funkcje rankingowe (numerowanie wierszy)

```sql
SELECT
    imie,
    klasa,
    ocena,
    -- Numeruje wszystkie wiersze po kolei (1,2,3,4,...)
    ROW_NUMBER() OVER(ORDER BY ocena DESC) as liczba_porzadkowa,

    -- Przydziela rankingi, ale równe oceny = te same rankingi (1,2,2,4,...)
    RANK() OVER(ORDER BY ocena DESC) as ranking_z_przerwami,

    -- Przydziela rankingi bez przerw (1,2,2,3,...)
    DENSE_RANK() OVER(ORDER BY ocena DESC) as ranking_bez_przerw
FROM uczniowie;
```

#### 2. Funkcje agregujące okienkowo

```sql
SELECT
    imie,
    klasa,
    ocena,
    -- Średnia ocena w klasie
    AVG(ocena) OVER(PARTITION BY klasa) as srednia_w_klasie,

    -- Liczba uczniów w klasie
    COUNT(*) OVER(PARTITION BY klasa) as liczba_uczniow_w_klasie,

    -- Najlepsza ocena w klasie
    MAX(ocena) OVER(PARTITION BY klasa) as najlepsza_w_klasie
FROM uczniowie;
```

#### 3. Funkcje nawigacyjne (dostęp do innych wierszy)

```sql
SELECT
    data,
    tytul_sprawdzianu,
    ocena,
    -- Poprzednia ocena tego ucznia (chronologicznie)
    LAG(ocena) OVER(PARTITION BY uczen_id ORDER BY data) as poprzednia_ocena,

    -- Następna ocena tego ucznia
    LEAD(ocena) OVER(PARTITION BY uczen_id ORDER BY data) as nastepna_ocena,

    -- Porównanie z poprzednią oceną
    ocena - LAG(ocena) OVER(PARTITION BY uczen_id ORDER BY data) as zmiana
FROM oceny_ucznia;
```

#### 4. Funkcje obliczania sum narastających

```sql
SELECT
    miesiac,
    wydatki,
    -- Suma wydatków od początku roku do bieżącego miesiąca
    SUM(wydatki) OVER(
        ORDER BY miesiac
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) as suma_wydatkow_narastajaco
FROM budzet_domowy;
```

### Wskazówki dotyczące funkcji okienkowych

1. Funkcje okienkowe wykonywane są **PO** fazie WHERE, GROUP BY i HAVING
2. Funkcje okienkowe można używać tylko w klauzulach SELECT i ORDER BY
3. Nie można ich używać w WHERE, HAVING czy GROUP BY
4. Jeśli potrzebujesz filtrować po wyniku funkcji okienkowej, użyj podzapytania lub CTE

<div align="center" id="common-table-expressions">

## 📋 Wyrażenia CTE (Common Table Expressions)

</div>

### Co to jest CTE i jak to wytłumaczyć najprostszymi słowami?

Wyobraź sobie, że piszesz trudne wypracowanie. Zamiast od razu pisać cały tekst, robisz najpierw notatki i plan na kartce, a potem z nich korzystasz. CTE jest jak taka notatka dla bazy danych - tymczasowy wynik, który pomoże Ci zbudować końcowe zapytanie.

**CTE to "tymczasowa tabela", która:**

- Istnieje tylko podczas wykonywania zapytania
- Pomaga rozbić skomplikowane zapytanie na prostsze, logiczne kroki
- Sprawia, że kod SQL jest bardziej czytelny i łatwiejszy do zrozumienia
- Może być użyta wielokrotnie w tym samym zapytaniu

### Prosty przykład

Załóżmy, że mamy tabelę `uczniowie` z ocenami:

```
| ID | Uczeń      | Klasa | Przedmiot  | Ocena |
|----|------------|-------|------------|-------|
| 1  | Anna       | 3A    | Matematyka | 5     |
| 2  | Bartek     | 3A    | Matematyka | 4     |
| 3  | Czarek     | 3A    | Historia   | 3     |
| 4  | Dominika   | 3B    | Matematyka | 5     |
| 5  | Ewa        | 3B    | Matematyka | 4     |
| 6  | Filip      | 3B    | Historia   | 5     |
```

Chcemy wiedzieć:

1. Jaką ocenę dostał każdy uczeń
2. Jaka jest średnia ocena z danego przedmiotu w danej klasie
3. O ile ocena ucznia różni się od tej średniej

**Rozwiązanie bez CTE** - zagnieżdżone podzapytania, trudne do czytania:

```sql
SELECT o1.Uczeń, o1.Klasa, o1.Przedmiot, o1.Ocena,
  srednie.SredniaOcena,
  o1.Ocena - srednie.SredniaOcena as Różnica
FROM Oceny o1
JOIN (
  SELECT Klasa, Przedmiot, AVG(Ocena) as SredniaOcena
  FROM Oceny
  GROUP BY Klasa, Przedmiot
) srednie ON o1.Klasa = srednie.Klasa AND o1.Przedmiot = srednie.Przedmiot;
```

**Rozwiązanie z CTE** - czytelne rozwiązanie krok po kroku:

```sql
WITH SrednieOcenyKlas AS (
    -- Krok 1: Oblicz średnią ocenę dla każdej klasy
    SELECT klasa, AVG(ocena) as srednia_klasy
    FROM uczniowie
    GROUP BY klasa
)
-- Krok 2: Znajdź uczniów z oceną wyższą niż średnia w ich klasie
SELECT u.imie, u.nazwisko, u.ocena, s.srednia_klasy
FROM uczniowie u
JOIN SrednieOcenyKlas s ON u.klasa = s.klasa
WHERE u.ocena > s.srednia_klasy;
```

### Jak czytać i rozumieć składnię CTE

```sql
-- Deklarujemy CTE za pomocą klauzuli WITH
WITH NazwaMojegoTymczasowegoWyniku AS (
    -- Tutaj piszemy normalne zapytanie SQL
    SELECT kolumna1, kolumna2
    FROM tabela
    WHERE warunek
)
-- Teraz używamy naszego CTE jak zwykłej tabeli
SELECT *
FROM NazwaMojegoTymczasowegoWyniku
WHERE kolumna1 > 10;
```

Kluczowe elementy:

1. Słowo `WITH` rozpoczyna definicję CTE
2. `NazwaMojegoTymczasowegoWyniku` - wymyślona przez Ciebie nazwa (jak zmienna)
3. `AS (zapytanie)` - zapytanie, które definiuje zawartość CTE
4. Właściwe zapytanie po definicji CTE - może korzystać z CTE jak z normalnej tabeli

### Kilka prostych przykładów z życia

#### Przykład 1: Który uczeń ma najwyższą ocenę w każdej klasie?

```sql
WITH NajlepszeOceny AS (
    -- Krok 1: Znajdź najwyższą ocenę w każdej klasie
    SELECT klasa, MAX(ocena) as najlepsza_ocena
    FROM uczniowie
    GROUP BY klasa
)
-- Krok 2: Znajdź uczniów z tymi ocenami
SELECT u.imie, u.nazwisko, u.ocena
FROM uczniowie u
JOIN NajlepszeOceny n ON u.klasa = n.klasa AND u.ocena = n.najlepsza_ocena;
```

#### Przykład 2: Wiele CTE w jednym zapytaniu

```sql
WITH
FrekwencjaUczniow AS (
    -- Krok 1: Oblicz frekwencję każdego ucznia
    SELECT uczen_id, AVG(obecny) * 100 as procent_obecnosci
    FROM obecnosci
    GROUP BY uczen_id
),
SredniaUczniow AS (
    -- Krok 2: Oblicz średnią ocen każdego ucznia
    SELECT uczen_id, AVG(ocena) as srednia_ocen
    FROM oceny
    GROUP BY uczen_id
)
-- Krok 3: Połącz dane o frekwencji i ocenach
SELECT u.imie, u.nazwisko, f.procent_obecnosci, s.srednia_ocen
FROM uczniowie u
JOIN FrekwencjaUczniow f ON u.id = f.uczen_id
JOIN SredniaUczniow s ON u.id = s.uczen_id;
```

#### Przykład 3: Rekurencyjne CTE (dla bardziej ciekawych)

CTE z rekurencją pozwalają na operacje, które "nawołują same siebie" - świetne do danych hierarchicznych.

```sql
-- Znajdź wszystkich przełożonych danego pracownika (aż do dyrektora)
WITH RECURSIVE HierarchiaPracownikow AS (
    -- Krok 1: Zacznij od konkretnego pracownika (ID=42)
    SELECT id, imie, nazwisko, manager_id
    FROM pracownicy
    WHERE id = 42

    UNION ALL

    -- Krok 2: Znajdź przełożonego i powtarzaj
    SELECT p.id, p.imie, p.nazwisko, p.manager_id
    FROM pracownicy p
    JOIN HierarchiaPracownikow h ON p.id = h.manager_id
)
-- Pokaż ścieżkę hierarchii
SELECT id, imie, nazwisko, manager_id
FROM HierarchiaPracownikow;
```

### Kiedy warto używać CTE?

CTE jest świetne, gdy:

1. **Zapytanie jest złożone** - CTE pozwala rozbić je na mniejsze, zrozumiałe części
2. **Ten sam podzapytanie jest używane wielokrotnie** - CTE definiujesz raz i używasz wiele razy
3. **Chcesz pracować z wynikami krok po kroku** - jak w rozwiązywaniu złożonego problemu matematycznego
4. **Potrzebujesz rekurencji** - np. do pracy z danymi hierarchicznymi

### CTE vs inne techniki - proste porównanie

<div align="center">
  <table>
    <tr>
      <th></th>
      <th>CTE</th>
      <th>Podzapytanie</th>
      <th>Tymczasowa tabela</th>
    </tr>
    <tr>
      <td>Czytelność kodu</td>
      <td>⭐⭐⭐⭐⭐</td>
      <td>⭐⭐</td>
      <td>⭐⭐⭐</td>
    </tr>
    <tr>
      <td>Łatwość użycia</td>
      <td>⭐⭐⭐⭐</td>
      <td>⭐⭐⭐</td>
      <td>⭐⭐</td>
    </tr>
    <tr>
      <td>Wielokrotne użycie</td>
      <td>⭐⭐⭐⭐</td>
      <td>⭐</td>
      <td>⭐⭐⭐⭐⭐</td>
    </tr>
    <tr>
      <td>Trwałość</td>
      <td>Tylko podczas zapytania</td>
      <td>Tylko podczas zapytania</td>
      <td>Do końca sesji/ręcznego usunięcia</td>
    </tr>
  </table>
</div>

> 💡 **Porada**: Użyj CTE, gdy widzisz, że Twoje zapytanie ma kilka kroków logicznych. Zapisuj w CTE wyniki pośrednie, dzięki czemu kod będzie bardziej podobny do naturalnych kroków rozwiązywania problemu.
