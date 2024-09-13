# HTML - Wprowadzenie

---

## 1. Wiadomości ogólne

### 1.1 Czym jest HTML

HTML (ang. HyperText Markup Language) – hipertekstowy język znaczników używany do tworzenia dokumentów w internecie. Dokument HTML to plik tekstowy o rozszerzeniu `.html` lub `.htm`. Przykład: `index.html`.

---

### 1.2 Najważniejsze terminy używane przy tworzeniu stron internetowych

- **Strona internetowa**: Zbiór dokumentów HTML lub XML połączony linkami URL w obrębie jednej domeny.
- **URL**: Unikalny adres pliku HTML lub XML w sieci (np. https://technikum.pl/miasta/lublin).
- **Link**: Fragment strony umożliwiający przejście do innej strony.
- **Domena**: Podstawowy adres strony (np. teb.pl).

---

### 1.3 Wykorzystywane protokoły

- **HTTP**: Protokół transmisji dokumentów hipermedialnych.
- **HTTPS**: Zabezpieczona wersja HTTP, która szyfruje przesyłane informacje za pomocą SSL/TLS.
- **SSL**: Protokół sieciowy zabezpieczający komunikację pomiędzy przeglądarką a serwerem.

---

### 1.4 Edytory tekstowe i graficzne

- **Edytory tekstowe**: Visual Studio Code, Atom, Brackets, Notepad++, Sublime Text 3.
- **Edytory graficzne**: Adobe Dreamweaver (tryb WYSIWYG).

---

### 1.5 Znaczniki - składnia HTML

Znaczniki (tagi) są umieszczane w nawiasach kątowych. Dzielą się na:

- **Sparowane**: np. `<p>...</p>`.
- **Niesparowane**: np. `<br>`.
  Znaczniki nie są czułe na wielkość liter i mogą zawierać atrybuty (np. `class`, `id`, `style`).

---

### 1.6 Porównanie elementów blokowych i liniowych

- **Blokowe**: Wyświetlane w nowej linii i zajmują całą szerokość (np. `<div>`, `<p>`).
- **Liniowe**: Zajmują tylko tyle miejsca, ile potrzeba (np. `<span>`, `<a>`).

---

### 1.7 Analiza znacznika niesparowanego

Przykład: `<br>`. Znacznik w HTML jest otwierany znakiem `<` i zamykany `>`.

---

### 1.8 Analiza znacznika sparowanego

Przykład: `<p>Tekst</p>`. Znacznik zamykający ma dodatkowy ukośnik przed nazwą znacznika.

---

### 1.9 Analiza znacznika niesparowanego z atrybutem

Przykład: `<img src="image.jpg" alt="Opis obrazu">`. Atrybuty opisują dodatkowe informacje dla znacznika.

---

### 1.10 Analiza znacznika sparowanego z atrybutem

Przykład: `<a href="https://example.com">Kliknij tutaj</a>`. Atrybut `href` określa docelowy adres odnośnika.

---

### 1.11 Podstawowa struktura pliku HTML

```html
<!DOCTYPE html>
<html>
  <head>
    <title>Tytuł strony</title>
  </head>
  <body>
    <p>Treść strony</p>
  </body>
</html>
```

Znaczniki `<!DOCTYPE>`, `<html>`, `<head>`, `<body>` organizują strukturę strony.

---

### 1.12 Sekcja HEAD

W sekcji `<head>` umieszcza się:

- Deklaracje kodowania znaków, np. `<meta charset="UTF-8">`.
- Linki do zewnętrznych plików CSS, np. `<link rel="stylesheet" href="style.css">`.
- Skrypty JS i inne informacje niewidoczne na stronie.

---

### 1.13 Sekcja BODY

W sekcji `<body>` umieszcza się wszystkie elementy widoczne na stronie (np. tekst, obrazy, linki, tabele).

---

### 1.14 Tworzenie komentarzy

Komentarze są zapisywane w HTML w następujący sposób:

```html
<!-- To jest komentarz -->
```

---

## 2. Znaczniki tekstu

### 2.1 Akapit

Znacznik odpowiedzialny za akapit: `<p>`.

---

### 2.2 Przełamanie linii

Znacznik `<br>` powoduje przejście tekstu do nowej linii.

---

### 2.3 Nagłówki

HTML oferuje sześć poziomów nagłówków:

```html
<h1>Nagłówek 1</h1>
<h2>Nagłówek 2</h2>
<h3>Nagłówek 3</h3>
<h4>Nagłówek 4</h4>
<h5>Nagłówek 5</h5>
<h6>Nagłówek 6</h6>
```

---

### 2.4 Pogrubienie, pochylenie, podkreślenie i przekreślenie

- **Pogrubienie**: `<b>Tekst</b>`
- **Pochylenie**: `<i>Tekst</i>`
- **Podkreślenie**: `<u>Tekst</u>`
- **Przekreślenie**: `<s>Tekst</s>`

---

### 2.5 Indeks górny i dolny

- **Indeks górny**: `<sup>Tekst</sup>`
- **Indeks dolny**: `<sub>Tekst</sub>`

---

### 2.6 Linia pozioma

Znacznik `<hr>` tworzy poziomą linię na stronie.

---

### 2.7 Wzmocnienie i nacisk na tekst

- **Wzmocnienie tekstu**: `<strong>Ważny tekst</strong>`
- **Nacisk na tekst**: `<em>Tekst z naciskiem</em>`

---

### 2.8 Cytaty

- Dłuższy cytat: `<blockquote>...</blockquote>`
- Krótszy cytat: `<q>...</q>`

---

### 2.9 Skróty i akronimy

Znacznik `<abbr>` pozwala na wprowadzenie skrótu lub akronimu z atrybutem `title`.
Przykład:

```html
<p>Technikum <abbr title="Towarzystwo Edukacji Bankowej">TEB</abbr> Edukacja</p>
```

---

### 2.10 Znaki specjalne

HTML posiada specjalne kody dla niektórych znaków:
| Nazwa | Kod dziesiętny | Kod szesnastkowy | Przykład |
|---------|----------------|------------------|----------|
| &quot; | &#34; | &#x22; | " |
| &amp; | &#38; | &#x26; | & |
| &lt; | &#60; | &#x3C; | < |
| &gt; | &#62; | &#x3E; | > |

---

### 2.11 Bloki preformatowane

Tekst wpisany w znaczniki `<pre>` zachowuje wszystkie spacje, tabulacje i złamania wiersza:

```html
<pre>
  Przykład tekstu w formacie pre
</pre>
```

---

## 3. Tworzenie list i odnośników

### 3.1 Lista numerowana

Aby utworzyć listę numerowaną, użyj znacznika `<ol> ... </ol>`, a elementy listy są oznaczone za pomocą `<li> ... </li>`:

```html
<ol>
  <li>Element 1</li>
  <li>Element 2</li>
</ol>
```

---

### 3.2 Lista nienumerowana

Znacznik `<ul> ... </ul>` tworzy listę nienumerowaną:

```html
<ul>
  <li>Element 1</li>
  <li>Element 2</li>
</ul>
```

---

### 3.3 Odnośniki

- **Odnośnik absolutny**: `<a href="https://technikum.pl">Przejdź do strony</a>`
- **Odnośnik względny**: `<a href="../sklep/sklep.html">Wróć do sklepu</a>`

### 3.9 Odsyłacz do skrzynki pocztowej

```html
<a href="mailto:kontakt@firma.pl">Wyślij e-mail</a>
```

---

### 3.10 Sekcja nawigacyjna

```html
<nav>
  <ul>
    <li><a href="index.html">Strona główna</a></li>
    <li><a href="kontakt.html">Kontakt</a></li>
  </ul>
</nav>
```

---

## 4. Podział strony na bloki

### 4.1 Znaczniki semantyczne HTML5

- **`<header>`** – Nagłówek strony
- **`<nav>`** – Nawigacja

---

## 5. Grafika na stronie

### 5.1 Wstawianie obrazów

```html
<img src="img/img1.png" alt="Opis obrazu" />
```

---

### 5.2 Formatowanie grafiki

- **JPG**: idealny do zdjęć.
- **PNG**: obsługuje przezroczystość.
- **GIF**: obsługuje animacje.

---

### 5.3 Tekst alternatywny dla obrazów

Znacznik `alt` wyświetla tekst, gdy obraz nie może być załadowany:

```html
<img src="img/img1.png" alt="Zdjęcie drzewa" />
```

---

## 6. Tworzenie tabel

### 6.1 Struktura tabeli

```html
<table>
  <tr>
    <th>Nagłówek 1</th>
    <th>Nagłówek 2</th>
  </tr>
  <tr>
    <td>Dane 1</td>
    <td>Dane 2</td>
  </tr>
</table>
```

---

### 6.2 Atrybuty tabeli

- **colspan**: łączenie komórek w wierszu.
- **rowspan**: łączenie komórek w kolumnie.
- **cellpadding**: marginesy komórek.
- **cellspacing**: odstępy między komórkami.
- **border**: obramowanie tabeli.

---

### 6.3 Przykład tabeli

```html
<table border>
  <tr>
    <th>Przedmiot</th>
    <th>Sala</th>
    <th>Godzina</th>
  </tr>
  <tr>
    <td>TSIAI</td>
    <td>318</td>
    <td>10:00</td>
  </tr>
</table>
```

---

## 7. Formularze

### 7.1 Tworzenie formularzy

```html
<form action="submit.php" method="post">
  <label for="login">Login</label>
  <input type="text" name="login" id="login" required />
  <label for="pass">Hasło</label>
  <input type="password" name="pass" id="pass" required />
  <input type="submit" value="Zaloguj" />
</form>
```

---

### 7.2 Znaczniki formularza

- **input**: pole wprowadzania danych.
- **select**: lista rozwijana.
- **textarea**: pole tekstowe.
- **label**: etykieta pola.

---

### 7.3 Atrybuty pola `input`

- **type="text"**: pole tekstowe.
- **type="password"**: pole na hasło.
- **type="submit"**: przycisk wysyłający formularz.
- **type="email"**: pole na adres e-mail.
- **required**: wymusza wypełnienie pola.

---

### 7.5 Przykładowy formularz

```html
<form action="" method="post">
  <label for="login">Wpisz login</label>
  <input type="text" name="login" placeholder="LOGIN" required />
  <label for="pass">Wpisz hasło</label>
  <input type="password" name="pass" placeholder="PASS" required />
  <input type="submit" value="Zaloguj" />
</form>
```
