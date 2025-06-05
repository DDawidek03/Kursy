## **Kurs JavaScript**

### **1. Wprowadzenie do JavaScript**

JavaScript (w skrócie JS) to język programowania, który jest jednym z fundamentów współczesnego tworzenia stron internetowych, obok HTML i CSS. Jego głównym celem jest umożliwienie dynamicznych interakcji na stronach WWW. Dzięki JavaScript można:

- reagować na działania użytkowników (np. kliknięcia przycisków),
- manipulować treścią stron internetowych (zmieniać teksty, obrazy),
- komunikować się z serwerami (np. za pomocą technologii AJAX).

#### **Gdzie można używać JavaScript?**

- **Przeglądarki internetowe**: JavaScript jest najczęściej używany w przeglądarkach internetowych. Każda przeglądarka (np. Chrome, Firefox, Edge) ma wbudowany silnik, który pozwala uruchamiać skrypty JavaScript.
- **Node.js**: Poza przeglądarką, JavaScript można również uruchamiać na serwerze, dzięki środowisku Node.js. Umożliwia to wykorzystanie JS w aplikacjach serwerowych, do tworzenia backendów, API i mikroserwisów.

#### **Dodawanie JavaScript do HTML**

Skrypty JavaScript mogą być umieszczane bezpośrednio w pliku HTML lub w zewnętrznych plikach `.js`.

- **Wewnętrzny skrypt JavaScript**:
  Kod JavaScript można dodać w znaczniku `<script>` w pliku HTML:

  ```html
  <html>
    <head>
      <title>Strona z JavaScript</title>
    </head>
    <body>
      <h1>Witaj na stronie</h1>
      <script>
        console.log("Witaj w JavaScript!");
      </script>
    </body>
  </html>
  ```

- **Zewnętrzny plik JavaScript**:
  Można również umieścić skrypt w osobnym pliku i załączyć go do strony:
  - Tworzymy plik `skrypt.js` z zawartością:
    ```javascript
    console.log("Ten kod pochodzi z zewnętrznego pliku!");
    ```
  - W pliku HTML odwołujemy się do tego pliku:
    ```html
    <script src="skrypt.js"></script>
    ```

#### **Kiedy uruchamiany jest JavaScript?**

Skrypty JavaScript są wykonywane w momencie ładowania strony. Możemy też załadować skrypty na końcu dokumentu, aby upewnić się, że kod JavaScript zostanie wykonany dopiero po pełnym załadowaniu treści HTML:

```html
<body>
  <!-- Treść strony -->
  <script src="skrypt.js"></script>
</body>
```

---

### **2. Komentarze w JavaScript**

Komentarze są fragmentami kodu, które nie są wykonywane przez przeglądarkę. Są używane do dokumentowania kodu, wyjaśniania złożonych operacji, a także do tymczasowego wyłączania części kodu.

- **Komentarze jednoliniowe**:
  Używamy `//`, aby wprowadzić komentarz jednoliniowy. Wszystko po tych dwóch ukośnikach aż do końca linii zostanie zignorowane przez silnik JavaScript.

  ```javascript
  let liczba = 5; // To jest komentarz wyjaśniający zmienną
  ```

- **Komentarze wieloliniowe**:
  Komentarze wieloliniowe zaczynają się od `/*` i kończą na `*/`. Wszystko pomiędzy tymi znakami będzie zignorowane.
  ```javascript
  /*
    To jest komentarz wieloliniowy,
    który może zajmować kilka linii.
  */
  let liczba = 5;
  ```

Komentarze są kluczowe dla pisania czytelnego kodu, który będzie zrozumiały nie tylko dla nas, ale także dla innych programistów, którzy będą z niego korzystać.

---

### **3. Zmienne**

Zmienne to podstawowe elementy każdego języka programowania, w tym JavaScript. Pozwalają na przechowywanie danych w pamięci, które mogą być później użyte i modyfikowane. W JavaScript mamy trzy główne słowa kluczowe do deklarowania zmiennych: `var`, `let` i `const`.

#### **Deklarowanie zmiennych**

- **`var`**: Jest to starszy sposób deklarowania zmiennych. Obecnie jest rzadziej stosowany ze względu na pewne ograniczenia (np. brak blokowego zakresu widoczności).

  ```javascript
  var imie = "Jan";
  ```

- **`let`**: Jest to nowszy sposób deklarowania zmiennych, który wprowadza lepsze zarządzanie zakresem zmiennych. Zmienna deklarowana za pomocą `let` jest dostępna tylko w bloku kodu, w którym została zadeklarowana.

  ```javascript
  let wiek = 25;
  ```

- **`const`**: Używane do deklaracji stałych, czyli zmiennych, których wartość nie może zostać zmieniona po przypisaniu.
  ```javascript
  const pi = 3.14159;
  ```

#### **Przypisywanie wartości do zmiennych**

Po deklaracji zmiennej możemy przypisać jej wartość. Wartości te mogą być różnych typów:

- **Liczby**:
  ```javascript
  let liczba = 42;
  ```
- **Łańcuchy znaków (stringi)**:
  ```javascript
  let tekst = "Witaj!";
  ```
- **Wartości logiczne (booleans)**:
  ```javascript
  let prawda = true;
  let falsz = false;
  ```

Zmienne w JavaScript mogą być dynamiczne, co oznacza, że typ wartości przechowywanej w zmiennej może się zmieniać w czasie.

```javascript
let zmienna = "tekst";
zmienna = 42; // teraz zmienna przechowuje liczbę
```

#### **Zakres zmiennych**

Zakres zmiennej to część kodu, w której dana zmienna jest dostępna. W JavaScript istnieją dwa główne typy zakresu:

- **Zakres globalny**: Zmienna zadeklarowana poza funkcją jest dostępna w całym dokumencie.
  ```javascript
  let globalnaZmienna = "Dostępna wszędzie";
  ```
- **Zakres blokowy**: Zmienna zadeklarowana wewnątrz bloku kodu (np. pętli lub instrukcji warunkowej) za pomocą `let` lub `const` jest dostępna tylko w tym bloku.
  ```javascript
  if (true) {
    let zmiennaBlokowa = "Dostępna tylko tutaj";
  }
  ```

---

### **4. Okna dialogowe**

JavaScript umożliwia wyświetlanie użytkownikowi różnych okien dialogowych, które mogą służyć do komunikacji lub zbierania danych.

#### **`alert()`**

Funkcja `alert()` służy do wyświetlania komunikatu w prostym oknie dialogowym. Użytkownik może jedynie zamknąć okno, klikając przycisk "OK".

```javascript
alert("To jest przykładowy alert!");
```

#### **`prompt()`**

`prompt()` to okno dialogowe, które pozwala użytkownikowi wprowadzić tekst. Wartość wprowadzona przez użytkownika jest zwracana przez funkcję i może być przechowywana w zmiennej.

```javascript
let nazwa = prompt("Jak masz na imię?");
alert("Cześć, " + nazwa + "!");
```

Jeśli użytkownik kliknie "Anuluj", funkcja `prompt()` zwróci `null`.

#### **`confirm()`**

Funkcja `confirm()` wyświetla okno z pytaniem, dając użytkownikowi możliwość wyboru "OK" lub "Anuluj". Zwraca wartość logiczną `true` (gdy użytkownik kliknie "OK") lub `false` (gdy wybierze "Anuluj").

```javascript
let zgoda = confirm("Czy zgadzasz się na warunki?");
if (zgoda) {
  alert("Dziękujemy za akceptację!");
} else {
  alert("Nie zaakceptowano warunków.");
}
```

---

### **5. Operatory**

Operatory to symbole, które służą do wykonywania operacji na wartościach. JavaScript oferuje różne rodzaje operatorów, w tym arytmetyczne, porównania, logiczne i przypis

ania.

#### **Operatory arytmetyczne**

Operatory te służą do wykonywania operacji matematycznych:

- **Dodawanie (`+`)**:
  ```javascript
  let suma = 5 + 3; // wynik: 8
  ```
- **Odejmowanie (`-`)**:
  ```javascript
  let roznica = 5 - 3; // wynik: 2
  ```
- **Mnożenie (`*`)**:
  ```javascript
  let iloczyn = 5 * 3; // wynik: 15
  ```
- **Dzielenie (`/`)**:
  ```javascript
  let iloraz = 10 / 2; // wynik: 5
  ```
- **Reszta z dzielenia (`%`)**:
  ```javascript
  let reszta = 7 % 3; // wynik: 1
  ```

#### **Operatory przypisania**

Operatory przypisania służą do przypisywania wartości do zmiennych. Najbardziej podstawowym operatorem przypisania jest `=`, ale istnieje też wiele skrótów:

- **`=`**:
  ```javascript
  let liczba = 5;
  ```
- **`+=`** (dodaje do istniejącej wartości):
  ```javascript
  liczba += 3; // równoważne liczba = liczba + 3
  ```

#### **Operatory porównania**

Te operatory służą do porównywania wartości i zwracają wynik `true` lub `false`:

- **Równość (`==`)**: porównuje wartości (niestrikte):
  ```javascript
  let wynik = 5 == "5"; // true, bo porównuje wartości, ignorując typy
  ```
- **Ścisła równość (`===`)**: porównuje wartości i typy:
  ```javascript
  let wynik = 5 === "5"; // false, bo różne typy
  ```
- **Nierówność (`!=`)**:
  ```javascript
  let wynik = 5 != 3; // true
  ```
- **Większe/mniejsze (`>`, `<`, `>=`, `<=`)**:
  ```javascript
  let wynik = 5 > 3; // true
  ```

#### **Operatory logiczne**

Operatory logiczne są używane do łączenia lub odwracania wyników logicznych:

- **AND (`&&`)**: Zwraca `true` tylko wtedy, gdy oba wyrażenia są prawdziwe.
  ```javascript
  let wynik = 5 > 3 && 10 > 5; // true
  ```
- **OR (`||`)**: Zwraca `true`, jeśli jedno z wyrażeń jest prawdziwe.
  ```javascript
  let wynik = 5 > 10 || 10 > 5; // true
  ```
- **NOT (`!`)**: Odwraca wartość logiczną.
  ```javascript
  let wynik = !(5 > 10); // true
  ```

---

### **6. Typy danych i konwersja**

JavaScript obsługuje kilka podstawowych typów danych. Każda zmienna w JavaScript może mieć jeden z tych typów, a JavaScript umożliwia łatwą konwersję między nimi.

#### **Typy danych w JavaScript**

- **Liczby (`number`)**: Reprezentują zarówno liczby całkowite, jak i zmiennoprzecinkowe.
  ```javascript
  let liczbaCalkowita = 10;
  let liczbaZmiennoprzecinkowa = 3.14;
  ```
- **Łańcuchy znaków (`string`)**: Tekst w JavaScript jest reprezentowany przez łańcuchy znaków. Można je tworzyć za pomocą pojedynczych (`'`) lub podwójnych cudzysłowów (`"`).
  ```javascript
  let tekst = "Witaj!";
  ```
- **Wartości logiczne (`boolean`)**: Mogą przyjmować jedną z dwóch wartości: `true` lub `false`.
  ```javascript
  let prawda = true;
  let falsz = false;
  ```
- **`null`**: Reprezentuje brak wartości.
  ```javascript
  let brakWartosci = null;
  ```
- **`undefined`**: Zmienna, której nie przypisano żadnej wartości, ma domyślną wartość `undefined`.
  ```javascript
  let zmienna;
  console.log(zmienna); // undefined
  ```

#### **Konwersja typów danych**

W JavaScript czasami konieczne jest zamienienie jednego typu danych na inny. Możemy to zrobić na kilka sposobów:

- **Automatyczna konwersja**: JavaScript automatycznie konwertuje typy w niektórych sytuacjach, np. podczas łączenia liczby z łańcuchem znaków.
  ```javascript
  let wynik = "5" + 5; // wynik to '55' (łańcuch znaków)
  ```
- **Ręczna konwersja**: Możemy jawnie konwertować typy danych.
  - Na liczbę:
    ```javascript
    let liczba = Number("5"); // zamienia łańcuch znaków na liczbę
    ```
  - Na łańcuch znaków:
    ```javascript
    let tekst = String(123); // zamienia liczbę na tekst
    ```

---

### **7. Instrukcje warunkowe**

Instrukcje warunkowe w JavaScript pozwalają na wykonywanie różnych fragmentów kodu w zależności od spełnienia określonych warunków. Najczęściej używaną konstrukcją jest `if`, `else if` i `else`.

#### **Instrukcja `if`**

Instrukcja `if` sprawdza, czy warunek jest prawdziwy (`true`). Jeśli tak, wykonuje blok kodu wewnątrz.

```javascript
let wiek = 20;
if (wiek >= 18) {
  console.log("Jesteś pełnoletni");
}
```

#### **Instrukcja `else`**

Instrukcja `else` jest wykonywana, gdy warunek w `if` nie jest spełniony.

```javascript
let wiek = 16;
if (wiek >= 18) {
  console.log("Jesteś pełnoletni");
} else {
  console.log("Nie jesteś pełnoletni");
}
```

#### **Instrukcja `else if`**

Używamy `else if`, gdy chcemy sprawdzić dodatkowe warunki po pierwszym `if`.

```javascript
let wiek = 18;
if (wiek > 18) {
  console.log("Jesteś pełnoletni");
} else if (wiek === 18) {
  console.log("Masz dokładnie 18 lat");
} else {
  console.log("Nie jesteś pełnoletni");
}
```

#### **Operator trójargumentowy (ternary operator)**

Jest to skrócona forma instrukcji warunkowej `if-else`. Służy do prostszych operacji.

```javascript
let wiek = 20;
let wynik = wiek >= 18 ? "Pełnoletni" : "Niepełnoletni";
console.log(wynik); // wynik: 'Pełnoletni'
```

#### Switch Case

Instrukcja `switch` w JavaScript to alternatywa dla złożonych instrukcji `if-else`, która pozwala na wygodne i czytelne porównywanie wartości. Umożliwia sprawdzenie wartości danej zmiennej lub wyrażenia i wykonanie odpowiednich bloków kodu w zależności od wyniku tego porównania.

#### **Składnia**

```javascript
switch (wyrazenie) {
  case wartosc1:
    // blok kodu, gdy wyrazenie === wartosc1
    break;
  case wartosc2:
    // blok kodu, gdy wyrazenie === wartosc2
    break;
  // ...
  default:
  // blok kodu, gdy żaden przypadek nie pasuje
}
```

#### **Działanie**

1. **Sprawdzenie wartości**: `switch` porównuje wartość podaną w wyrażeniu z wartościami zdefiniowanymi w `case`.
2. **Wykonanie kodu**: Jeśli znajdzie pasujący przypadek (`case`), wykona odpowiadający mu blok kodu.
3. **`break`**: Instrukcja `break` kończy wykonanie bloku `switch`. Bez niej, program kontynuuje wykonanie następnych przypadków, co prowadzi do tzw. "fall-through".
4. **`default`**: Jeśli żaden z przypadków nie pasuje, wykonany zostanie blok `default` (jeśli został zdefiniowany).

#### **Przykład**

Załóżmy, że chcemy sprawdzić, jaki dzień tygodnia odpowiada podanemu numerowi:

```javascript
let dzienTygodnia = 3;
let nazwaDnia;

switch (dzienTygodnia) {
  case 1:
    nazwaDnia = "Poniedziałek";
    break;
  case 2:
    nazwaDnia = "Wtorek";
    break;
  case 3:
    nazwaDnia = "Środa";
    break;
  case 4:
    nazwaDnia = "Czwartek";
    break;
  case 5:
    nazwaDnia = "Piątek";
    break;
  case 6:
    nazwaDnia = "Sobota";
    break;
  case 7:
    nazwaDnia = "Niedziela";
    break;
  default:
    nazwaDnia = "Nieprawidłowy dzień";
}

console.log(nazwaDnia); // wynik: Środa
```

---

### **Rodzaje Pętli w JavaScript**

#### **Pętla `for`**

Pętla `for` jest najbardziej wszechstronna. Składa się z trzech sekcji:

1. **Inicjalizacja** – ustalamy zmienną początkową.
2. **Warunek** – warunek kontynuacji pętli.
3. **Aktualizacja** – modyfikacja wartości zmiennej w każdej iteracji.

**Przykład: Wyświetlenie liczb od 0 do 4**

```javascript
for (let i = 0; i < 5; i++) {
  console.log(i); // Wydrukuje: 0, 1, 2, 3, 4
}
```

**Przykład: Wyświetlenie tylko liczb parzystych od 0 do 8**

```javascript
for (let i = 0; i <= 8; i += 2) {
  console.log(i); // Wydrukuje: 0, 2, 4, 6, 8
}
```

Pętla `for` jest wygodna do używania, kiedy wiemy, ile razy chcemy powtórzyć kod. Można również wykonywać bardziej skomplikowane operacje na licznikach, np. iterować od końca do początku lub zwiększać o inną wartość niż 1.

#### **Pętla `while`**

Pętla `while` działa nieco inaczej. Jej cechą jest to, że sprawdza warunek przed każdym wykonaniem kodu. Jeśli warunek jest `true`, pętla wykonuje kod, a potem sprawdza go ponownie.

**Przykład: Wyświetlenie liczb od 0 do 4 z pętlą `while`**

```javascript
let i = 0;
while (i < 5) {
  console.log(i); // Wydrukuje: 0, 1, 2, 3, 4
  i++;
}
```

**Przykład: Sprawdzenie warunku dla liczby**

```javascript
let num = 1;
while (num <= 3) {
  console.log("Liczba:", num); // Wydrukuje "Liczba: 1", "Liczba: 2", "Liczba: 3"
  num++;
}
```

Pętla `while` jest użyteczna, gdy nie znamy z góry liczby iteracji i zależy nam na kontynuowaniu dopóki warunek jest spełniony.

#### **Pętla `do-while`**

Pętla `do-while` jest bardzo podobna do `while`, ale ma istotną różnicę: wykonuje kod **co najmniej raz**, zanim sprawdzi warunek. Oznacza to, że nawet jeśli warunek początkowo nie jest spełniony, kod wykona się raz.

**Przykład: Wyświetlenie liczby raz, niezależnie od warunku**

```javascript
let i = 10;
do {
  console.log(i); // Wydrukuje: 10
  i++;
} while (i < 5);
```

**Przykład: Powtarzanie pytania użytkownikowi**

```javascript
let answer;
do {
  answer = prompt("Podaj hasło:"); // Wykona się co najmniej raz
} while (answer !== "tajneHaslo");
console.log("Uzyskano poprawne hasło!");
```

Pętla `do-while` bywa przydatna, gdy chcemy mieć pewność, że kod wykona się przynajmniej raz – np. podczas uzyskiwania pierwszej wartości od użytkownika.

#### **Przerywanie Pętli: `break` i `continue`**

Dzięki instrukcjom `break` i `continue` mamy możliwość kontrolowania przepływu pętli w bardziej zaawansowany sposób.

- **`break`**: przerywa pętlę całkowicie i przechodzi do następnego fragmentu kodu poza pętlą.

  **Przykład: Zatrzymanie pętli `for` przy liczbie 3**

  ```javascript
  for (let i = 0; i < 5; i++) {
    if (i === 3) break;
    console.log(i); // Wydrukuje: 0, 1, 2
  }
  ```

- **`continue`**: pomija bieżącą iterację i przechodzi do następnej.

  **Przykład: Pominięcie liczby 3**

  ```javascript
  for (let i = 0; i < 5; i++) {
    if (i === 3) continue;
    console.log(i); // Wydrukuje: 0, 1, 2, 4
  }
  ```

#### **Zagnieżdżanie Pętli**

Możemy umieszczać pętle wewnątrz innych pętli, co pozwala na bardziej złożone operacje, np. iteracje przez dwuwymiarową tablicę.

**Przykład: Tworzenie tablicy 5x5**

```javascript
for (let i = 0; i < 5; i++) {
  let row = "";
  for (let j = 0; j < 5; j++) {
    row += "* ";
  }
  console.log(row); // Wydrukuje 5 wierszy z 5 gwiazdkami
}
```

Zagnieżdżone pętle są użyteczne np. przy przetwarzaniu macierzy, grafów, tabel danych itp.

#### **Pętla `for...of`**

Pętla `for...of` jest idealna do iterowania po elementach tablicy lub innej struktury danych iterowalnej.

**Przykład: Iteracja po elementach tablicy**

```javascript
const fruits = ["jabłko", "banan", "pomarańcza"];
for (const fruit of fruits) {
  console.log(fruit); // Wydrukuje: jabłko, banan, pomarańcza
}
```

#### **Pętla `for...in`**

Pętla `for...in` jest używana do iterowania po właściwościach obiektu.

**Przykład: Iteracja po właściwościach obiektu**

```javascript
const person = { name: "Jan", age: 30, city: "Warszawa" };
for (const key in person) {
  console.log(key + ": " + person[key]); // Wydrukuje: name: Jan, age: 30, city: Warszawa
}
```

### **Podsumowanie**

Pętle w JavaScript to potężne narzędzie pozwalające na efektywne wykonywanie powtarzalnych zadań. Oto kiedy najlepiej stosować poszczególne typy pętli:

- **`for`** – gdy znamy liczbę iteracji lub chcemy pełną kontrolę nad iteracją.
- **`while`** – gdy nie znamy z góry liczby iteracji, a kod ma być wykonywany dopóki warunek jest `true`.
- **`do-while`** – gdy kod ma się wykonać przynajmniej raz.
- **`for...of`** – gdy iterujemy po elementach tablicy lub kolekcji.
- **`for...in`** – gdy iterujemy po właściwościach obiektu.

## Pętle w łańcuchach znaków

### 1. Rozdzielanie tekstu na słowa przy pomocy `.split()`

Najpierw rozdzielmy tekst na tablicę słów, a potem przejdźmy przez nią za pomocą pętli.

#### Przykład

```javascript
const text = "JavaScript is a versatile programming language";
const words = text.split(" "); // Dzielimy tekst na słowa przy użyciu spacji jako separatora

for (let word of words) {
  console.log(word);
}
```

**Opis:**

- `text.split(" ")` dzieli tekst na tablicę, gdzie każde słowo staje się osobnym elementem. Jako separator podaliśmy spację `" "`, więc każde wystąpienie spacji powoduje rozdzielenie tekstu na kolejne słowo.
- `for...of` iteruje przez każdy element w tablicy `words`, czyli przez każde słowo.

**Wynik:**

```
JavaScript
is
a
versatile
programming
language
```

---

### 2. Iterowanie z `forEach`

Jeśli chcesz iterować po słowach przy użyciu funkcji `forEach`, można to zrobić w następujący sposób:

```javascript
const text = "Learning JavaScript step by step";
const words = text.split(" ");

words.forEach((word) => {
  console.log(word);
});
```

**Opis:**

- `forEach` jest metodą tablicową, która wykonuje przekazaną funkcję dla każdego elementu w tablicy `words`. Tutaj każde słowo będzie przekazywane do `word`, które jest argumentem funkcji.

---

### 3. Iterowanie z `for...in` (indeksy słów)

Jeśli potrzebujesz zarówno indeksów, jak i samych słów, możesz użyć `for...in`.

```javascript
const text = "JavaScript has many features";
const words = text.split(" ");

for (let index in words) {
  console.log(`Word ${Number(index) + 1}: ${words[index]}`);
}
```

**Opis:**

- `for...in` zwraca indeksy elementów, które możesz wykorzystać do dostępu do poszczególnych słów w tablicy.

**Wynik:**

```
Word 1: JavaScript
Word 2: has
Word 3: many
Word 4: features
```

---

### 4. Iterowanie z `for` (indeksy i dostęp do modyfikacji tablicy)

Pętla `for` jest wygodna, jeśli chcesz mieć pełną kontrolę nad indeksami i może modyfikować tablicę w trakcie iteracji.

```javascript
const text = "JavaScript allows you to build powerful applications";
const words = text.split(" ");

for (let i = 0; i < words.length; i++) {
  console.log(`Word ${i + 1}: ${words[i]}`);
}
```

**Opis:**

- `for` pozwala na pełną kontrolę nad tablicą oraz nad licznikiem `i`. Możesz modyfikować elementy `words[i]` lub dodać nowe, jeżeli zajdzie taka potrzeba.

---

### 5. Iterowanie i zmiana każdego słowa

Jeśli chcesz przetworzyć każde słowo, np. zmienić je na wielkie litery lub dodać znak, możesz to zrobić tak:

```javascript
const text = "JavaScript is powerful";
const words = text.split(" ");

for (let i = 0; i < words.length; i++) {
  words[i] = words[i].toUpperCase(); // Zmieniamy każde słowo na wielkie litery
}

console.log(words.join(" ")); // Łączymy przetworzone słowa z powrotem w tekst
```

**Wynik:**

```
JAVASCRIPT IS POWERFUL
```

---

### Podsumowanie

- **`split()`** rozdziela tekst na tablicę słów.
- **`for...of`** jest najprostszą pętlą do iterowania po elementach tablicy, jakimi są słowa.
- **`forEach`** wykonuje funkcję dla każdego elementu w tablicy.
- **`for...in`** iteruje po indeksach tablicy, co jest przydatne, gdy potrzebujesz indeksów.
- **`for`** daje pełną kontrolę nad tablicą i indeksem, pozwalając modyfikować elementy w trakcie iteracji.

### **9. Obiekt Math i liczby (`number`)**

JavaScript oferuje wbudowane funkcje matematyczne za pomocą obiektu `Math`, który pozwala na wykonywanie bardziej zaawansowanych obliczeń matematycznych.

#### **Funkcje obiektu Math**

- **`Math.round(x)`**: Zaokrągla liczbę do najbliższej liczby całkowitej.
  ```javascript
  let wynik = Math.round(4.7); // wynik: 5
  ```
- **`Math.random()`**: Zwraca losową liczbę z zakresu od 0 do 1.
  ```javascript
  let losowa = Math.random(); // przykładowy wynik: 0.834...
  ```
- **`Math.max(a, b, c...)`**: Zwraca największą liczbę z podanych argumentów.
  ```javascript
  let maks = Math.max(1, 10, 100); // wynik: 100
  ```

#### **Liczby w JavaScript**

- **Typ `Number`**: JavaScript obsługuje typ danych `Number`, który reprezentuje zarówno liczby całkowite, jak i zmiennoprzecinkowe.

  ```javascript
  let liczba = 10.5;
  ```

- **Operacje na liczbach**:
  JavaScript wspiera standardowe operacje matematyczne, takie jak dodawanie, odejmowanie, mnożenie i dzielenie.
  ```javascript
  let suma = 10 + 5; // wynik: 15
  let roznica = 10 - 5; // wynik: 5
  let iloczyn = 10 * 5; // wynik: 50
  let iloraz = 10 / 5; // wynik: 2
  ```

#### **Konwersja liczby do łańcucha znaków**

Liczby można konwertować na tekst za pomocą funkcji `toString()`:

```javascript
let liczba = 123;
let tekst = liczba.toString(); // tekst: '123'
```

---

## **Tworzenie tablicy**

Tablicę w JavaScript można utworzyć za pomocą:

1. Nawiasów kwadratowych `[]`.
2. Obiektu `Array`.

```javascript
// Tworzenie tablicy z elementami
let liczby = [1, 2, 3, 4, 5];
let imiona = ["Jan", "Anna", "Piotr"];

// Tworzenie pustej tablicy i dodawanie elementów później
let pustaTablica = [];
pustaTablica.push("element1");

// Tworzenie za pomocą obiektu Array
let tablica = new Array(5); // Tworzy tablicę o długości 5 z pustymi miejscami
let mieszanaTablica = new Array("tekst", 42, true);
```

---

## **Dostęp do elementów tablicy**

Elementy w tablicy są numerowane od indeksu `0`. Aby odwołać się do konkretnego elementu, używamy indeksu.

```javascript
let liczby = [10, 20, 30];
console.log(liczby[0]); // 10
console.log(liczby[2]); // 30
```

> **Uwaga**: Jeśli odwołamy się do nieistniejącego indeksu, zwrócona zostanie `undefined`.

---

## **Podstawowe metody tablicowe**

### Dodawanie i usuwanie elementów

- **Dodawanie na końcu (`push`)**: Dodaje element na końcu tablicy.

  ```javascript
  liczby.push(40); // [10, 20, 30, 40]
  ```

- **Usuwanie z końca (`pop`)**: Usuwa ostatni element i zwraca go.

  ```javascript
  let ostatni = liczby.pop(); // [10, 20, 30], ostatni = 40
  ```

- **Dodawanie na początku (`unshift`)**: Dodaje element na początku tablicy.

  ```javascript
  liczby.unshift(5); // [5, 10, 20, 30]
  ```

- **Usuwanie z początku (`shift`)**: Usuwa pierwszy element i zwraca go.
  ```javascript
  let pierwszy = liczby.shift(); // [10, 20, 30], pierwszy = 5
  ```

### Inne przydatne metody tablicowe

1. **`concat()`**: Łączy dwie lub więcej tablic, zwracając nową tablicę.

   ```javascript
   let liczby1 = [1, 2];
   let liczby2 = [3, 4];
   let polaczona = liczby1.concat(liczby2); // [1, 2, 3, 4]
   ```

2. **`slice()`**: Zwraca wycinek tablicy bez jej zmiany.

   ```javascript
   let liczby = [10, 20, 30, 40];
   let fragment = liczby.slice(1, 3); // [20, 30]
   ```

3. **`splice()`**: Usuwa, zastępuje lub dodaje elementy do tablicy.

   ```javascript
   let liczby = [10, 20, 30, 40];
   liczby.splice(1, 2, 25, 35); // [10, 25, 35, 40]
   ```

4. **`indexOf()` i `lastIndexOf()`**: Zwraca pierwszy lub ostatni indeks podanego elementu (lub `-1`, jeśli nie znaleziono).

   ```javascript
   let liczby = [10, 20, 10, 30];
   liczby.indexOf(10); // 0
   liczby.lastIndexOf(10); // 2
   ```

5. **`includes()`**: Sprawdza, czy tablica zawiera dany element.

   ```javascript
   liczby.includes(20); // true
   liczby.includes(50); // false
   ```

6. **`join()`**: Łączy elementy tablicy w ciąg znaków z określonym separatorem.

   ```javascript
   let imiona = ["Jan", "Anna", "Piotr"];
   let tekst = imiona.join(", "); // "Jan, Anna, Piotr"
   ```

7. **`reverse()`**: Odwraca kolejność elementów w tablicy.
   ```javascript
   let liczby = [1, 2, 3];
   liczby.reverse(); // [3, 2, 1]
   ```

---

## **Metody iteracyjne**

JavaScript oferuje kilka metod do iteracji i manipulacji na tablicach.

### `forEach()`

Wykonuje funkcję dla każdego elementu tablicy.

```javascript
let liczby = [1, 2, 3];
liczby.forEach((liczba) => {
  console.log(liczba * 2); // 2, 4, 6
});
```

### `map()`

Tworzy nową tablicę, wykonując operację na każdym elemencie.

```javascript
let liczby = [1, 2, 3];
let podwojone = liczby.map((x) => x * 2); // [2, 4, 6]
```

### `filter()`

Tworzy nową tablicę zawierającą elementy spełniające określony warunek.

```javascript
let liczby = [1, 2, 3, 4, 5];
let wiekszeNiz3 = liczby.filter((x) => x > 3); // [4, 5]
```

### `reduce()`

Redukuje tablicę do pojedynczej wartości, np. sumy.

```javascript
let liczby = [1, 2, 3, 4];
let suma = liczby.reduce((acc, curr) => acc + curr, 0); // 10
```

### `find()` i `findIndex()`

- **`find()`**: Zwraca pierwszy element, który spełnia warunek.
- **`findIndex()`**: Zwraca indeks pierwszego elementu spełniającego warunek.

```javascript
let liczby = [5, 12, 8, 130, 44];
let pierwszaDuza = liczby.find((x) => x > 10); // 12
let indeksPierwszejDuzej = liczby.findIndex((x) => x > 10); // 1
```

### `some()` i `every()`

- **`some()`**: Sprawdza, czy przynajmniej jeden element spełnia warunek.
- **`every()`**: Sprawdza, czy wszystkie elementy spełniają warunek.

```javascript
let liczby = [1, 2, 3, 4, 5];
liczby.some((x) => x > 4); // true
liczby.every((x) => x > 0); // true
```

### `sort()`

Sortuje elementy tablicy. Domyślnie sortuje jako ciągi znaków, więc dla liczb wymaga funkcji porównawczej.

```javascript
let liczby = [10, 3, 20, 15];
liczby.sort((a, b) => a - b); // [3, 10, 15, 20]
```

---

## **Operacje na wielowymiarowych tablicach**

Tablice mogą zawierać inne tablice, tworząc tablice wielowymiarowe.

```javascript
let macierz = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9],
];

console.log(macierz[1][2]); // 6
```

---

## **Podsumowanie najważniejszych metod**

- **Mutujące**: `push()`, `pop()`, `shift()`, `unshift()`, `splice()`, `reverse()`, `sort()`
- **Nie-mutujące**: `concat()`, `slice()`, `map()`, `filter()`, `reduce()`
- **Szukające**: `find()`, `findIndex()`, `indexOf()`, `includes()`
- **Inne**: `forEach()`, `some()`, `every()`, `join()`, `flat()`

---

### **11. Funkcje**

Funkcje w JavaScript pozwalają na grupowanie kodu, który można wielokrotnie wywoływać w różnych miejscach programu. Mogą przyjmować argumenty i zwracać wartości.

#### **Definiowanie funkcji**

Funkcje definiujemy za pomocą słowa kluczowego `function`:

```javascript
function przywitaj(imie) {
  console.log("Cześć, " + imie + "!");
}
```

#### **Wywoływanie funkcji**

Aby wywołać funkcję, wpisujemy jej nazwę z nawiasami:

```javascript
przywitaj("Jan"); // wynik: Cześć, Jan!
```

#### **Zwracanie wartości przez funkcję**

Funkcje mogą zwracać wyniki za pomocą słowa kluczowego `return`:

```javascript
function dodaj(a, b) {
  return a + b;
}
let wynik = dodaj(3, 4); // wynik: 7
```

---

### **12. Funkcje strzałkowe (arrow functions)**

Funkcje strzałkowe to skrócona składnia do definiowania funkcji, wprowadzona w ES6. Są one bardziej zwięzłe i mają inne zachowanie w kontekście `this`.

#### **Składnia funkcji strzałkowej**

Oto prosty przykład funkcji strzałkowej:

```javascript
let dodaj = (a, b) => a + b;
console.log(dodaj(2, 3)); // wynik: 5
```

Jeśli funkcja nie przyjmuje argumentów, używamy pustych nawiasów:

```javascript
let powitanie = () => "Cześć!";
console.log(powitanie()); // wynik: Cześć!
```

Funkcje strzałkowe są bardziej zwięzłe i polecane, szczególnie w przypadku prostych funkcji.

---

## **Kompleksowy przewodnik po DOM (Document Object Model)**

Document Object Model (DOM) jest jednym z fundamentów interakcji między JavaScript a stroną internetową. Pozwala programiście na dostęp do struktury HTML dokumentu, manipulowanie nią oraz reagowanie na działania użytkownika. W tej instrukcji wytłumaczę szczegółowo każdy aspekt pracy z DOM, ilustrując teorię przykładami i rozbudowanymi przypadkami użycia.

---

### **1. Struktura DOM**

DOM reprezentuje dokument HTML jako hierarchiczny model drzewa, w którym:

- Każdy element HTML jest węzłem (ang. **node**).
- Typy węzłów:
  - **Element Node**: reprezentuje znaczniki HTML (np. `<div>`, `<p>`).
  - **Text Node**: zawiera tekst między znacznikami (np. "To jest tekst").
  - **Attribute Node**: reprezentuje atrybuty elementu (np. `class="przykladowaKlasa"`).

#### **Przykład drzewa DOM**

Dla kodu HTML:

```html
<div id="container">
  <h1 class="header">Nagłówek</h1>
  <p>To jest paragraf.</p>
</div>
```

DOM będzie wyglądał jak poniżej:

```
document
└── <html>
    ├── <head>
    └── <body>
        └── <div id="container">
            ├── <h1 class="header">Nagłówek</h1>
            └── <p>To jest paragraf.</p>
```

---

### **2. Dostęp do elementów DOM**

Przed manipulacją elementami należy je zidentyfikować. W DOM dostęp do elementów uzyskujemy za pomocą metod udostępnianych przez obiekt `document`.

#### **a. Pobieranie elementów za pomocą ID**

Metoda **`getElementById()`** pozwala znaleźć element o konkretnym identyfikatorze:

```html
<div id="unikatowy">To jest element z ID.</div>
```

```javascript
let element = document.getElementById("unikatowy");
console.log(element.textContent); // "To jest element z ID."
```

#### **b. Pobieranie elementów za pomocą klasy**

Metoda **`getElementsByClassName()`** zwraca wszystkie elementy o danej klasie:

```html
<div class="klasa">Pierwszy</div>
<div class="klasa">Drugi</div>
```

```javascript
let elementy = document.getElementsByClassName("klasa");
console.log(elementy[0].textContent); // "Pierwszy"
```

#### **c. Pobieranie elementów za pomocą tagu**

Metoda **`getElementsByTagName()`** znajduje wszystkie elementy o podanym tagu:

```html
<p>Pierwszy akapit</p>
<p>Drugi akapit</p>
```

```javascript
let akapity = document.getElementsByTagName("p");
console.log(akapity.length); // 2
```

#### **d. Wykorzystanie selektorów CSS**

##### `querySelector()` - Pobiera pierwszy element pasujący do selektora CSS:

```html
<div class="box" id="pierwszy">Pierwszy</div>
<div class="box">Drugi</div>
```

```javascript
let element = document.querySelector(".box");
console.log(element.textContent); // "Pierwszy"
```

##### `querySelectorAll()` - Pobiera wszystkie elementy pasujące do selektora CSS:

```html
let elementy = document.querySelectorAll(".box"); elementy.forEach(el =>
console.log(el.textContent)); // "Pierwszy" // "Drugi"
```

---

### **3. Manipulowanie elementami DOM**

Po uzyskaniu dostępu do elementów można zmieniać ich treść, atrybuty, style, a nawet strukturę.

#### **a. Zmiana tekstu i HTML wewnątrz elementu**

- **`textContent`** - Ustawia tekst wewnątrz elementu (bez interpretacji HTML).

  ```javascript
  let naglowek = document.querySelector("h1");
  naglowek.textContent = "Nowa treść nagłówka";
  ```

- **`innerHTML`** - Ustawia zawartość HTML wewnątrz elementu.

  ```javascript
  let div = document.querySelector("#container");
  div.innerHTML = "<strong>Zawartość HTML</strong>";
  ```

#### **b. Zmiana atrybutów elementu**

- **`setAttribute()`** - Dodaje lub zmienia atrybut.

  ```javascript
  let obrazek = document.querySelector("img");
  obrazek.setAttribute("alt", "Opis obrazka");
  ```

- **`getAttribute()`** - Pobiera wartość atrybutu.

  ```javascript
  let src = obrazek.getAttribute("src");
  ```

- **`removeAttribute()`** - Usuwa atrybut.

  ```javascript
  obrazek.removeAttribute("alt");
  ```

#### **c. Dodawanie i usuwanie klas**

- **Dodanie klasy:**

  ```javascript
  let element = document.querySelector("div");
  element.classList.add("nowa-klasa");
  ```

- **Usunięcie klasy:**

  ```javascript
  element.classList.remove("stara-klasa");
  ```

- **Przełączenie klasy:**

  ```javascript
  element.classList.toggle("ukryty");
  ```

---

### **4. Praca z formularzami i elementami `<input>`**

Elementy formularzy, takie jak `<input>`, mają specyficzne właściwości umożliwiające ich odczyt i modyfikację.

#### **a. Odczyt i ustawienie wartości**

- **`value`** - Pobiera lub ustawia wartość pola.

  ```html
  <input type="text" id="poleTekstowe" value="Wartość domyślna" />
  ```

  ```javascript
  let pole = document.getElementById("poleTekstowe");
  console.log(pole.value); // "Wartość domyślna"
  pole.value = "Nowa wartość";
  ```

#### **b. Sprawdzanie zaznaczenia w checkboxach i radio**

- **Checkbox:**

  ```html
  <input type="checkbox" id="zgoda" checked />
  ```

  ```javascript
  let zgoda = document.getElementById("zgoda");
  console.log(zgoda.checked); // true
  zgoda.checked = false;
  ```

- **Radio:**

  ```html
  <input type="radio" name="kolor" value="czerwony" checked />
  <input type="radio" name="kolor" value="zielony" />
  ```

  ```javascript
  let wybranyKolor = document.querySelector("input[name='kolor']:checked");
  console.log(wybranyKolor.value); // "czerwony"
  ```

#### **c. Obsługa zdarzeń formularzy**

Reagowanie na zmiany wartości w formularzach:

```javascript
let pole = document.getElementById("poleTekstowe");
pole.addEventListener("input", () => {
  console.log("Aktualna wartość:", pole.value);
});
```

---

### **5. Dodawanie i usuwanie elementów w DOM**

#### **a. Tworzenie nowych elementów**

- **`document.createElement()`**:

  ```javascript
  let nowyDiv = document.createElement("div");
  nowyDiv.textContent = "To jest nowy div";
  document.body.appendChild(nowyDiv);
  ```

#### **b. Usuwanie elementów**

- **`remove()`**:

  ```javascript
  let element = document.getElementById("doUsuniecia");
  element.remove();
  ```

#### **c. Wstawianie w konkretnym miejscu**

- **`insertBefore()`**:

  ```javascript
  let parent = document.getElementById("kontener");
  let nowyElement = document.createElement("p");
  parent.insertBefore(nowyElement, parent.firstChild);
  ```

---

### **6. Delegacja i obsługa zdarzeń w DOM**

Delegacja zdarzeń pozwala na obsługę dynamicznie dodawanych elementów.

#### **Przykład: Obsługa kliknięć na liście**

```html
<ul id="lista">
  <li>Element 1</li>
  <li>Element 2</li>
</ul>
```

```javascript
document.getElementById("lista").addEventListener("click", function (event) {
  if (event.target.tagName === "LI") {
    console.log("Kliknięto element listy:", event.target.textContent);
  }
});
```

---

### **Praca z `querySelector` i `querySelectorAll` w DOM**

Metody **`querySelector`** i **`querySelectorAll`** pozwalają na bardziej elastyczne i wszechstronne wyszukiwanie elementów w DOM za pomocą selektorów CSS. Dzięki nim możemy wyszukiwać elementy na podstawie klas, identyfikatorów, nazw tagów, a także bardziej zaawansowanych reguł CSS (np. selektorów atrybutów).

---

### **1. `querySelector`**

#### **Czym jest `querySelector`?**

Metoda **`querySelector`** zwraca **pierwszy** element pasujący do określonego selektora CSS. Jeśli żaden element nie spełnia kryteriów, zwraca `null`.

#### **Przykłady użycia:**

##### Pobieranie elementu na podstawie ID:

```html
<div id="unikatowy">To jest div z ID.</div>
```

```javascript
let element = document.querySelector("#unikatowy");
console.log(element.textContent); // "To jest div z ID."
```

##### Pobieranie elementu na podstawie klasy:

```html
<div class="moja-klasa">Pierwszy element</div>
<div class="moja-klasa">Drugi element</div>
```

```javascript
let element = document.querySelector(".moja-klasa");
console.log(element.textContent); // "Pierwszy element"
```

##### Pobieranie elementu na podstawie tagu:

```html
<p>Pierwszy akapit</p>
<p>Drugi akapit</p>
```

```javascript
let element = document.querySelector("p");
console.log(element.textContent); // "Pierwszy akapit"
```

##### Zagnieżdżone selektory:

```html
<div id="container">
  <p class="tekst">Pierwszy paragraf</p>
  <p>Drugi paragraf</p>
</div>
```

```javascript
let element = document.querySelector("#container .tekst");
console.log(element.textContent); // "Pierwszy paragraf"
```

---

### **2. `querySelectorAll`**

#### **Czym jest `querySelectorAll`?**

Metoda **`querySelectorAll`** zwraca **wszystkie** elementy pasujące do selektora CSS jako statyczną kolekcję (`NodeList`). Dzięki temu możemy iterować przez te elementy i wykonywać na nich operacje.

#### **Przykłady użycia:**

##### Pobieranie wszystkich elementów o danej klasie:

```html
<div class="moja-klasa">Pierwszy element</div>
<div class="moja-klasa">Drugi element</div>
```

```javascript
let elementy = document.querySelectorAll(".moja-klasa");
elementy.forEach((element) => console.log(element.textContent));
// "Pierwszy element"
// "Drugi element"
```

##### Pobieranie wszystkich `<p>` w kontenerze:

```html
<div id="container">
  <p class="tekst">Pierwszy paragraf</p>
  <p>Drugi paragraf</p>
</div>
```

```javascript
let elementy = document.querySelectorAll("#container p");
elementy.forEach((element) => console.log(element.textContent));
// "Pierwszy paragraf"
// "Drugi paragraf"
```

---

### **3. Obsługa dynamicznych wartości (np. atrybutów)**

##### Wybieranie elementów na podstawie atrybutów:

```html
<input type="text" name="username" /> <input type="password" name="password" />
```

```javascript
let input = document.querySelector("input[name='username']");
console.log(input); // <input type="text" name="username">
```

##### Wybieranie elementów z określoną klasą i atrybutem:

```html
<button class="btn" disabled>Wyłączony</button>
<button class="btn">Aktywny</button>
```

```javascript
let disabledButton = document.querySelector("button.btn[disabled]");
console.log(disabledButton.textContent); // "Wyłączony"
```

---

### **4. Manipulacja elementami znalezionymi przez `querySelector` i `querySelectorAll`**

#### **Zmiana tekstu dla pierwszego dopasowanego elementu:**

```html
<h1 class="naglowek">Stary nagłówek</h1>
<h1 class="naglowek">Inny nagłówek</h1>
```

```javascript
let naglowek = document.querySelector(".naglowek");
naglowek.textContent = "Nowy nagłówek";
console.log(naglowek.textContent); // "Nowy nagłówek"
```

#### **Zmiana tekstu dla wszystkich elementów z klasą:**

```javascript
let naglowki = document.querySelectorAll(".naglowek");
naglowki.forEach((el) => (el.textContent = "Nagłówek zaktualizowany"));
```

#### **Dodawanie klasy do elementów:**

```javascript
naglowki.forEach((el) => el.classList.add("zaktualizowany"));
```

---

### **5. Kompleksowy przykład z `querySelector` i `querySelectorAll`**

#### Kod HTML:

```html
<div id="kontener">
  <p class="paragraf">Paragraf 1</p>
  <p class="paragraf">Paragraf 2</p>
  <p class="inny-paragraf">Paragraf 3</p>
</div>
<button id="zmienTekst">Zmień tekst</button>
```

#### Kod JavaScript:

```javascript
document.querySelector("#zmienTekst").addEventListener("click", () => {
  // Pobieramy wszystkie paragrafy w kontenerze
  let paragrafy = document.querySelectorAll("#kontener .paragraf");

  // Zmieniamy tekst każdego paragrafu
  paragrafy.forEach((el, index) => {
    el.textContent = `Nowy tekst dla paragrafu ${index + 1}`;
  });

  // Dodajemy nową klasę do każdego paragrafu
  paragrafy.forEach((el) => el.classList.add("zmieniony"));
});
```

#### Wynik:

- Po kliknięciu przycisku, teksty w paragrafach zostaną zmienione, a elementy dostaną nową klasę `zmieniony`.

---

### **6. Różnice między `querySelector` i `querySelectorAll`**

| **Cechy**           | **`querySelector`**                             | **`querySelectorAll`**                    |
| ------------------- | ----------------------------------------------- | ----------------------------------------- |
| **Zwraca**          | Pierwszy dopasowany element                     | Wszystkie dopasowane elementy (NodeList)  |
| **Ilość elementów** | Jeden element (lub `null` jeśli nie znaleziono) | Kolekcja elementów                        |
| **Iteracja**        | Brak potrzeby iteracji                          | Iteracja wymagana (`forEach`, `for...of`) |

---

### **7. Kiedy używać `querySelector` i `querySelectorAll`?**

- **`querySelector`**:

  - Gdy potrzebujesz tylko pierwszego dopasowanego elementu.
  - Gdy pracujesz z unikalnym elementem (np. ID).
  - Dla prostszych operacji.

- **`querySelectorAll`**:
  - Gdy chcesz pracować z wieloma elementami.
  - Gdy planujesz iterować po wszystkich dopasowaniach.
  - Gdy selektory obejmują bardziej złożone struktury.

---

Praca z `querySelector` i `querySelectorAll` jest bardzo intuicyjna i elastyczna dzięki możliwości użycia selektorów CSS. Z ich pomocą możesz łatwo manipulować zarówno prostymi, jak i złożonymi strukturami DOM.

### **Zdarzenia myszy**

---

### **1. Przykład przypisania zdarzeń myszy bez `addEventListener`**

#### **a. Kliknięcie na element (onclick)**

W HTML możesz przypisać zdarzenie kliknięcia bezpośrednio do elementu za pomocą atrybutu `onclick`:

```html
<button onclick="zmienKolor()">Kliknij mnie</button>

<script>
  function zmienKolor() {
    document.body.style.backgroundColor = "lightblue";
  }
</script>
```

W tym przypadku, po kliknięciu na przycisk tło strony zmieni się na jasnoniebieskie.

#### **b. Przechodzenie myszką nad elementem (onmouseover)**

Aby reagować na najechanie myszką na element, możesz użyć zdarzenia `onmouseover`:

```html
<div onmouseover="zmienKolorTekstu()">Najedź na mnie</div>

<script>
  function zmienKolorTekstu() {
    document.querySelector("div").style.color = "red";
  }
</script>
```

W tym przykładzie, gdy użytkownik najedzie myszką na `<div>`, jego tekst zmieni kolor na czerwony.

#### **c. Znikanie efektu po opuszczeniu elementu (onmouseout)**

Zdarzenie `onmouseout` jest wywoływane, gdy myszka opuści dany element:

```html
<div onmouseover="zmienKolorTekstu()" onmouseout="przywrocKolor()">
  Najedź na mnie
</div>

<script>
  function zmienKolorTekstu() {
    document.querySelector("div").style.color = "blue";
  }

  function przywrocKolor() {
    document.querySelector("div").style.color = "black";
  }
</script>
```

Po najedzeniu na element tekst zmienia kolor na niebieski, a po opuszczeniu wraca do czarnego.

#### **d. Zdarzenie kliknięcia myszką (onmousedown i onmouseup)**

Zdarzenia `onmousedown` i `onmouseup` są wywoływane, gdy użytkownik naciśnie lub puści przycisk myszy. Możemy ich używać do reakcji na te akcje.

```html
<div onmousedown="zmienKolorTla()" onmouseup="przywrocKolorTla()">
  Kliknij mnie
</div>

<script>
  function zmienKolorTla() {
    document.querySelector("div").style.backgroundColor = "lightgreen";
  }

  function przywrocKolorTla() {
    document.querySelector("div").style.backgroundColor = "";
  }
</script>
```

Tutaj, gdy użytkownik naciśnie na `<div>`, jego tło zmieni się na zielone, a po puszczeniu wróci do pierwotnego koloru.

---

### **2. Zmiana koloru tekstu, tła, rozmiaru itp. na zdarzenia myszy**

Poniżej znajdziesz kilka przykładów, jak zmieniać różne właściwości CSS elementów w odpowiedzi na zdarzenia myszy.

#### **a. Zmiana koloru tła po kliknięciu**

```html
<button onclick="zmienKolorTla()">Kliknij, aby zmienić tło</button>

<script>
  function zmienKolorTla() {
    document.body.style.backgroundColor = "lightgreen";
  }
</script>
```

#### **b. Zmiana koloru tekstu na `hover`**

```html
<p onmouseover="zmienKolorTekstu()" onmouseout="przywrocKolorTekstu()">
  Najedź na mnie!
</p>

<script>
  function zmienKolorTekstu() {
    document.querySelector("p").style.color = "blue";
  }

  function przywrocKolorTekstu() {
    document.querySelector("p").style.color = "black";
  }
</script>
```

#### **c. Zmiana rozmiaru czcionki na `click`**

```html
<h1 onclick="zmienRozmiarCzcionki()">
  Kliknij mnie, aby zmienić rozmiar czcionki
</h1>

<script>
  function zmienRozmiarCzcionki() {
    document.querySelector("h1").style.fontSize = "40px";
  }
</script>
```

#### **d. Zmiana obramowania na `mousedown` i `mouseup`**

```html
<div onmousedown="zmienObramowanie()" onmouseup="przywrocObramowanie()">
  Kliknij na mnie
</div>

<script>
  function zmienObramowanie() {
    document.querySelector("div").style.border = "5px solid red";
  }

  function przywrocObramowanie() {
    document.querySelector("div").style.border = "none";
  }
</script>
```

#### **e. Zmiana tła na `mouseover` i `mouseout`**

```html
<div onmouseover="zmienKolorTla()" onmouseout="przywrocKolorTla()">
  Najedź na mnie
</div>

<script>
  function zmienKolorTla() {
    document.querySelector("div").style.backgroundColor = "lightyellow";
  }

  function przywrocKolorTla() {
    document.querySelector("div").style.backgroundColor = "";
  }
</script>
```

---

### **3. Kombinacja wielu efektów CSS**

Często chcemy zastosować więcej niż jeden efekt naraz, np. zmienić kolor tła, tekstu oraz dodać obramowanie. Możemy to zrobić przypisując odpowiednie style do różnych właściwości elementów:

```html
<div onmouseover="zmienStyl()" onmouseout="przywrocStyl()">Najedź na mnie!</div>

<script>
  function zmienStyl() {
    let div = document.querySelector("div");
    div.style.backgroundColor = "lightcoral";
    div.style.color = "white";
    div.style.border = "2px solid black";
    div.style.fontSize = "20px";
  }

  function przywrocStyl() {
    let div = document.querySelector("div");
    div.style.backgroundColor = "";
    div.style.color = "";
    div.style.border = "";
    div.style.fontSize = "";
  }
</script>
```

Po najechaniu na element jego tło, kolor tekstu, obramowanie i rozmiar czcionki się zmienią, a po opuszczeniu myszki wrócą do pierwotnych wartości.

---

### **4. Zdarzenia myszki w formularzach**

Formularze to kolejny obszar, w którym zdarzenia myszy mogą być użyteczne, np. zmiana koloru pola tekstowego po kliknięciu:

```html
<input type="text" value="Kliknij mnie" onclick="zmienKolorTlaInput()" />

<script>
  function zmienKolorTlaInput() {
    document.querySelector("input").style.backgroundColor = "lightblue";
  }
</script>
```

# 📘 **Pobieranie wartości z formularzy i manipulacja obrazem**

> **🎯 Cel poradnika:**
>
> - Wytłumaczenie pobierania wartości z **checkboxów** i **radio buttonów**.
> - Omówienie **`addEventListener`** – co to jest, jak działa i dlaczego go używamy.
> - Pokazanie użycia pętli w JavaScript.
> - Manipulacja obrazem na podstawie wyboru użytkownika.

**👨‍🏫 Ten poradnik jest przeznaczony dla początkujących, którzy chcą zrozumieć temat od podstaw!**

---

# **📌 1. Jak pobrać wartości z formularzy?**

## **1.1 Co to są checkboxy i radio buttony?**

### **✔ Checkbox**

- Pozwala zaznaczyć **więcej niż jedną opcję**.
- Może być **zaznaczony (`checked = true`)** lub **odznaczony (`checked = false`)**.
- Służy np. do wyboru zainteresowań, ulubionych smaków pizzy itp.

### **✔ Radio button**

- Pozwala użytkownikowi wybrać **tylko jedną opcję** spośród kilku.
- Wszystkie radio buttony w jednej grupie mają **to samo `name`**.
- Stosowany np. do wyboru płci, preferowanego języka czy sposobu dostawy.

📌 **Jak sprawdzić, które opcje są zaznaczone?**  
➡ Musimy przejrzeć wszystkie checkboxy/radio buttony i sprawdzić ich stan.  
➡ Do tego użyjemy **pętli**, aby przejść przez listę elementów.

---

# **📌 2. `addEventListener` – co to jest i jak działa?**

### **🎯 `addEventListener` to sposób na obsługę zdarzeń w JavaScript.**

Zdarzenia to np. kliknięcie przycisku, zmiana wartości pola formularza, przesunięcie myszką itp.

### **✔ Dlaczego warto używać `addEventListener` zamiast `onclick`?**

1️⃣ Możemy dodać **kilka różnych funkcji** do jednego elementu.  
2️⃣ Oddzielamy **HTML od JavaScriptu**, co jest lepszą praktyką.  
3️⃣ Możemy później **usunąć nasłuchiwanie** (`removeEventListener`).

---

# **📌 3. Pobieranie wartości z checkboxów**

## **🖥 Przykład 1: Checkboxy – jak sprawdzić, które są zaznaczone?**

```html
<!DOCTYPE html>
<html lang="pl">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Pobieranie wartości checkboxów</title>
  </head>
  <body>
    <h2>Wybierz swoje zainteresowania:</h2>

    <label><input type="checkbox" class="hobby" value="Sport" /> Sport</label>
    <label><input type="checkbox" class="hobby" value="Muzyka" /> Muzyka</label>
    <label><input type="checkbox" class="hobby" value="Gry" /> Gry</label>
    <label
      ><input type="checkbox" class="hobby" value="Podróże" /> Podróże</label
    >

    <button id="checkBtn">Sprawdź zaznaczone</button>

    <p id="output"></p>

    <script>
      document
        .getElementById("checkBtn")
        .addEventListener("click", function () {
          // Pobieramy wszystkie checkboxy
          let checkboxes = document.querySelectorAll(".hobby");

          // Tworzymy pustą tablicę na zaznaczone wartości
          let selected = [];

          // Przechodzimy przez każdy checkbox
          checkboxes.forEach((checkbox) => {
            if (checkbox.checked) {
              // Jeśli checkbox jest zaznaczony
              selected.push(checkbox.value);
            }
          });

          // Wyświetlamy wynik
          document.getElementById("output").textContent =
            "Twoje zainteresowania: " +
            (selected.length > 0 ? selected.join(", ") : "Nic nie wybrano");
        });
    </script>
  </body>
</html>
```

---

### **🔍 Wyjaśnienie kodu:**

**📌 Dlaczego używamy `forEach`?**

- Checkboxy są przechowywane jako `NodeList`, czyli lista elementów.
- `forEach` pozwala przejść przez każdy checkbox i sprawdzić jego `checked` (czy jest zaznaczony).

---

# **📌 4. Pobieranie wartości z radio buttonów**

## **🖥 Przykład 2: Jak sprawdzić, który radio button jest zaznaczony?**

```html
<!DOCTYPE html>
<html lang="pl">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Pobieranie wartości radio</title>
  </head>
  <body>
    <h2>Wybierz ulubiony kolor:</h2>

    <label><input type="radio" name="color" value="Czerwony" /> Czerwony</label>
    <label
      ><input type="radio" name="color" value="Niebieski" /> Niebieski</label
    >
    <label><input type="radio" name="color" value="Zielony" /> Zielony</label>

    <button id="radioBtn">Sprawdź wybór</button>

    <p id="radioOutput"></p>

    <script>
      document
        .getElementById("radioBtn")
        .addEventListener("click", function () {
          let radios = document.querySelectorAll('input[name="color"]');
          let selectedColor = "";

          radios.forEach((radio) => {
            if (radio.checked) {
              selectedColor = radio.value;
            }
          });

          document.getElementById("radioOutput").textContent =
            "Wybrano: " + (selectedColor || "Nic nie wybrano");
        });
    </script>
  </body>
</html>
```

---

# **📌 5. Manipulacja obrazem na podstawie wyboru użytkownika**

### **🎯 CSS Filters – jak działają?**

- **`blur(5px)`** – rozmycie
- **`invert(100%)`** – negatyw
- **`grayscale(100%)`** – skala szarości

---

## **🖥 Przykład 3: Zmiana efektu obrazu**

```html
<!DOCTYPE html>
<html lang="pl">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Efekty na obrazie</title>
  </head>
  <body>
    <h2>Wybierz efekt na obraz:</h2>

    <label><input type="radio" name="effect" value="blur" /> Rozmycie</label>
    <label><input type="radio" name="effect" value="negative" /> Negatyw</label>
    <label
      ><input type="radio" name="effect" value="grayscale" /> Skala
      szarości</label
    >
    <label><input type="radio" name="effect" value="none" /> Brak efektu</label>

    <button id="effectBtn">Zastosuj efekt</button>

    <br /><br />
    <img
      id="image"
      src="https://via.placeholder.com/300"
      alt="Obraz testowy"
      style="width: 300px;" />

    <script>
      document
        .getElementById("effectBtn")
        .addEventListener("click", function () {
          let radios = document.querySelectorAll('input[name="effect"]');
          let selectedEffect = "none";

          radios.forEach((radio) => {
            if (radio.checked) {
              selectedEffect = radio.value;
            }
          });

          let image = document.getElementById("image");

          let effects = {
            blur: "blur(5px)",
            negative: "invert(100%)",
            grayscale: "grayscale(100%)",
            none: "none",
          };

          image.style.filter = effects[selectedEffect];
        });
    </script>
  </body>
</html>
```

---

# **🎯 Podsumowanie**

✔ **`addEventListener`** służy do obsługi zdarzeń.  
✔ Pobieranie wartości **checkboxów** i **radio buttonów** wymaga **pętli**.  
✔ Możemy manipulować obrazem za pomocą **CSS filters**.

---

## Animacje w JavaScript

Animacje w JavaScript pozwalają na tworzenie dynamicznych efektów na stronach internetowych, które mogą poprawić doświadczenia użytkowników. Można je realizować na kilka sposobów.

### **Animacje CSS**

Jednym z najprostszych sposobów animacji jest użycie CSS z JavaScript, co pozwala na płynne efekty wizualne. Możemy zmieniać klasy elementów, aby aktywować animacje zdefiniowane w CSS.

#### Przykład:

```css
/* CSS */
.fade-in {
  opacity: 0;
  transition: opacity 1s ease-in-out;
}

.fade-in.visible {
  opacity: 1;
}
```

```javascript
// JavaScript
let div = document.getElementById("animowanyDiv");
div.classList.add("fade-in"); // dodanie klasy animacji

// Po krótkim czasie dodajemy klasę "visible" do aktywacji animacji
setTimeout(() => {
  div.classList.add("visible");
}, 100); // aktywacja po 100 ms
```

### **Użycie `requestAnimationFrame`**

Do bardziej złożonych animacji można użyć metody `requestAnimationFrame`, która pozwala na płynne animacje, synchronizując je z odświeżaniem ekranu.

#### Przykład:

```javascript
let div = document.getElementById("animowanyDiv");
let pozycja = 0;

function animacja() {
  pozycja += 2; // zmiana pozycji
  div.style.transform = `translateX(${pozycja}px)`; // przesunięcie elementu w prawo

  if (pozycja < 500) {
    // warunek zatrzymania animacji
    requestAnimationFrame(animacja); // ponowne wywołanie funkcji
  }
}

animacja(); // rozpoczęcie animacji
```

### **Użycie bibliotek**

W przypadku bardziej złożonych animacji warto rozważyć użycie bibliotek, takich jak:

- **GSAP (GreenSock Animation Platform)**: Bardzo wydajna biblioteka do animacji, umożliwiająca łatwe tworzenie skomplikowanych animacji.
- **Anime.js**: Lekka biblioteka do tworzenia animacji CSS i SVG.

#### Przykład użycia GSAP:

```javascript
// GSAP
gsap.to("#animowanyDiv", { x: 500, duration: 2 }); // przesunięcie elementu o 500px w poziomie w ciągu 2 sekund
```
