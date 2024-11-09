## **Kurs JavaScript - Kwalifikacja INF.03**

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

## Obiekty DOM (Document Object Model)

DOM (Document Object Model) to interfejs programowania aplikacji, który pozwala na dynamiczne manipulowanie strukturą dokumentu HTML lub XML. W JavaScript, DOM jest reprezentacją dokumentu jako hierarchii obiektów, co umożliwia programistom dostęp do jego zawartości i stylów, a także manipulowanie nimi.

### **Dostęp do elementów DOM**

Aby manipulować elementami na stronie, najpierw musimy uzyskać do nich dostęp. Najczęściej używane metody to:

- **`document.getElementById()`**: Znajduje element na podstawie jego unikalnego identyfikatora.

  ```javascript
  let naglowek = document.getElementById("mojNaglowek");
  ```

- **`document.getElementsByClassName()`**: Znajduje wszystkie elementy o danej klasie.

  ```javascript
  let elementy = document.getElementsByClassName("mojaKlasa");
  ```

- **`document.getElementsByTagName()`**: Znajduje wszystkie elementy o danej nazwie tagu.

  ```javascript
  let akapity = document.getElementsByTagName("p");
  ```

- **`document.querySelector()`**: Znajduje pierwszy element pasujący do selektora CSS.

  ```javascript
  let pierwszyDiv = document.querySelector("div");
  ```

- **`document.querySelectorAll()`**: Znajduje wszystkie elementy pasujące do selektora CSS.

  ```javascript
  let wszystkieDivy = document.querySelectorAll("div");
  ```

### **Manipulowanie elementami DOM**

Po uzyskaniu dostępu do elementów DOM, możemy zmieniać ich właściwości, atrybuty i style.

- **Zmiana tekstu**:

  ```javascript
  naglowek.textContent = "Nowy tekst nagłówka";
  ```

- **Zmiana atrybutów**:

  ```javascript
  naglowek.setAttribute("class", "nowaKlasa");
  ```

- **Zmiana stylów**:

  ```javascript
  naglowek.style.color = "blue"; // zmiana koloru tekstu na niebieski
  ```

- **Dodawanie nowych elementów**:

  ```javascript
  let nowyDiv = document.createElement("div");
  nowyDiv.textContent = "To jest nowy div";
  document.body.appendChild(nowyDiv); // dodanie nowego elementu do ciała dokumentu
  ```

- **Usuwanie elementów**:

  ```javascript
  let elementDoUsuniecia = document.getElementById("doUsuniecia");
  elementDoUsuniecia.remove(); // usunięcie elementu
  ```

### **Obsługa zdarzeń**

DOM pozwala również na reagowanie na zdarzenia, takie jak kliknięcia, najechanie myszą czy zmiany w formularzach.

- **Dodawanie zdarzeń**:

  ```javascript
  naglowek.addEventListener("click", function () {
    alert("Nagłówek został kliknięty!");
  });
  ```

- **Usuwanie zdarzeń**:

  ```javascript
  function obslugaKlikniecia() {
    alert("To się nie zdarzy!");
  }

  naglowek.addEventListener("click", obslugaKlikniecia);
  naglowek.removeEventListener("click", obslugaKlikniecia);
  ```

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