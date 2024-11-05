# **PHP**

## **1. Wprowadzenie**

PHP, czyli Hypertext Preprocessor, to wszechstronny język skryptowy zaprojektowany do tworzenia dynamicznych stron internetowych. Jego popularność wśród programistów wynika z prostoty, elastyczności oraz szerokiego wsparcia dla różnych baz danych i systemów operacyjnych. Dzięki PHP możesz łatwo integrować skrypty z HTML, co pozwala na dynamiczne generowanie treści i interakcję z użytkownikami.

---

## **2. Konfiguracja środowiska**

1. Zainstaluj serwer Apache oraz PHP (np. poprzez XAMPP).
2. Skonfiguruj bazę danych MySQL.
3. Upewnij się, że dokumenty PHP są zapisane w katalogu `htdocs` (dla XAMPP).

---

## **3. Podstawy PHP**

### 3.1. Składnia języka

- Każdy plik PHP rozpoczyna się od `<?php` i kończy `?>`.
- Instrukcje kończą się średnikiem `;`.

### 3.2. Wstawianie kodu PHP w HTML

Kod PHP umieszczany jest w plikach z rozszerzeniem `.php` i można go osadzać w dokumentach HTML. Kod PHP rozpoczyna się od tagu `<?php` i kończy na `?>`.

**Przykład osadzenia kodu PHP w HTML:**

```php
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Moja strona PHP</title>
</head>
<body>
    <h1>Witaj na mojej stronie!</h1>
    <?php
        echo "To jest dynamicznie generowany tekst."; // Wypisuje tekst na stronie
    ?>
</body>
</html>
```

### 3.3. Komentarze

Komentarze są używane do dokumentowania kodu i mogą być jednolinijkowe lub wielolinijkowe.

- **Komentarze jednolinijkowe** zaczynają się od `//` lub `#`.
- **Komentarze wielolinijkowe** umieszczane są między `/*` i `*/`.

**Przykład komentarzy:**

```php
<?php
// To jest komentarz jednolinijkowy
# To również jest komentarz jednolinijkowy

/*
To jest komentarz
wielolinijkowy
*/
?>
```

### 3.4. Zmienne

Zmienna w PHP to symboliczna nazwa, która odnosi się do wartości, która może się zmieniać podczas wykonywania programu. Zmienne w PHP zaczynają się od znaku dolara `$`, a ich nazwy mogą składać się z liter, cyfr i podkreślników, ale muszą zaczynać się od litery lub podkreślnika.

#### 3.4.1. Nazewnictwo zmiennych

- Zmienne są czułe na wielkość liter (`$zmienna` i `$Zmienna` to różne zmienne).
- Nazwy zmiennych mogą zawierać litery (a-z, A-Z), cyfry (0-9) oraz znak podkreślenia (\_).
- Nazwy zmiennych nie mogą zaczynać się od cyfry.

**Przykład poprawnych nazw zmiennych:**

```php
$zmienna; // poprawna
$zmienna_1; // poprawna
$_zmienna; // poprawna
$Zmienna; // poprawna

// $1zmienna; // niepoprawna
```

#### 3.4.2. Tworzenie i inicjalizacja zmiennych

Zmienne można tworzyć i inicjalizować w jednej linii. PHP jest językiem dynamicznie typowanym, co oznacza, że nie trzeba deklarować typu zmiennej.

**Przykład tworzenia zmiennych:**

```php
<?php
$imie = "Anna"; // Zmienna typu string
$wiek = 25; // Zmienna typu integer
$waga = 60.5; // Zmienna typu float
$czyZalogowany = true; // Zmienna typu boolean

echo "Imię: $imie, Wiek: $wiek, Waga: $waga, Zalogowany: $czyZalogowany";
?>
```

#### 3.4.3. Typy danych w PHP

PHP obsługuje kilka podstawowych typów danych:

- **String**: Ciąg znaków. Można go zapisać w pojedynczych (`'`) lub podwójnych (`"`) cudzysłowach.
- **Integer**: Liczby całkowite.
- **Float**: Liczby zmiennoprzecinkowe.
- **Boolean**: Wartości prawda/fałsz (`true` lub `false`).
- **Array**: Tablice, które mogą przechowywać wiele wartości.
- **Object**: Obiekty klasy.
- **NULL**: Specjalna zmienna oznaczająca, że zmienna nie ma przypisanej wartości.

**Przykład różnych typów danych:**

```php
<?php
$tekst = "To jest tekst"; // String
$liczbaCal = 10; // Integer
$liczbaZmiennoprzecinkowa = 10.5; // Float
$czyPrawda = true; // Boolean
$array = array(1, 2, 3, 4, 5); // Array
$obiekt = null; // NULL

echo "$tekst, Liczba całkowita: $liczbaCal, Liczba zmiennoprzecinkowa: $liczbaZmiennoprzecinkowa, Prawda: $czyPrawda";
?>
```

### 3.5. Używanie zmiennych

Zmiennych można używać w różnych kontekstach, takich jak wyrażenia, funkcje i konstrukcje kontrolne. Wartości zmiennych można również łączyć z innymi tekstami.

**Przykład użycia zmiennych:**

```php
<?php
$imie = "Anna";
$wiek = 25;

// Łączenie zmiennych z tekstem
echo "Witaj, " . $imie . "! Masz " . $wiek . " lat.";

// Można także używać interpolacji
echo "Witaj, $imie! Masz $wiek lat.";
?>
```

### 3.6. Stałe

W PHP można definiować stałe, które są niezmienne w czasie działania programu. Stałe są definiowane za pomocą funkcji `define()`.

**Przykład definiowania stałej:**

```php
<?php
define("PI", 3.14); // Definicja stałej PI

echo "Wartość PI to: " . PI;
?>
```

### 3.7. Zakres zmiennych

Zakres zmiennych odnosi się do miejsca, w którym zmienna jest zdefiniowana i dostępna. W PHP zmienne mogą mieć różne zakresy:

- **Zasięg lokalny**: Zmienna zdefiniowana wewnątrz funkcji jest dostępna tylko w tej funkcji.
- **Zasięg globalny**: Zmienna zdefiniowana na najwyższym poziomie skryptu (poza funkcjami) jest dostępna w całym skrypcie, ale nie jest domyślnie dostępna wewnątrz funkcji. Aby uzyskać dostęp do zmiennej globalnej w funkcji, należy użyć słowa kluczowego `global`.

**Przykład zasięgu zmiennych:**

```php
<?php
$zmiennaGlobalna = "Jestem globalny!";

function test() {
    global $zmiennaGlobalna; // Uzyskanie dostępu do zmiennej globalnej
    echo $zmiennaGlobalna; // Wypisuje: Jestem globalny!
}

test();
?>
```

## **4. Operacje na danych**

Operacje na danych w PHP obejmują manipulację zmiennymi, tablicami oraz tworzenie i wywoływanie funkcji. Ważne jest również zrozumienie używania instrukcji warunkowych i pętli.

### 4.1. Tablice

Tablice są strukturami danych, które pozwalają przechowywać wiele wartości w jednej zmiennej. PHP oferuje kilka rodzajów tablic:

- **Tablice indeksowane numerycznie**: indeksy są liczbami całkowitymi zaczynającymi się od 0.
- **Tablice asocjacyjne**: kluczami są łańcuchy znaków (string).
- **Tablice wielowymiarowe**: tablice zawierające inne tablice.

#### Tworzenie i obsługa tablic

```php
// Tablica indeksowana
$owoce = array("jabłko", "banan", "gruszka");

// Tablica asocjacyjna
$student = array("imie" => "Jan", "wiek" => 20, "kierunek" => "Informatyka");

// Tablica wielowymiarowa
$klasa = array(
    array("Jan", 20, "Informatyka"),
    array("Anna", 22, "Matematyka")
);
```

#### Operacje na tablicach

- **Dodawanie elementów**:

  ```php
  $owoce[] = "pomarańcza"; // Dodaje "pomarańcza" na koniec tablicy
  ```

- **Usuwanie elementów**:

  ```php
  unset($owoce[1]); // Usuwa element o indeksie 1
  ```

- **Iteracja przez tablice**:
  ```php
  foreach ($owoce as $owoc) {
      echo $owoc . "<br>";
  }
  ```

### 4.2. Pętle i instrukcje warunkowe

#### Instrukcje warunkowe

Używamy ich, aby wykonać kod tylko w określonych warunkach.

```php
if ($wiek > 18) {
    echo "Pełnoletni";
} else {
    echo "Niepełnoletni";
}
```

#### Pętle

Pętle służą do wykonywania kodu wiele razy.

### Pętla `for`

Pętla `for` jest najczęściej używaną pętlą, gdy znana jest liczba iteracji z góry. Składa się z trzech części: inicjalizacji, warunku kontynuacji oraz inkrementacji.

#### Składnia:

```php
for (inicjalizacja; warunek; inkrementacja) {
    // kod do wykonania w każdej iteracji
}
```

#### Przykład:

```php
<?php
// Wypisanie liczb od 1 do 5
for ($i = 1; $i <= 5; $i++) {
    echo "Liczba: $i<br>";
}
?>
```

**Wyjaśnienie:**

1. **Inicjalizacja**: `$i = 1` – zmienna `$i` jest ustawiana na 1.
2. **Warunek**: `$i <= 5` – pętla będzie wykonywana, dopóki `$i` jest mniejsze lub równe 5.
3. **Inkrementacja**: `$i++` – po każdej iteracji zmienna `$i` jest zwiększana o 1.

### Pętla `while`

Pętla `while` jest używana, gdy nie wiadomo z góry, ile razy pętla powinna być wykonana. Pętla wykonuje kod dopóki spełniony jest dany warunek.

#### Składnia:

```php
while (warunek) {
    // kod do wykonania
}
```

#### Przykład:

```php
<?php
$i = 1; // inicjalizacja zmiennej
while ($i <= 5) {
    echo "Liczba: $i<br>";
    $i++; // inkrementacja zmiennej
}
?>
```

**Wyjaśnienie:**

1. **Warunek**: Pętla będzie kontynuować, dopóki `$i` jest mniejsze lub równe 5.
2. W każdej iteracji wypisywana jest wartość `$i`, a następnie jest ona inkrementowana.

### Pętla `do...while`

Pętla `do...while` działa podobnie do pętli `while`, ale gwarantuje, że kod wewnątrz pętli zostanie wykonany przynajmniej raz, niezależnie od warunku.

#### Składnia:

```php
do {
    // kod do wykonania
} while (warunek);
```

#### Przykład:

```php
<?php
$i = 1; // inicjalizacja zmiennej
do {
    echo "Liczba: $i<br>";
    $i++; // inkrementacja zmiennej
} while ($i <= 5);
?>
```

**Wyjaśnienie:**

1. Kod wewnątrz bloku `do` zostanie wykonany przynajmniej raz, a następnie zostanie sprawdzony warunek `$i <= 5`.

### Pętla `foreach`

Pętla `foreach` jest specyficzną pętlą do iteracji przez tablice. Umożliwia łatwe przechodzenie przez elementy tablicy bez potrzeby zarządzania indeksem.

#### Składnia:

```php
foreach ($tablica as $wartosc) {
    // kod do wykonania
}
```

#### Przykład:

```php
<?php
$kolory = array("czerwony", "zielony", "niebieski");

foreach ($kolory as $kolor) {
    echo "Kolor: $kolor<br>";
}
?>
```

**Wyjaśnienie:**

1. Pętla iteruje przez każdy element tablicy `$kolory`.
2. W każdej iteracji zmienna `$kolor` przyjmuje wartość aktualnego elementu tablicy.

### Pętla `for` z tablicami

Możemy także używać pętli `for` do iteracji przez tablice, ale wymaga to zarządzania indeksem.

#### Przykład:

```php
<?php
$liczby = array(10, 20, 30, 40, 50);

for ($i = 0; $i < count($liczby); $i++) {
    echo "Liczba: " . $liczby[$i] . "<br>";
}
?>
```

**Wyjaśnienie:**

1. `count($liczby)` zwraca liczbę elementów w tablicy, co pozwala pętli `for` iterować przez wszystkie indeksy tablicy.

### Zakończenie pętli

W każdej pętli można użyć słów kluczowych `break` i `continue`:

- **`break`**: Przerywa wykonywanie pętli.
- **`continue`**: Pomija resztę kodu w bieżącej iteracji i przechodzi do następnej iteracji.

#### Przykład użycia `break`:

```php
<?php
for ($i = 1; $i <= 10; $i++) {
    if ($i == 5) {
        break; // Przerwij, gdy $i osiągnie 5
    }
    echo "Liczba: $i<br>";
}
?>
```

#### Przykład użycia `continue`:

```php
<?php
for ($i = 1; $i <= 10; $i++) {
    if ($i % 2 == 0) {
        continue; // Pomija liczby parzyste
    }
    echo "Liczba nieparzysta: $i<br>";
}
?>
```

---

## **5. Praca z formularzami**

Formularze w PHP umożliwiają zbieranie danych od użytkownika, które można przesłać na serwer do przetworzenia.

#### 5.1. Przesyłanie danych metodą POST

Metoda `POST` jest używana do przesyłania danych w tle. Oznacza to, że przesyłane informacje nie są widoczne w adresie URL, co czyni ją bezpieczniejszą dla informacji poufnych, takich jak hasła lub dane osobowe. Metoda ta jest najczęściej stosowana w formularzach, które wymagają przetwarzania danych na serwerze.

**Przykład formularza z metodą POST:**

```html
<form action="przetworz.php" method="POST">
  <label>Imię: <input type="text" name="imie" required /></label>
  <label>Wiek: <input type="number" name="wiek" required min="0" /></label>
  <button type="submit">Wyślij</button>
</form>
```

**Opis kodu:**

- Atrybut `action` wskazuje na skrypt `przetworz.php`, który będzie przetwarzać dane formularza.
- Atrybut `method` ustawiony na `POST` określa, że dane będą przesyłane metodą POST.
- Użycie atrybutu `required` w polach wejściowych zapewnia, że formularz nie zostanie wysłany, jeśli pola są puste.
- Dodatkowo, atrybut `min` w polu wieku wymusza, by wprowadzana wartość była nie mniejsza niż 0.

**Odbieranie danych z POST:**

```php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Sprawdzanie, czy zmienne są ustawione i nie są puste
    $imie = isset($_POST['imie']) ? trim($_POST['imie']) : '';
    $wiek = isset($_POST['wiek']) ? (int)$_POST['wiek'] : 0;

    // Zabezpieczenie danych przed atakami XSS
    echo "Witaj, " . htmlspecialchars($imie) . ", masz " . htmlspecialchars($wiek) . " lat.";
}
```

**Opis kodu:**

- Sprawdzamy, czy metoda żądania to `POST`, co pozwala na bezpieczne przetwarzanie danych.
- Użycie `isset()` i `trim()` zabezpiecza przed błędami, gdy zmienna nie jest ustawiona lub jest pusta.
- Przekształcenie wieku na typ całkowity `(int)` zapewnia, że będzie to liczba.
- Użycie `htmlspecialchars()` chroni przed atakami XSS, zamieniając niebezpieczne znaki na odpowiednie encje HTML.

#### 5.2. Przesyłanie danych metodą GET

Metoda `GET` przesyła dane jako część adresu URL, co umożliwia łatwe przekazywanie danych między stronami. Może być używana do przesyłania danych, które nie są poufne, takich jak parametry wyszukiwania. Dane przesyłane metodą GET mogą być widoczne w pasku adresu przeglądarki.

**Przykład formularza z metodą GET:**

```html
<form action="przetworz.php" method="GET">
  <label>Miasto: <input type="text" name="miasto" required /></label>
  <button type="submit">Wyślij</button>
</form>
```

**Opis kodu:**

- Atrybut `action` wskazuje na skrypt `przetworz.php`, który będzie przetwarzać dane.
- Atrybut `method` ustawiony na `GET` wskazuje, że dane będą przesyłane jako część adresu URL.
- Użycie atrybutu `required` wymusza wypełnienie pola przed wysłaniem formularza.

**Odbieranie danych z GET:**

```php
if ($_SERVER["REQUEST_METHOD"] == "GET") {
    // Sprawdzanie, czy zmienna jest ustawiona
    $miasto = isset($_GET['miasto']) ? trim($_GET['miasto']) : '';

    // Zabezpieczenie danych przed atakami XSS
    echo "Wybrane miasto to " . htmlspecialchars($miasto) . ".";
}
```

**Opis kodu:**

- Sprawdzamy, czy metoda żądania to `GET`, co pozwala na odpowiednie przetwarzanie danych.
- Użycie `isset()` i `trim()` zabezpiecza przed błędami związanymi z nieistniejącymi zmiennymi.
- Zabezpieczenie danych przed atakami XSS za pomocą `htmlspecialchars()` zapewnia, że użytkownik nie może wprowadzić niebezpiecznych skryptów.

### 5.3. Walidacja danych

Walidacja danych jest kluczowym krokiem w procesie przetwarzania danych w formularzach. Jej celem jest zapewnienie, że dane wprowadzone przez użytkownika są poprawne, spójne oraz bezpieczne. Walidacja może obejmować sprawdzanie, czy dane są w odpowiednim formacie, czy nie są puste, oraz czy mieszczą się w określonych ramach (np. czy liczba nie jest ujemna).

**Dlaczego walidacja jest ważna?**

- **Bezpieczeństwo**: Zabezpiecza aplikację przed atakami, takimi jak SQL Injection czy XSS (Cross-Site Scripting).
- **Użytkowość**: Zmniejsza liczbę błędów, które mogą wystąpić podczas przetwarzania danych, co wpływa na ogólne doświadczenia użytkownika.
- **Spójność**: Gwarantuje, że dane wprowadzone do systemu są zgodne z oczekiwaniami aplikacji.

#### Przykład prostej walidacji

```php
if (isset($_POST['imie']) && !empty($_POST['imie'])) {
    $imie = htmlspecialchars($_POST['imie']);
    echo "Witaj, " . $imie;
} else {
    echo "Pole 'Imię' jest wymagane!";
}
```

**Opis kodu:**

1. **Sprawdzenie istnienia zmiennej**: `isset($_POST['imie'])` – Funkcja `isset()` sprawdza, czy zmienna `$_POST['imie']` została ustawiona. Jest to ważne, ponieważ formularz może zostać przesłany bez wypełnienia tego pola, co mogłoby prowadzić do błędów.

2. **Sprawdzenie pustego pola**: `!empty($_POST['imie'])` – Funkcja `empty()` sprawdza, czy zmienna jest pusta. W tym przypadku, jeśli pole `imie` jest puste (np. użytkownik nic nie wpisał), to kod wewnątrz bloku `if` nie zostanie wykonany, a zamiast tego wyświetli komunikat o błędzie.

3. **Sanitizacja danych**: `$imie = htmlspecialchars($_POST['imie']);` – Funkcja `htmlspecialchars()` konwertuje specjalne znaki na ich odpowiedniki HTML, co zapobiega atakom XSS. Na przykład, jeśli użytkownik wprowadzi `<script>alert('XSS');</script>`, funkcja ta zmieni ten tekst na `&lt;script&gt;alert('XSS');&lt;/script&gt;`, dzięki czemu nie zostanie on wykonany w przeglądarce.

4. **Wyświetlenie komunikatu**: `echo "Witaj, " . $imie;` – Jeśli walidacja przebiegnie pomyślnie, program wyświetli powitanie użytkownika, używając bezpiecznie przetworzonych danych.

5. **Komunikat o błędzie**: `echo "Pole 'Imię' jest wymagane!";` – Jeśli pole `imie` nie zostanie wypełnione, użytkownik otrzyma komunikat informujący, że to pole jest wymagane.

#### Rozszerzenie walidacji

Walidacja danych może być znacznie bardziej złożona, w zależności od potrzeb aplikacji. Oto kilka dodatkowych przykładów walidacji:

1. **Walidacja długości tekstu**:

   ```php
   if (isset($_POST['imie']) && !empty($_POST['imie'])) {
       $imie = htmlspecialchars($_POST['imie']);
       if (strlen($imie) < 3) {
           echo "Imię musi mieć co najmniej 3 znaki!";
       } else {
           echo "Witaj, " . $imie;
       }
   }
   ```

2. **Walidacja wieku**:

   ```php
   if (isset($_POST['wiek']) && is_numeric($_POST['wiek'])) {
       $wiek = (int)$_POST['wiek'];
       if ($wiek < 0 || $wiek > 120) {
           echo "Wiek musi być liczbą z przedziału 0-120!";
       } else {
           echo "Masz " . $wiek . " lat.";
       }
   } else {
       echo "Wiek jest wymagany i musi być liczbą!";
   }
   ```

3. **Walidacja adresu e-mail**:
   ```php
   if (isset($_POST['email']) && !empty($_POST['email'])) {
       $email = htmlspecialchars($_POST['email']);
       if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
           echo "Podany adres e-mail jest niepoprawny!";
       } else {
           echo "Podany adres e-mail to: " . $email;
       }
   }
   ```

---

## **6. Operacje na bazach danych**

Operacje na bazach danych pozwalają na przechowywanie dużych ilości informacji i łatwy dostęp do nich z poziomu aplikacji. PHP korzysta najczęściej z bazy danych MySQL, do której można uzyskać dostęp przy pomocy rozszerzeń **MySQLi** lub **PDO**. Rozszerzenie MySQLi jest uproszczone w użyciu i dobrze współpracuje z bazami MySQL.

### 6.1. Połączenie z bazą danych

Aby wykonać operacje CRUD, najpierw musimy połączyć się z bazą danych. Poniżej znajduje się sposób na połączenie się z bazą danych MySQL przy użyciu rozszerzenia MySQLi.

#### Przykład połączenia z bazą danych

```php
<?php
// Parametry połączenia
$host = "localhost"; // Adres serwera MySQL
$uzytkownik = "root"; // Użytkownik bazy danych
$haslo = ""; // Hasło użytkownika
$baza_danych = "szkola"; // Nazwa bazy danych

// Tworzenie połączenia
$polaczenie = new mysqli($host, $uzytkownik, $haslo, $baza_danych);

// Sprawdzanie połączenia
if ($polaczenie->connect_error) {
    die("Błąd połączenia: " . $polaczenie->connect_error);
}
echo "Połączenie z bazą danych udane!";
?>
```

### 6.2. Operacje CRUD

Operacje CRUD są kluczowe dla każdej aplikacji zarządzającej danymi. Poniżej opisano każdą z tych operacji wraz z przykładami.

#### Tworzenie danych (Create)

Operacja `CREATE` polega na dodawaniu nowych rekordów do tabeli w bazie danych. Używamy do tego instrukcji SQL `INSERT INTO`.

**Przykład dodawania nowego studenta do tabeli za pomocą formularza:**

**1. Formularz HTML**

```html
<!DOCTYPE html>
<html lang="pl">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Dodaj Studenta</title>
  </head>
  <body>
    <h1>Dodaj Nowego Studenta</h1>
    <form action="dodaj_studenta.php" method="POST">
      <label>Imię: <input type="text" name="imie" required /></label><br />
      <label>Wiek: <input type="number" name="wiek" required min="0" /></label
      ><br />
      <button type="submit">Dodaj Studenta</button>
    </form>
  </body>
</html>
```

**Opis formularza:**

- Formularz wykorzystuje metodę `POST`, co oznacza, że dane nie będą widoczne w URL.
- Użytkownik wprowadza imię i wiek studenta.
- Użycie atrybutu `required` w polach formularza wymusza ich wypełnienie przed wysłaniem.

**2. Skrypt PHP do przetwarzania formularza (`dodaj_studenta.php`)**

```php
<?php
// Ustanowienie połączenia z bazą danych
$polaczenie = new mysqli("localhost", "root", "", "szkola");

// Sprawdzenie połączenia
if ($polaczenie->connect_error) {
    die("Błąd połączenia: " . $polaczenie->connect_error);
}

// Sprawdzenie, czy formularz został przesłany
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Pobranie danych z formularza
    $imie = $_POST['imie'];
    $wiek = $_POST['wiek'];

    // Zapytanie SQL do dodania rekordu
    $sql = "INSERT INTO studenci (imie, wiek) VALUES ('$imie', $wiek)";

    // Wykonanie zapytania
    if ($polaczenie->query($sql)) {
        echo "Nowy rekord został dodany: Imię: $imie, Wiek: $wiek";
    } else {
        echo "Błąd podczas dodawania rekordu: " . $polaczenie->error;
    }
}

// Zamknięcie połączenia
$polaczenie->close();
?>

```

**Opis skryptu PHP:**

1. **Ustanowienie połączenia z bazą danych**: Skrypt rozpoczyna się od nawiązania połączenia z bazą danych przy użyciu klasy `mysqli`. Należy dostosować zmienne `$serwer`, `$uzytkownik`, `$haslo` oraz `$baza_danych` do własnych ustawień.

2. **Sprawdzanie połączenia**: Użycie warunku `if` pozwala na sprawdzenie, czy połączenie zostało nawiązane poprawnie. Jeśli nie, skrypt kończy działanie i wyświetla błąd.

3. **Sprawdzanie metody żądania**: Skrypt sprawdza, czy metoda żądania to `POST`, co wskazuje, że formularz został przesłany.

4. **Pobieranie danych z formularza**: Użycie `htmlspecialchars()` i `trim()` zabezpiecza przed potencjalnymi atakami XSS oraz eliminuje niepotrzebne białe znaki.

5. **Tworzenie zapytania SQL**: Skrypt generuje zapytanie SQL do dodania nowego rekordu do tabeli `studenci`.

6. **Wykonywanie zapytania**: Przy użyciu `$polaczenie->query($sql)` skrypt wykonuje zapytanie i sprawdza, czy dodanie rekordu się powiodło. Jeśli tak, wyświetla komunikat o sukcesie; w przeciwnym razie informuje o błędzie.

7. **Zamknięcie połączenia**: Na końcu skryptu połączenie z bazą danych jest zamykane, co jest dobrą praktyką.

#### Odczyt danych (Read)

Operacja `READ` polega na odczytywaniu danych z tabeli. Używamy do tego instrukcji SQL `SELECT`.

**Przykład odczytu wszystkich studentów z tabeli:**

```php
<?php
// Zakładamy, że $polaczenie jest już nawiązane
$sql = "SELECT imie, wiek FROM studenci"; // Zapytanie SQL

// Wykonanie zapytania
$wynik = $polaczenie->query($sql);

// Sprawdzenie, czy są wyniki
if ($wynik->num_rows > 0) {
    // Wyświetlenie wyników
    while($wiersz = $wynik->fetch_assoc()) {
        echo "Imię: " . $wiersz["imie"] . " - Wiek: " . $wiersz["wiek"] . "<br>";
    }
} else {
    echo "Brak wyników do wyświetlenia.";
}
?>
```

**Wyjaśnienie:**

1. Przygotowujemy zapytanie SQL do odczytu danych z tabeli `studenci`.
2. Wykonujemy zapytanie i zapisujemy wynik w zmiennej `$wynik`.
3. Sprawdzamy, czy wynik zawiera jakiekolwiek rekordy (`num_rows`).
4. Jeśli są rekordy, wykorzystujemy pętlę `while` do iteracji przez wszystkie wiersze i wyświetlamy wyniki.

#### Aktualizacja danych (Update)

Operacja `UPDATE` służy do aktualizowania istniejących rekordów w tabeli. Używamy do tego instrukcji SQL `UPDATE`.

**Przykład aktualizacji wieku studenta:**

```php
<?php
// Zakładamy, że $polaczenie jest już nawiązane
$nowyWiek = 22; // Nowy wiek
$imie = "Anna"; // Imię studenta, którego wiek chcemy zaktualizować

// Zapytanie SQL do aktualizacji rekordu
$sql = "UPDATE studenci SET wiek=$nowyWiek WHERE imie='$imie'";

// Wykonanie zapytania
if ($polaczenie->query($sql) === TRUE) {
    echo "Rekord zaktualizowany dla studenta: $imie";
} else {
    echo "Błąd aktualizacji: " . $polaczenie->error;
}
?>
```

**Wyjaśnienie:**

1. Ustalamy nową wartość dla kolumny `wiek`.
2. Tworzymy zapytanie SQL, które aktualizuje rekord w tabeli `studenci`, używając warunku `WHERE` do precyzyjnego wskazania, który rekord ma zostać zaktualizowany.
3. Wykonujemy zapytanie i sprawdzamy, czy operacja zakończyła się sukcesem.

#### Usuwanie danych (Delete)

Operacja `DELETE` polega na usuwaniu rekordów z tabeli. Używamy do tego instrukcji SQL `DELETE`.

**Przykład usuwania studenta z tabeli:**

```php
<?php
// Zakładamy, że $polaczenie jest już nawiązane
$imie = "Anna"; // Imię studenta, którego chcemy usunąć

// Zapytanie SQL do usunięcia rekordu
$sql = "DELETE FROM studenci WHERE imie='$imie'";

// Wykonanie zapytania
if ($polaczenie->query($sql) === TRUE) {
    echo "Rekord został usunięty: $imie";
} else {
    echo "Błąd usuwania: " . $polaczenie->error;
}
?>
```

**Wyjaśnienie:**

1. Ustalamy, którego studenta chcemy usunąć na podstawie jego imienia.
2. Tworzymy zapytanie SQL do usunięcia rekordu w tabeli `studenci`, używając warunku `WHERE`.
3. Wykonujemy zapytanie i sprawdzamy, czy operacja zakończyła się sukcesem.

---

### 6.3. Obsługa błędów i bezpieczeństwo

W każdej operacji na bazach danych niezwykle ważne jest zarządzanie błędami oraz zapewnienie bezpieczeństwa danych. Oto kilka najlepszych praktyk:

#### Obsługa błędów

Podczas wykonywania operacji na bazie danych, warto stosować obsługę wyjątków, aby zrozumieć, co poszło nie tak w przypadku błędów. Można to osiągnąć za pomocą bloku `try-catch`.

```php
try {
    $polaczenie = new mysqli($host, $uzytkownik, $haslo, $baza_danych);
    if ($polaczenie->connect_error) {
        throw new Exception("Błąd połączenia: " . $polaczenie->connect_error);
    }
    // Tutaj wykonywanie operacji...
} catch (Exception $e) {
    echo "Wystąpił błąd: " . $e->getMessage();
}
```

#### Bezpieczeństwo

Podczas pracy z danymi pochodzącymi od użytkowników, bardzo ważne jest zabezpieczenie przed atakami typu SQL Injection. Aby to osiągnąć, zaleca się korzystanie z przygotowanych zapytań (prepared statements).

**Przykład przygotowanego zapytania dla operacji INSERT:**

```php
$stmt = $polaczenie->prepare("INSERT INTO studenci (imie, wiek) VALUES (?, ?)");
$stmt->bind_param("si", $imie, $wiek); // 's' oznacza

 string, 'i' oznacza integer
$stmt->execute();
$stmt->close();
```

## **8. Sesje i ciasteczka**

PHP pozwala na przechowywanie danych użytkownika w sesjach i ciasteczkach, co umożliwia tworzenie bardziej dynamicznych i interaktywnych aplikacji. Omówimy oba podejścia, wyjaśniając, jak i kiedy stosować te mechanizmy.

### 8.1. Sesje

Sesje w PHP umożliwiają przechowywanie danych po stronie serwera przez cały czas trwania aktywności użytkownika na stronie. Dane sesji są dostępne dla wszystkich stron aplikacji, ale po zamknięciu przeglądarki lub upłynięciu czasu sesji są automatycznie usuwane. Sesje są bardzo przydatne, gdy potrzebujemy „zapamiętać” coś o użytkowniku podczas jego całej interakcji z witryną – na przykład informacje o zalogowaniu czy wybranych produktach w koszyku.

#### Jak działa sesja?

1. **ID sesji**: Każda sesja w PHP jest identyfikowana przez unikalne ID, które jest generowane automatycznie po jej rozpoczęciu. Przeglądarka przechowuje to ID i przesyła je do serwera przy każdym kolejnym żądaniu HTTP. Dzięki temu serwer może rozpoznać użytkownika i przypisać mu odpowiednie dane przechowywane w sesji.

2. **Czas życia sesji**: Domyślnie sesja trwa przez cały czas aktywności użytkownika na stronie, ale może również wygasać po określonym czasie nieaktywności. Administrator może ustawić maksymalny czas życia sesji w pliku konfiguracyjnym PHP (w parametrze `session.gc_maxlifetime`).

3. **Przechowywanie danych**: Wszystkie dane sesji są przechowywane na serwerze, w specjalnie wydzielonym katalogu (zwykle konfigurowanym w `php.ini`). Dostęp do tych danych jest kontrolowany przez serwer, co zwiększa bezpieczeństwo i sprawia, że dane są niewidoczne dla użytkownika. Użytkownik widzi tylko ID sesji.

#### Przykłady pracy z sesjami

##### Tworzenie sesji i dodawanie danych

Przed rozpoczęciem pracy z sesją musimy zainicjować ją poleceniem `session_start()`, zwykle umieszczonym na początku skryptu. Każda zmienna dodana do sesji będzie dostępna w całej aplikacji, aż do wygaśnięcia sesji.

```php
<?php
session_start(); // Rozpoczynamy sesję

$_SESSION['username'] = "JanKowalski"; // Ustawiamy zmienną sesji
$_SESSION['isLoggedIn'] = true; // Przykład flagi zalogowania
echo "Sesja została utworzona!";
?>
```

##### Przykładowe zastosowania sesji:

- **Systemy logowania**: W aplikacjach, w których użytkownicy muszą się logować, sesje są wykorzystywane do przechowywania informacji o tym, czy dany użytkownik jest zalogowany, a jeśli tak – jakie ma uprawnienia.
- **Koszyki zakupowe**: W sklepach internetowych sesje są używane do przechowywania danych o produktach dodanych do koszyka, które powinny być widoczne na wszystkich stronach, dopóki użytkownik nie zakończy zakupów.

##### Dostęp do zmiennych sesji

Aby uzyskać dostęp do zmiennych sesji na innych stronach, wystarczy zainicjować sesję za pomocą `session_start()`, a następnie odczytać wartość zmiennej.

```php
<?php
session_start();
if (isset($_SESSION['username'])) {
    echo "Witaj, " . $_SESSION['username'];
} else {
    echo "Nie jesteś zalogowany.";
}
?>
```

#### Zarządzanie sesjami

1. **Unieważnianie zmiennych sesji**: Aby usunąć pojedynczą zmienną sesji, można skorzystać z `unset()`. Po wywołaniu tej funkcji, wybrana zmienna przestanie być dostępna w sesji.

   ```php
   unset($_SESSION['username']);
   ```

2. **Zamykanie sesji**: Aby zamknąć sesję całkowicie, używamy `session_destroy()`. Funkcja ta usuwa wszystkie dane sesji i unieważnia identyfikator sesji.
   ```php
   session_unset(); // Usuwa wszystkie zmienne sesji
   session_destroy(); // Kończy sesję i usuwa dane sesji
   ```

### 8.2. Ciasteczka

Ciasteczka (cookies) to niewielkie pliki tekstowe, które są przechowywane na komputerze użytkownika, aby aplikacja mogła „zapamiętać” jego preferencje lub historię interakcji z witryną. W przeciwieństwie do sesji, ciasteczka przechowują dane po stronie klienta, co umożliwia ich dostęp nawet po zamknięciu przeglądarki i ponownym otwarciu witryny. Ciasteczka mają określony czas życia, po którego upływie są automatycznie usuwane przez przeglądarkę.

#### Jak działa ciasteczko?

1. **Tworzenie ciasteczka**: Ciasteczko jest ustawiane przez serwer poprzez wywołanie funkcji `setcookie()`. Następnie przeglądarka zapisuje ciasteczko i przesyła je do serwera przy każdym kolejnym żądaniu HTTP.

2. **Odczytanie ciasteczka**: Ciasteczko jest dostępne w kolejnych żądaniach poprzez tablicę superglobalną `$_COOKIE`. Warto pamiętać, że dane przechowywane w ciasteczkach są dostępne również dla użytkownika, co oznacza, że można je łatwo edytować lub usuwać.

3. **Bezpieczeństwo ciasteczek**: Warto zauważyć, że ciasteczka mogą zostać wykradzione przez osoby trzecie, jeśli nie są odpowiednio zabezpieczone (np. poprzez HTTPS). Dlatego ciasteczka nie są dobrym miejscem na przechowywanie poufnych informacji.

#### Przykłady pracy z ciasteczkami

##### Tworzenie ciasteczka

Ciasteczko można ustawić, używając funkcji `setcookie()` i określając nazwę, wartość oraz czas wygaśnięcia ciasteczka.

```php
<?php
// Tworzy ciasteczko "uzytkownik" ważne przez 7 dni (7 dni * 24 godziny * 60 minut * 60 sekund)
setcookie("uzytkownik", "JanKowalski", time() + (7 * 24 * 60 * 60));
?>
```

##### Odczytywanie ciasteczka

Po ustawieniu ciasteczka możemy odczytać jego wartość na dowolnej stronie, korzystając z tablicy `$_COOKIE`.

```php
<?php
if (isset($_COOKIE['uzytkownik'])) {
    echo "Witaj z powrotem, " . $_COOKIE['uzytkownik'];
} else {
    echo "Witaj, nowy użytkowniku!";
}
?>
```
