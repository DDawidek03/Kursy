# **PHP**

## **Spis treści**

1. [Wprowadzenie](#wprowadzenie)
2. [Konfiguracja środowiska](#konfiguracja-srodowiska)
3. [Podstawy PHP](#podstawy-php)
   - 3.1. [Składnia języka](#skladnia-jezyka)
   - 3.2. [Zmienne i operacje arytmetyczne](#zmienne-operacje)
4. [Operacje na danych](#operacje-na-danych)
   - 4.1. [Tablice](#tablice)
   - 4.2. [Funkcje](#funkcje)
   - 4.3. [Pętle i instrukcje warunkowe](#petle-warunki)
5. [Praca z formularzami](#formularze)
   - 5.1. [Przesyłanie danych metodą POST](#post)
   - 5.2. [Przesyłanie danych metodą GET](#get)
   - 5.3. [Walidacja danych](#walidacja)
6. [Operacje na bazach danych](#bazy-danych)
   - 6.1. [Połączenie z bazą danych](#polaczenie-bazy)
   - 6.2. [Operacje CRUD](#crud)
7. [Praca z plikami](#pliki)
   - 7.1. [Odczyt i zapis do plików](#odczyt-zapis)
8. [Sesje i ciasteczka](#sesje-ciasteczka)
   - 8.1. [Sesje](#sesje)
   - 8.2. [Ciasteczka](#ciasteczka)
9. [Zaawansowane zagadnienia PHP](#zaawansowane)
   - 9.1. [PDO i bezpieczne zapytania SQL](#pdo)
   - 9.2. [Obsługa wyjątków](#wyjatki)
10. [Podsumowanie i wskazówki do egzaminu](#podsumowanie)

---

## **1. Wprowadzenie**

Instrukcja ta zawiera podstawowe i zaawansowane zagadnienia związane z językiem PHP, które są wymagane na egzaminie INF.03. Zapoznaj się z nimi dokładnie i wykonaj odpowiednie ćwiczenia w każdym rozdziale.

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

**Przykład:**

```php
<?php
    echo "Witaj na egzaminie INF.03!";
?>
```

### 3.2. Zmienne i operacje arytmetyczne

Zmienne w PHP poprzedzone są symbolem `$`. Mogą przechowywać różne typy danych: liczby, łańcuchy znaków, tablice itp.

**Przykład:**

```php
$a = 5;
$b = 10;
$suma = $a + $b;
echo "Suma wynosi: " . $suma;
```

---

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

### 4.2. Funkcje

Funkcje w PHP służą do grupowania kodu, który można później wywoływać wielokrotnie. Pozwalają na tworzenie bardziej zorganizowanego i czytelnego kodu.

#### Definiowanie funkcji

```php
function suma($a, $b) {
    return $a + $b;
}

echo suma(5, 10); // Wyświetli: 15
```

#### Funkcje anonimowe

Funkcje anonimowe są definiowane bez nazwy i mogą być przypisywane do zmiennych.

```php
$powitanie = function($imie) {
    return "Witaj, " . $imie;
};

echo $powitanie("Jan");
```

### 4.3. Pętle i instrukcje warunkowe

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

- **for**: używana, gdy znamy liczbę powtórzeń.

  ```php
  for ($i = 0; $i < 5; $i++) {
      echo $i;
  }
  ```

- **while**: wykonuje kod dopóki warunek jest prawdziwy.

  ```php
  $i = 0;
  while ($i < 5) {
      echo $i;
      $i++;
  }
  ```

- **foreach**: przeznaczona głównie do tablic.
  ```php
  foreach ($owoce as $owoc) {
      echo $owoc;
  }
  ```

---

## **5. Praca z formularzami**

Formularze w PHP umożliwiają zbieranie danych od użytkownika, które można przesłać na serwer do przetworzenia.

### 5.1. Przesyłanie danych metodą POST

Metoda POST służy do przesyłania danych w tle, więc są one niewidoczne w URL. To najczęściej stosowana metoda do przesyłania formularzy zawierających informacje poufne.

#### Przykład formularza z metodą POST

```html
<form action="przetworz.php" method="POST">
  <label>Imię: <input type="text" name="imie" /></label>
  <label>Wiek: <input type="number" name="wiek" /></label>
  <button type="submit">Wyślij</button>
</form>
```

#### Odbieranie danych z POST

```php
$imie = $_POST['imie'];
$wiek = $_POST['wiek'];
echo "Witaj, " . htmlspecialchars($imie) . ",

 masz " . htmlspecialchars($wiek) . " lat.";
```

### 5.2. Przesyłanie danych metodą GET

Metoda GET przesyła dane jako część adresu URL, co pozwala na ich łatwe przekazywanie między stronami.

#### Przykład formularza z metodą GET

```html
<form action="przetworz.php" method="GET">
  <label>Miasto: <input type="text" name="miasto" /></label>
  <button type="submit">Wyślij</button>
</form>
```

#### Odbieranie danych z GET

```php
$miasto = $_GET['miasto'];
echo "Wybrane miasto to " . htmlspecialchars($miasto);
```

### 5.3. Walidacja danych

Ważnym krokiem jest walidacja danych w celu zapewnienia ich poprawności i bezpieczeństwa.

#### Przykład prostej walidacji

```php
if (isset($_POST['imie']) && !empty($_POST['imie'])) {
    $imie = htmlspecialchars($_POST['imie']);
    echo "Witaj, " . $imie;
} else {
    echo "Pole 'Imię' jest wymagane!";
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

**Przykład dodawania nowego studenta do tabeli:**

```php
<?php
// Zakładamy, że $polaczenie jest już nawiązane
$imie = "Anna";
$wiek = 21;

// Zapytanie SQL do dodania rekordu
$sql = "INSERT INTO studenci (imie, wiek) VALUES ('$imie', $wiek)";

// Wykonanie zapytania i sprawdzenie rezultatu
if ($polaczenie->query($sql) === TRUE) {
    echo "Nowy rekord został dodany: Imię: $imie, Wiek: $wiek";
} else {
    echo "Błąd podczas dodawania rekordu: " . $polaczenie->error;
}
?>
```

**Wyjaśnienie:**

1. Przygotowujemy dane, które chcemy wprowadzić do bazy danych.
2. Tworzymy zapytanie SQL, które wstawia nowy rekord do tabeli `studenci`.
3. Wykonujemy zapytanie za pomocą metody `query()` na obiekcie połączenia `$polaczenie`.
4. Sprawdzamy, czy operacja zakończyła się sukcesem, a w przypadku błędu, wyświetlamy komunikat.

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
