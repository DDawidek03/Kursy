## **1. Podstawy JavaScript**

### 1.1. **Czym jest JavaScript?**

JavaScript to język skryptowy używany do tworzenia interaktywnych elementów na stronach internetowych. Umożliwia dodawanie funkcjonalności po stronie klienta (czyli w przeglądarce użytkownika), takich jak reagowanie na zdarzenia, manipulacja elementami HTML i CSS oraz komunikacja z serwerami.

### 1.2. **Uruchamianie kodu JavaScript**

JavaScript można włączyć do kodu HTML w sekcji `<script>`:

```html
<!DOCTYPE html>
<html>
  <head>
    <title>Witaj w JavaScript</title>
  </head>
  <body>
    <h1>Prosta strona z JS</h1>
    <script>
      alert("Witaj! JavaScript działa.");
    </script>
  </body>
</html>
```

#### Pliki zewnętrzne:

Kod JavaScript można umieszczać w osobnym pliku `.js` i ładować go do strony HTML za pomocą tagu `<script>`:

```html
<script src="main.js"></script>
```

Plik `main.js`:

```javascript
console.log("JavaScript działa poprawnie.");
```

### 1.3. **Zmienne i stałe**

- **Zmienne** pozwalają przechowywać dane. Są deklarowane za pomocą słów kluczowych `let` i `var`:

```javascript
let name = "Jan";
var age = 25;
```

- **Stałe** (słowo kluczowe `const`) to zmienne, których wartości nie można zmienić:

```javascript
const pi = 3.14159;
```

---

## **2. Typy danych**

### 2.1. **Podstawowe typy danych**

JavaScript obsługuje następujące typy danych:

- **String** (ciągi znaków): `"tekst"`
- **Number** (liczby całkowite i zmiennoprzecinkowe): `5`, `3.14`
- **Boolean** (wartości logiczne): `true`, `false`
- **Array** (tablice): `[1, 2, 3]`
- **Object** (obiekty): `{name: "Jan", age: 25}`

Przykłady deklaracji zmiennych:

```javascript
let name = "Ala";
let age = 20;
let isStudent = true;
let grades = [5, 4, 3];
let person = { name: "Jan", age: 30 };
```

### 2.2. **Typowanie dynamiczne**

W JavaScript zmienne są typowane dynamicznie, co oznacza, że typ danych może się zmieniać:

```javascript
let x = 5; // x to liczba
x = "Jan"; // teraz x to ciąg znaków
```

---

## **3. Operatory i wyrażenia**

### 3.1. **Operatory arytmetyczne**

- `+` – dodawanie
- `-` – odejmowanie
- `*` – mnożenie
- `/` – dzielenie
- `%` – reszta z dzielenia (modulo)

Przykład:

```javascript
let sum = 10 + 5; // 15
let difference = 10 - 5; // 5
let product = 10 * 5; // 50
let quotient = 10 / 5; // 2
let remainder = 10 % 3; // 1
```

### 3.2. **Operatory przypisania**

- `=` – przypisanie wartości
- `+=`, `-=`, `*=`, `/=`, `%=` – przypisanie z operacją arytmetyczną:

```javascript
let a = 5;
a += 2; // a teraz wynosi 7 (5 + 2)
```

### 3.3. **Operatory porównania**

- `==` – porównanie wartości
- `===` – porównanie wartości i typu
- `!=` – różność wartości
- `!==` – różność wartości i typu
- `>`, `<`, `>=`, `<=` – operatory większe/mniejsze

Przykłady:

```javascript
let x = 5;
let y = "5";

console.log(x == y); // true (wartości są takie same)
console.log(x === y); // false (typy są różne)
```

### 3.4. **Operatory logiczne**

- `&&` (AND) – prawda, gdy oba warunki są prawdziwe
- `||` (OR) – prawda, gdy jeden z warunków jest prawdziwy
- `!` (NOT) – neguje wartość logiczną

Przykład:

```javascript
let isAdult = true;
let hasID = false;

if (isAdult && hasID) {
  console.log("Możesz wejść.");
} else {
  console.log("Nie masz uprawnień.");
}
```

---

## **4. Instrukcje warunkowe**

### 4.1. **Instrukcja `if`, `else if`, `else`**

```javascript
let age = 20;

if (age >= 18) {
  console.log("Jesteś pełnoletni.");
} else if (age >= 16) {
  console.log("Masz prawo jazdy na motorower.");
} else {
  console.log("Nie jesteś pełnoletni.");
}
```

### 4.2. **Instrukcja `switch`**

Używana, gdy mamy do porównania wiele wartości zmiennej.

```javascript
let color = "zielony";

switch (color) {
  case "czerwony":
    console.log("Kolor to czerwony");
    break;
  case "niebieski":
    console.log("Kolor to niebieski");
    break;
  default:
    console.log("Inny kolor");
}
```

---

## **5. Pętle**

### 5.1. **Pętla `for`**

Służy do iteracji po wartościach, np. tablicach.

```javascript
for (let i = 0; i < 5; i++) {
  console.log(i);
}
```

### 5.2. **Pętla `while` i `do...while`**

- **`while`** – pętla działa, dopóki warunek jest prawdziwy:

```javascript
let i = 0;
while (i < 5) {
  console.log(i);
  i++;
}
```

- **`do...while`** – pętla wykona się przynajmniej raz:

```javascript
let i = 0;
do {
  console.log(i);
  i++;
} while (i < 5);
```

---

### **Dokładna instrukcja o obiekcie DOM w JavaScript**

Obiektowy Model Dokumentu (DOM - Document Object Model) jest jedną z najważniejszych koncepcji w JavaScript, gdy pracujemy z dynamicznymi stronami internetowymi. Pozwala nam na interakcję i manipulację strukturą HTML dokumentu, takimi jak elementy, atrybuty, klasy i inne.

Poniżej znajdziesz szczegółowy przewodnik po pracy z DOM w JavaScript.

---

## **1. Czym jest DOM?**

DOM to reprezentacja struktury dokumentu HTML lub XML w postaci drzewa obiektów. Każdy element HTML (np. `div`, `p`, `img`) oraz atrybut stają się węzłami (nodes) w drzewie DOM. JavaScript może dynamicznie manipulować tymi węzłami, zmieniając ich treść, strukturę lub style.

### Przykład drzewa DOM dla prostego dokumentu HTML:

```html
<!DOCTYPE html>
<html>
  <head>
    <title>Przykład DOM</title>
  </head>
  <body>
    <h1>Witaj w DOM!</h1>
    <p>To jest akapit.</p>
  </body>
</html>
```

Drzewo DOM dla powyższego HTML wyglądałoby następująco:

```
- document
  - html
    - head
      - title
    - body
      - h1
      - p
```

## **2. Dostęp do DOM w JavaScript**

### 2.1. **Obiekt `document`**

Podstawowym obiektem, który reprezentuje dokument HTML, jest `document`. Umożliwia on dostęp do elementów strony i manipulację nimi.

### 2.2. **Podstawowe metody dostępu do elementów DOM**

JavaScript oferuje kilka metod do wyszukiwania elementów w DOM:

- **`getElementById()`** – Zwraca element o podanym identyfikatorze (ID):

  ```javascript
  let element = document.getElementById("mojeID");
  ```

- **`getElementsByClassName()`** – Zwraca wszystkie elementy o podanej klasie (jako kolekcję, nie tablicę):

  ```javascript
  let elements = document.getElementsByClassName("mojaKlasa");
  ```

- **`getElementsByTagName()`** – Zwraca wszystkie elementy o podanej nazwie tagu (np. wszystkie `div`):

  ```javascript
  let paragraphs = document.getElementsByTagName("p");
  ```

- **`querySelector()`** – Zwraca pierwszy element, który pasuje do selektora CSS (np. ID, klasa, tag):

  ```javascript
  let firstDiv = document.querySelector("div");
  let myDiv = document.querySelector("#mojeID");
  ```

- **`querySelectorAll()`** – Zwraca wszystkie elementy pasujące do selektora CSS (NodeList):

  ```javascript
  let allDivs = document.querySelectorAll("div");
  ```

---

## **3. Manipulacja elementami DOM**

Po uzyskaniu referencji do elementów DOM, możemy je dynamicznie modyfikować.

### 3.1. **Modyfikowanie zawartości HTML**

Aby zmienić wewnętrzny kod HTML elementu, używamy właściwości `innerHTML`:

```javascript
let element = document.getElementById("mojeID");
element.innerHTML = "<strong>Zmieniona treść</strong>";
```

### 3.2. **Modyfikowanie tekstu (bez HTML)**

Aby zmienić tylko tekst w elemencie, używamy właściwości `innerText` lub `textContent`:

```javascript
let element = document.querySelector("p");
element.innerText = "Zmieniony tekst akapitu";
```

- `innerText` – zwraca tekst widoczny dla użytkownika, uwzględniając stylowanie CSS.
- `textContent` – zwraca cały tekst, ignorując stylowanie CSS.

### 3.3. **Dodawanie elementów do DOM**

Aby dodać nowy element, musimy wykonać trzy kroki:

1. Stworzyć nowy element za pomocą `document.createElement()`.
2. Stworzyć zawartość tekstową za pomocą `document.createTextNode()`.
3. Dodać element do DOM za pomocą `appendChild()`.

Przykład:

```javascript
// 1. Tworzymy nowy element <p>
let newParagraph = document.createElement("p");

// 2. Tworzymy zawartość tekstową
let textNode = document.createTextNode("Nowy akapit dodany przez JS");

// 3. Dołączamy zawartość tekstową do nowego elementu <p>
newParagraph.appendChild(textNode);

// 4. Dodajemy <p> do body
document.body.appendChild(newParagraph);
```

### 3.4. **Usuwanie elementów z DOM**

Elementy można usunąć za pomocą metody `remove()`:

```javascript
let elementToRemove = document.getElementById("elementDoUsuniecia");
elementToRemove.remove();
```

Lub używając metody `removeChild()` w kontekście rodzica:

```javascript
let parentElement = document.getElementById("rodzic");
let childElement = document.getElementById("dziecko");
parentElement.removeChild(childElement);
```

---

## **4. Manipulacja atrybutami elementów DOM**

### 4.1. **Odczyt i zapis atrybutów**

Atrybuty HTML (np. `src`, `href`, `class`, `id`) mogą być odczytywane i modyfikowane za pomocą:

- `getAttribute()` – odczyt atrybutu.
- `setAttribute()` – ustawienie wartości atrybutu.
- `removeAttribute()` – usunięcie atrybutu.

Przykład:

```javascript
// Odczytujemy atrybut 'src' z obrazka
let image = document.querySelector("img");
let srcValue = image.getAttribute("src");

// Zmieniamy atrybut 'src'
image.setAttribute("src", "nowy_obrazek.jpg");

// Usuwamy atrybut
image.removeAttribute("alt");
```

### 4.2. **Manipulacja klasami CSS**

Możemy modyfikować klasy CSS elementów za pomocą właściwości `classList`.

- **Dodawanie klasy**: `element.classList.add("nazwaKlasy")`
- **Usuwanie klasy**: `element.classList.remove("nazwaKlasy")`
- **Przełączanie klasy (toggle)**: `element.classList.toggle("nazwaKlasy")`
- **Sprawdzanie, czy element ma klasę**: `element.classList.contains("nazwaKlasy")`

Przykład:

```javascript
let element = document.getElementById("mojDiv");

// Dodajemy klasę
element.classList.add("active");

// Usuwamy klasę
element.classList.remove("inactive");

// Przełączamy klasę (jeśli istnieje, to usuwa, jeśli nie – dodaje)
element.classList.toggle("hidden");

// Sprawdzamy, czy element ma klasę 'visible'
if (element.classList.contains("visible")) {
  console.log("Element jest widoczny");
}
```

---

## **5. Zdarzenia (Events) w DOM**

### 5.1. **Czym są zdarzenia?**

Zdarzenia to akcje wykonywane przez użytkownika, takie jak kliknięcie, przesunięcie myszki, wciśnięcie klawisza, zmiana wartości formularza itp. JavaScript pozwala reagować na te zdarzenia i wykonywać odpowiednie akcje.

### 5.2. **Dodawanie obsługi zdarzeń**

Aby przypisać akcję do zdarzenia, możemy użyć:

- **`addEventListener()`** – nowoczesny i preferowany sposób.
- **`onclick`**, `onmouseover` – starsze podejście.

Przykład z `addEventListener()`:

```javascript
let button = document.getElementById("myButton");

// Dodajemy zdarzenie kliknięcia
button.addEventListener("click", function () {
  alert("Przycisk został kliknięty!");
});
```

### 5.3. **Rodzaje popularnych zdarzeń**

- **`click`** – kliknięcie myszką.
- **`mouseover`** – najechanie myszką na element.
- **`mouseout`** – opuszczenie myszką elementu.
- **`keydown`** – naciśnięcie klawisza.
- **`submit`** – wysłanie formularza.
- **`change`** – zmiana wartości w polu formularza.

Przykład z obsługą zdarzenia formularza:

```javascript
let form = document.querySelector("form");

form.addEventListener("submit", function (event) {
  event.preventDefault(); // Zapobiegamy domyślnej akcji (wysłanie formularza)
  alert("Formularz został przesłany!");
});
```

---

## \*\*

6. Wydajność manipulacji DOM\*\*

### 6.1. **Fragmenty dokumentu (DocumentFragment)**

Przy dodawaniu wielu elementów do DOM, lepiej najpierw używać `DocumentFragment`, co jest bardziej wydajne, a potem dopiero dodać wszystko na raz do DOM.

```javascript
let fragment = document.createDocumentFragment();

for (let i = 0; i < 10; i++) {
  let newDiv = document.createElement("div");
  newDiv.textContent = "Div numer " + i;
  fragment.appendChild(newDiv);
}

// Dopiero teraz dodajemy wszystkie elementy do DOM
document.body.appendChild(fragment);
```

---

## **6. Funkcje**

### 6.1. **Deklaracja funkcji**

Funkcje to blok kodu, który można wielokrotnie wywoływać. Deklaracja funkcji:

```javascript
function greet(name) {
  return "Witaj, " + name + "!";
}

console.log(greet("Jan")); // Witaj, Jan!
```

### 6.2. **Funkcje anonimowe i strzałkowe**

- **Funkcja anonimowa** to funkcja bez nazwy:

```javascript
let greet = function (name) {
  return "Cześć, " + name;
};
```

- **Funkcja strzałkowa** (arrow function) ma uproszczoną składnię:

```javascript
let greet = (name) => "Cześć, " + name;
```

---

## **7. Tablice (Arrays)**

### 7.1. **Tworzenie tablic**

Tablice są strukturami danych, które mogą przechowywać wiele wartości:

```javascript
let fruits = ["jabłko", "banan", "truskawka"];
```

### 7.2. **Operacje na tablicach**

- **Dodawanie elementów**: `push()` dodaje element na końcu, a `unshift()` na początku tablicy.
- **Usuwanie elementów**: `pop()` usuwa ostatni element, a `shift()` usuwa pierwszy.

- **Dostęp do elementów**: indeksowanie zaczyna się od `0`:

```javascript
let firstFruit = fruits[0]; // "jabłko"
```

- **Pętla po tablicy**:

```javascript
for (let i = 0; i < fruits.length; i++) {
  console.log(fruits[i]);
}
```

---

## **8. Obiekty**

### 8.1. **Tworzenie obiektów**

Obiekt w JavaScript to zbiór klucz-wartość:

```javascript
let person = {
  name: "Jan",
  age: 30,
  greet: function () {
    console.log("Cześć! Mam na imię " + this.name);
  },
};

console.log(person.name); // Jan
person.greet(); // Cześć! Mam na imię Jan
```

### 8.2. **Dostęp do właściwości i metod**

Możemy odwołać się do właściwości za pomocą kropki (`.`) lub nawiasów kwadratowych (`[]`):

```javascript
console.log(person["age"]); // 30
```
