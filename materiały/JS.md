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

### **8. Pętle**

Pętle pozwalają na wykonywanie fragmentu kodu wielokrotnie, dopóki określony warunek jest spełniony. JavaScript oferuje kilka rodzajów pętli.

#### **Pętla `for`**

Pętla `for` jest najbardziej uniwersalną pętlą. Ma trzy elementy: inicjalizację, warunek i aktualizację. Każda iteracja wykonuje blok kodu, dopóki warunek jest spełniony.

```javascript
for (let i = 0; i < 5; i++) {
  console.log(i); // Wydrukuje: 0, 1, 2, 3, 4
}
```

#### **Pętla `while`**

Pętla `while` wykonuje się, dopóki warunek jest prawdziwy. Sprawdza warunek przed każdą iteracją.

```javascript
let i = 0;
while (i < 5) {
  console.log(i); // Wydrukuje: 0, 1, 2, 3, 4
  i++;
}
```

#### **Pętla `do-while`**

Pętla `do-while` jest podobna do `while`, ale warunek sprawdzany jest po wykonaniu bloku kodu, dzięki czemu pętla wykona się co najmniej raz.

```javascript
let i = 0;
do {
  console.log(i);
  i++;
} while (i < 5); // Wydrukuje: 0, 1, 2, 3, 4
```

#### **Przerywanie pętli (`break` i `continue`)**

- **`break`**: przerywa działanie pętli.

```javascript
for (let i = 0; i < 10; i++) {
  if (i === 5) break; // przerwie pętlę, gdy i = 5
  console.log(i);
}
```

- **`continue`**: przerywa bieżącą iterację i przechodzi do następnej.

```javascript
for (let i = 0; i < 5; i++) {
  if (i === 3) continue; // pominie iterację, gdy i = 3
  console.log(i);
}
```

---

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

### **10. Tablice (`arrays`)**

Tablice w JavaScript to struktury danych, które mogą przechowywać wiele wartości w jednej zmiennej. Każdy element w tablicy ma indeks, zaczynający się od 0.

#### **Tworzenie tablicy**

Tablice można tworzyć za pomocą nawiasów kwadratowych:

```javascript
let liczby = [1, 2, 3, 4, 5];
let imiona = ["Jan", "Anna", "Piotr"];
```

#### **Dostęp do elementów tablicy**

Aby uzyskać dostęp do konkretnego elementu tablicy, używamy indeksu elementu:

```javascript
let pierwszy = liczby[0]; // wartość: 1
let drugi = liczby[1]; // wartość: 2
```

#### **Dodawanie i usuwanie elementów tablicy**

- **Dodawanie elementów na końcu (`push`)**:
  ```javascript
  liczby.push(6); // tablica: [1, 2, 3, 4, 5, 6]
  ```
- **Usuwanie ostatniego elementu (`pop`)**:
  ```javascript
  liczby.pop(); // tablica: [1, 2, 3, 4, 5]
  ```

#### **Iteracja po tablicy**

Pętla `for` jest często używana do iteracji po elementach tablicy:

```javascript
for (let i = 0; i < liczby.length; i++) {
  console.log(liczby[i]);
}
```

#### **Metody tablicowe**

JavaScript dostarcza wiele przydatnych metod do pracy z tablicami:

- **`map()`**: Tworzy nową tablicę na podstawie istniejącej, wykonując operację na każdym elemencie.
  ```javascript
  let podwojone = liczby.map((x) => x * 2); // [2, 4, 6, 8, 10]
  ```
- **`filter()`**: Tworzy nową tablicę, zawierającą tylko elementy, które spełniają określony warunek.
  ```javascript
  let wiekszeNiz3 = liczby.filter((x) => x > 3); // [4, 5]
  ```

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
