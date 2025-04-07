## 📘 Algorytmy w Pythonie – instrukcja dla licealisty

### Co to jest algorytm?

Algorytm to ista instrukcji rozpisanych krok po kroku, służących do wykonania określonego zadania lub rozwiązania określonego problemu – np. posortować liczby, znaleźć największy element czy sprawdzić, czy liczba jest pierwsza.

## Złożoność obliczeniowa

### Definicja

**Złożoność obliczeniowa** algorytmu to dziedzina informatyki teoretycznej zajmująca się badaniem, jak rośnie liczba operacji wymaganych przez algorytm wraz ze wzrostem rozmiaru danych wejściowych. Najczęściej analizujemy:

- **Złożoność czasową** – ile kroków (operacji) wykona algorytm,
- **Złożoność pamięciową** – ile dodatkowej pamięci zajmuje algorytm.

---

## Notacja asymptotyczna – notacja dużego O (ang. Big-O notation)

Notacja dużego O opisuje **górne ograniczenie** liczby operacji wykonywanych przez algorytm w zależności od rozmiaru danych wejściowych `n`.

Umożliwia porównywanie algorytmów niezależnie od komputera, języka programowania czy optymalizacji kodu.

---

## 📊 Najczęstsze klasy złożoności czasowej

| Notacja    | Nazwa                 | Przykład działania                    | Opis                                |
| ---------- | --------------------- | ------------------------------------- | ----------------------------------- |
| O(1)       | Stała                 | Odczyt elementu z listy               | Liczba operacji nie zależy od `n`   |
| O(log n)   | Logarytmiczna         | Wyszukiwanie binarne                  | Liczba operacji rośnie bardzo wolno |
| O(n)       | Liniowa               | Przejście przez tablicę               | Jedna operacja dla każdego elementu |
| O(n log n) | Liniowo-logarytmiczna | Szybkie sortowanie (Quicksort)        | Efektywne algorytmy sortowania      |
| O(n²)      | Kwadratowa            | Sortowanie bąbelkowe                  | Dwie zagnieżdżone pętle             |
| O(2ⁿ)      | Wykładnicza           | Rozwiązywanie niektórych problemów NP | Bardzo wolna dla dużych `n`         |
| O(n!)      | Silnia                | Permutacje, brute-force               | Skrajnie nieefektywna złożoność     |

---

## Przykłady analizy

### 1. **Pętla liniowa**

```python
for i in range(n):
    print(i)
```

➡ Złożoność czasowa: **O(n)** – wykonuje `n` operacji.

---

### 2. **Zagnieżdżona pętla**

```python
for i in range(n):
    for j in range(n):
        print(i, j)
```

➡ Złożoność czasowa: **O(n²)** – `n * n` operacji.

---

### 3. **Wyszukiwanie binarne**

```python
def binary_search(lista, x):
    lewy = 0
    prawy = len(lista) - 1
    while lewy <= prawy:
        srodek = (lewy + prawy) // 2
        if lista[srodek] == x:
            return True
        elif lista[srodek] < x:
            lewy = srodek + 1
        else:
            prawy = srodek - 1
    return False
```

➡ Złożoność czasowa: **O(log n)** – przy każdym kroku zakres wyszukiwania dzieli się przez 2.

---

### 4. **Obliczanie sumy z wykorzystaniem wzoru**

```python
def suma(n):
    return n * (n + 1) // 2
```

➡ Złożoność czasowa: **O(1)** – niezależna od `n`.

---

## Złożoność pamięciowa

Podobnie jak czasowa, złożoność pamięciowa określa **ile dodatkowej pamięci** (np. tablic, zmiennych, struktur danych) wymaga algorytm. Zwykle oznacza się ją również jako O(f(n)).

### Przykłady:

- Przechowywanie jednej zmiennej: **O(1)**
- Tworzenie tablicy rozmiaru `n`: **O(n)**
- Tablica dwuwymiarowa `n x n`: **O(n²)**

---

## Dlaczego to ważne?

- Dzięki analizie złożoności możemy **przewidzieć efektywność algorytmu**.
- Pozwala nam wybrać najlepszy algorytm dla dużych zbiorów danych.
- Ma kluczowe znaczenie w projektowaniu wydajnych programów, systemów, aplikacji.

---

## **1. Sortowanie Bąbelkowe (Bubble Sort)**

### **Działanie**

Algorytm wielokrotnie przechodzi przez listę, za każdym razem „bąbelkując” największy element na koniec. W każdej iteracji porównuje sąsiednie elementy i zamienia je, jeśli są w złej kolejności.

### **Kod**

```python
def bubble_sort(arr):
    """
    Sortuje listę za pomocą algorytmu bąbelkowego.
    :param arr: Lista elementów do posortowania
    :return: Posortowana lista
    """
    n = len(arr)
    for i in range(n):  # Powtórz dla każdego elementu na liście
        swapped = False  # Flaga do sprawdzenia, czy była zamiana
        for j in range(0, n - i - 1):  # Ograniczamy sprawdzanie do niesortowanej części
            if arr[j] > arr[j + 1]:  # Jeśli element jest większy od następnego
                arr[j], arr[j + 1] = arr[j + 1], arr[j]  # Zamień miejscami
                swapped = True
        if not swapped:  # Jeśli nie było zamiany, lista jest już posortowana
            break
    return arr

# Testowanie
data = [64, 34, 25, 12, 22, 11, 90]
print("Przed sortowaniem:", data)
sorted_data = bubble_sort(data)
print("Po sortowaniu:", sorted_data)
```

---

## **2. Sortowanie przez Wstawianie (Insertion Sort)**

### **Działanie**

Każdy element jest wstawiany do odpowiedniego miejsca w już posortowanej części listy, przesuwając większe elementy w prawo.

### **Kod z komentarzami**

```python
def insertion_sort(arr):
    """
    Sortuje listę za pomocą algorytmu przez wstawianie.
    :param arr: Lista elementów do posortowania
    :return: Posortowana lista
    """
    for i in range(1, len(arr)):  # Zaczynamy od drugiego elementu
        key = arr[i]  # Element, który będziemy wstawiać
        j = i - 1
        # Przesuwamy większe elementy w prawo
        while j >= 0 and arr[j] > key:
            arr[j + 1] = arr[j]
            j -= 1
        # Wstawiamy klucz w odpowiednie miejsce
        arr[j + 1] = key
    return arr

# Testowanie
data = [12, 11, 13, 5, 6]
print("Przed sortowaniem:", data)
sorted_data = insertion_sort(data)
print("Po sortowaniu:", sorted_data)
```

---

## **3. Sortowanie Szybkie (Quick Sort)**

### **Działanie**

Quick Sort wybiera element pivot i dzieli listę na dwie części:

- elementy mniejsze od pivot,
- elementy większe od pivot.  
  Rekurencyjnie sortuje te części i scala wynik.

### **Kod z komentarzami**

```python
def quick_sort(arr):
    """
    Sortuje listę za pomocą algorytmu Quick Sort.
    :param arr: Lista elementów do posortowania
    :return: Posortowana lista
    """
    if len(arr) <= 1:  # Jeśli lista ma 0 lub 1 element, jest już posortowana
        return arr
    pivot = arr[len(arr) // 2]  # Wybieramy pivot (np. środkowy element)
    less = [x for x in arr if x < pivot]  # Mniejsze elementy
    equal = [x for x in arr if x == pivot]  # Elementy równe pivotowi
    greater = [x for x in arr if x > pivot]  # Większe elementy
    # Rekurencyjnie sortujemy mniejsze i większe części, a następnie łączymy
    return quick_sort(less) + equal + quick_sort(greater)

# Testowanie
data = [10, 7, 8, 9, 1, 5]
print("Przed sortowaniem:", data)
sorted_data = quick_sort(data)
print("Po sortowaniu:", sorted_data)
```

---

## **4. Sortowanie przez Scalanie (Merge Sort)**

### **Działanie**

Merge Sort dzieli listę na pół, sortuje każdą część rekurencyjnie, a następnie scala je w jedną posortowaną listę.

### **Kod z komentarzami**

```python
def merge_sort(arr):
    """
    Sortuje listę za pomocą algorytmu Merge Sort.
    :param arr: Lista elementów do posortowania
    :return: Posortowana lista
    """
    if len(arr) <= 1:  # Lista z jednym elementem jest już posortowana
        return arr
    mid = len(arr) // 2  # Punkt podziału listy
    left = merge_sort(arr[:mid])  # Rekurencyjne sortowanie lewej części
    right = merge_sort(arr[mid:])  # Rekurencyjne sortowanie prawej części
    return merge(left, right)

def merge(left, right):
    """
    Scala dwie posortowane listy w jedną.
    :param left: Lewa posortowana lista
    :param right: Prawa posortowana lista
    :return: Scalona i posortowana lista
    """
    result = []
    i = j = 0
    # Porównujemy elementy i dodajemy mniejsze do wynikowej listy
    while i < len(left) and j < len(right):
        if left[i] <= right[j]:
            result.append(left[i])
            i += 1
        else:
            result.append(right[j])
            j += 1
    # Dodajemy pozostałe elementy
    result.extend(left[i:])
    result.extend(right[j:])
    return result

# Testowanie
data = [38, 27, 43, 3, 9, 82, 10]
print("Przed sortowaniem:", data)
sorted_data = merge_sort(data)
print("Po sortowaniu:", sorted_data)
```

---

## **5. Sortowanie Kubełkowe (Bucket Sort)**

### **Działanie**

Dzielimy dane na „kubełki” według wartości (np. przedziałów liczbowych), sortujemy każdy kubełek osobno, a następnie scalamy.

### **Kod z komentarzami**

```python
def bucket_sort(arr):
    """
    Sortuje liczby rzeczywiste z zakresu [0, 1) za pomocą algorytmu Bucket Sort.
    :param arr: Lista liczb do posortowania
    :return: Posortowana lista
    """
    bucket_count = len(arr)  # Liczba kubełków
    buckets = [[] for _ in range(bucket_count)]  # Tworzymy kubełki

    # Rozdzielamy elementy na kubełki
    for num in arr:
        index = int(num * bucket_count)  # Obliczamy indeks kubełka
        buckets[index].append(num)

    # Sortujemy każdy kubełek
    for bucket in buckets:
        bucket.sort()

    # Scalanie posortowanych kubełków
    sorted_arr = []
    for bucket in buckets:
        sorted_arr.extend(bucket)
    return sorted_arr

# Testowanie
data = [0.78, 0.17, 0.39, 0.26, 0.72, 0.94, 0.21, 0.12, 0.23, 0.68]
print("Przed sortowaniem:", data)
sorted_data = bucket_sort(data)
print("Po sortowaniu:", sorted_data)
```

---

### Porównanie algorytmów

| **Algorytm**   | **Złożoność czasowa (średnia)** | **Złożoność czasowa (najgorsza)** | **Stabilność** |
| -------------- | ------------------------------- | --------------------------------- | -------------- |
| Bubble Sort    | O(n²)                           | O(n²)                             | Tak            |
| Insertion Sort | O(n²)                           | O(n²)                             | Tak            |
| Quick Sort     | O(n log n)                      | O(n²)                             | Nie            |
| Merge Sort     | O(n log n)                      | O(n log n)                        | Tak            |
| Bucket Sort    | O(n + k)                        | O(n²)                             | Tak            |

# Kod obiektowy (z funkcjami i klasami):

```python
# Klasa dla figury geometrycznej
class Shape:
    def calculate_area(self):
        raise NotImplementedError("Ta metoda powinna być zaimplementowana w klasie potomnej")

# Klasa dla prostokąta dziedzicząca po Shape
class Rectangle(Shape):
    def __init__(self, width, height):
        self.width = width
        self.height = height

    def calculate_area(self):
        return self.width * self.height

    def display_area(self):
        print(f"Pole prostokąta o szerokości {self.width} i wysokości {self.height} wynosi {self.calculate_area()}.")

# Klasa dla trójkąta dziedzicząca po Shape
class Triangle(Shape):
    def __init__(self, base, height):
        self.base = base
        self.height = height

    def calculate_area(self):
        return 0.5 * self.base * self.height

    def display_area(self):
        print(f"Pole trójkąta o podstawie {self.base} i wysokości {self.height} wynosi {self.calculate_area()}.")

# Tworzenie obiektów i obliczanie pól
rectangle = Rectangle(5, 10)
rectangle.display_area()

triangle = Triangle(6, 7)
triangle.display_area()
```

**Opis kodu obiektowego:**

1. **Dziedziczenie:** Klasa `Shape` jest klasą bazową, z której dziedziczą `Rectangle` i `Triangle`.
2. **Polimorfizm:** Każda klasa potomna implementuje swoją wersję metody `calculate_area`.
3. **Encapsulation:** Dane (np. szerokość, wysokość) są przechowywane wewnątrz obiektu i dostępne tylko przez metody klasy.
4. **Reużywalność:** Możesz łatwo dodać nowe figury geometryczne, np. klasę dla koła, implementując jedynie nową metodę `calculate_area`.

---

### Kod proceduralny (bez funkcji i obiektowości):

```python
# Obliczanie pola prostokąta
def calculate_rectangle_area(width, height):
    return width * height

def display_rectangle_area(width, height):
    area = calculate_rectangle_area(width, height)
    print(f"Pole prostokąta o szerokości {width} i wysokości {height} wynosi {area}.")

# Obliczanie pola trójkąta
def calculate_triangle_area(base, height):
    return 0.5 * base * height

def display_triangle_area(base, height):
    area = calculate_triangle_area(base, height)
    print(f"Pole trójkąta o podstawie {base} i wysokości {height} wynosi {area}.")

# Wywołanie funkcji
display_rectangle_area(5, 10)
display_triangle_area(6, 7)
```

**Opis kodu proceduralnego:**

1. Wszystkie operacje są rozdzielone na niezależne funkcje.
2. Brak klas — każdy zestaw danych (np. szerokość i wysokość) jest przekazywany do funkcji jako argumenty.
3. W przypadku potrzeby dodania nowej figury geometrycznej (np. koła), konieczne jest dodanie nowych funkcji, np. `calculate_circle_area`.

---

### Porównanie:

#### Kod obiektowy:

1. **Rozbudowa projektu:**
   Dodanie nowej figury geometrycznej (np. koła) wymaga jedynie stworzenia nowej klasy, co nie wpływa na istniejący kod.

   ```python
   class Circle(Shape):
       def __init__(self, radius):
           self.radius = radius

       def calculate_area(self):
           return 3.14159 * self.radius**2

       def display_area(self):
           print(f"Pole koła o promieniu {self.radius} wynosi {self.calculate_area()}.")
   ```

2. **Zastosowanie w dużych projektach:**
   Dzięki polimorfizmowi można używać listy różnych figur i obliczać ich pola bez znajomości szczegółów implementacji:

   ```python
   shapes = [Rectangle(5, 10), Triangle(6, 7), Circle(3)]
   for shape in shapes:
       shape.display_area()
   ```

#### Kod proceduralny:

1. **Rozbudowa projektu:**
   Dodanie nowej figury wymaga nowych funkcji, np. `calculate_circle_area`, co zwiększa ryzyko błędów i powtarzalności kodu.

   ```python
   def calculate_circle_area(radius):
       return 3.14159 * radius**2

   def display_circle_area(radius):
       area = calculate_circle_area(radius)
       print(f"Pole koła o promieniu {radius} wynosi {area}.")
   ```

2. **Trudności w zarządzaniu:**
   Przy większej liczbie funkcji i danych (np. listach figur geometrycznych) kod staje się mniej czytelny i trudniejszy do utrzymania.

---

### Wnioski:

| **Cecha**                            | **Kod obiektowy**                                                   | **Kod proceduralny**                                       |
| ------------------------------------ | ------------------------------------------------------------------- | ---------------------------------------------------------- |
| **Zastosowanie w dużych projektach** | Łatwo zarządzać, rozbudowywać i dodawać nowe elementy               | Trudności w organizacji przy skomplikowanych projektach    |
| **Reużywalność kodu**                | Można wielokrotnie używać klas i metod                              | Kod jest mniej reużywalny                                  |
| **Rozdzielenie odpowiedzialności**   | Dane i logika przetwarzania są związane z obiektami (encapsulation) | Dane są oddzielone od logiki, co utrudnia zarządzanie      |
| **Rozbudowa**                        | Wystarczy dodać nową klasę z wymaganymi metodami                    | Konieczne dodawanie nowych funkcji i testowanie integracji |
| **Czytelność**                       | Bardziej czytelny w dużych projektach                               | Może być prostszy w małych zadaniach                       |
