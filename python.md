# 🐍 Kurs Python

## 📄 Spis Treści

- 📖 [Wprowadzenie](#wprowadzenie)
- 🔢 [Typy Danych](#typy-danych)
- 🔁 [Struktury Kontrolne](#struktury-kontrolne)
  - ⛓️‍💥 [Łańcuchy Znaków](#łańcuchy-znaków)
  - 📜 [Instrukcje Warunkowe](#instrukcje-warunkowe)
  - 🔄 [Pętle](#pętle)
    - [Petla For](#petla-for)
    - [Petla While](#petla-while)
  - 📋 [Listy i słowniki](#listy-i-słowniki)
- 📦 [Moduły i Pakiety](#moduły-i-pakiety)
- 🗃️ [Praca z Plikami](#praca-z-plikami)
- 🧰 [Funkcje](#funkcje)
- 🚀 [Programowanie Obiektowe](#programowanie-obiektowe)
- 📊 [Matplotlib](#matplotlib)
- 🖼️ [Tkinter](#tkinter)
- 🐼 [Biblioteka Pandas](#biblioteka-pandas)
- 🔍 [Debugowanie i Testowanie](#debugowanie-i-testowanie)

## Wprowadzenie

Python to wszechstronny i popularny język programowania, znany ze swojej prostoty i czytelności. Umożliwia szybkie i efektywne tworzenie aplikacji, od skryptów automatyzujących codzienne zadania po złożone systemy i aplikacje webowe. Python jest językiem wysokiego poziomu, co oznacza, że skupia się na czytelności i prostocie składni, co ułatwia programowanie i zrozumienie kodu. Język Python ma bogatą bibliotekę standardową, która zawiera wiele gotowych modułów i funkcji.

## Typy Danych

Python jest dynamicznie typowanym językiem, co oznacza, że typ zmiennej jest określany automatycznie w czasie wykonywania programu. Oto tabela przedstawiająca niektóre z najpopularniejszych typów danych w Pythonie:

| Typ Danych  | Opis                                                                            | Przykład                                       |
| ----------- | ------------------------------------------------------------------------------- | ---------------------------------------------- |
| `int`       | Reprezentuje liczby całkowite.                                                  | `x = 42`                                       |
| `float`     | Reprezentuje liczby zmiennoprzecinkowe.                                         | `pi = 3.14`                                    |
| `str`       | Reprezentuje ciągi znaków.                                                      | `message = "Hello, World!"`                    |
| `bool`      | Reprezentuje wartości logiczne (TRUE/FALSE).                                    | `is_true = True`                               |
| `list`      | Reprezentuje uporządkowaną kolekcję elementów.                                  | `numbers = [1, 2, 3]`                          |
| `tuple`     | Reprezentuje uporządkowaną kolekcję elementów, które nie mogą być modyfikowane. | `coordinates = (1, 2, 3)`                      |
| `dict`      | Reprezentuje kolekcję par klucz-wartość.                                        | `person = {"name": "John", "age": 30}`         |
| `set`       | Reprezentuje kolekcję unikalnych elementów.                                     | `unique_numbers = {1, 2, 3}`                   |
| `datetime`  | Reprezentuje datę i czas.                                                       | `current_time = datetime.datetime(2022, 1, 1)` |
| `bytes`     | Reprezentuje sekwencję bajtów.                                                  | `data = b"Hello"`                              |
| `bytearray` | Reprezentuje modyfikowalną sekwencję bajtów.                                    | `mutable_data = bytearray(b"Hello")`           |
| `None`      | Reprezentuje brak wartości.                                                     | `value = None`                                 |
| `complex`   | Reprezentuje liczby zespolone.                                                  | `z = 3 + 4j`                                   |

### **Konwencje nazewnictwa zmiennych**

W Pythonie obowiązują pewne zasady i konwencje nazewnictwa zmiennych:

- Zmienne mogą zaczynać się od litery lub podkreślenia (\_), ale nie od cyfry.
- Mogą zawierać litery, cyfry i podkreślenia.
- Python rozróżnia wielkość liter, więc name i Name to dwie różne zmienne.
- Stosowanie konwencji snake_case do nazewnictwa zmiennych (np. user_name, total_amount).

Tworzenie zmiennej w języku Python zaczyna się od podania nazwy zmiennej, po której następuje znak równości = oraz przypisana wartość.

```python
zmienna_nazwa = 1
```

Opcjonalnie, na początku można dodać nazwę typu danych, aby kod był bardziej przejrzysty i czytelny

```python
int zmienna_nazwa = 1
```

## Struktury Kontrolne

Struktury kontrolne w Pythonie pozwalają na sterowanie przepływem wykonania programu. Umożliwiają one podejmowanie decyzji, powtarzanie bloków kodu i wykonywanie różnych operacji w zależności od określonych warunków.

## Łańcuchy Znaków

Łańcuchy znaków, zwane stringami, są jednym z podstawowych typów danych w Pythonie. To sekwencje znaków znajdujące się między
cudzysłowami pojedynczymi lub podwójnymi. Łańcuch znaków to układ występujących po sobie
znaków. Niekoniecznie musi być to układ liter.

### Funkcje Łańcuchów Znaków

- 🖨️ **`print()`** - wyświetla wynik na ekranie.

```python
print("Witaj, świecie!")  # Output: Witaj, świecie!
```

- 📏 **`len()`** - zwraca długość łańcucha.

```python
print(len("Python"))  # Output: 6
```

- 🔢 **`count()`** - zwraca liczbę wystąpień podłańcucha w łańcuchu.

```python
text = "banana"
print(text.count("a"))  # Output: 3
```

- 🚀 **`max()`** - zwraca największy element w łańcuchu (alfabetycznie).

```python
text = "banana"
print(max(text))  # Output: n
```

- ➕ **`append()`** - dodaje element na końcu listy (nie dotyczy łańcuchów, tylko list).

```python
my_list = [1, 2, 3]
my_list.append(4)
print(my_list)  # Output: [1, 2, 3, 4]
```

- 🔡 **`lower()`** - Zmienia wszytskie duze litery na małe w stringu

```python
zmienna = "TO JEST NAPIS"
print(zmeinna.lower()) #to jest napis
```

- 🔠 **`upper()`** - Zmienia wszytskie małe litery na duze w stringu

```python
zmienna = "to jest napis"
print(zmeinna.upper()) #TO JEST NAPIS
```

- 🔁 **`swapcase()`** - Odwraca rodzaj kazdej litery - małe na duze, duze na małe

```python
zmienna = "to JEST napis PODSTAWOWY"
print(zmeinna.swapcase()) #TO jest NAPIS podstawowy
```

- **`capitalize()`** - Zmienia pierwszą literę w ciągu na dużą

```python
zmienna1 = "to jest napis podstawowy"
print(zmienna1.capitalize()) #To jest napis podstawowy
```

- **`split()`** - używana do dzielenia łańcucha znaków (stringa) na mniejsze części, zazwyczaj według określonego separatora

```python
# Bez argumentów
text = "To jest przykładowe zdanie"
words = text.split()
print(words)  # Output: ['To', 'jest', 'przykładowe', 'zdanie']

# Z określonym separatorem
text = "jabłko,banan,gruszka"
fruits = text.split(',')
print(fruits)  # Output: ['jabłko', 'banan', 'gruszka']

```

- **`title()`** Zwraca string – tytuł, w którym wszystkie wyrazy zaczynają się dużą literą, a reszta jest małymi lub są to znaki nieliterowe

```python
zmienna1 = "To jest napis podstawowy"
print(zmienna1.title()) #To Jest Napis Podstawowy
```

- **`join(seq)`** - Łączenie (konkatenacja) wyrazów w napisie seq w jeden napis, według separatora/stringu na jakim wywołujemy metodę. W przykładzie separatorem jest #

```python
lista1=["1","2","3","4","5"]
zmienna2 = "#".join(lista1)
print(zmienna2) #1#2#3#4#5

#Ciekawostka: Można nie ustawiać żadnego separatora i uzyskać ciągłość zapisu:

lista1=["1","2","3","4","5"]
zmienna2 = "".join(lista1)
print(zmienna2) 12345
```

- **`lstrip()`** - Usuwa białe znaki z początku napisu

```python
zmienna1="   to jest napis podstawowy"
print(zmienna1.lstrip()) #to jest napis podstawowy
```

- **`rstrip()`** - Usuwa białe znaki z końca napisu

```python
zmienna1="to jest napis podstawowy     "
print(zmienna1.rstrip()) #to jest napis podstawowy
```

- **`strip()`** - Usuwa białe znaki z początku oraz końca napisu

```python
zmienna1="     to jest napis podstawowy     "
print(zmienna1.rstrip()) #to jest napis podstawowy
```

- **`replace(old,new)`** - Zamienia wszystkie wystąpienia na wskazany. ,,Jest mozliwość dodania parametru max, mający na celu wskazanie ilości zamienionych ciagów znaków''

```python
zmienna = "Michał Ola Kuba Wiktoria Kacper"

zmiana = zmienna.replace("Michał", "Paweł")

print(zmiana) #Paweł Ola Kuba Wiktoria Kacper

zmienna2 = "Michał Ola Kuba Ola Kacper Ola"

zmiana2 = zmienna.replace("Ola", "Wiktoria", 2)

print(zmiana2) #Michał Wiktoria Kuba Wiktoria Kacper Ola
```

- **`len(string)`** - Zwraca długość ciągu znaków

```python
zmienna = "To jest napis"

print(len(zmienna)) #13 znaki specjalne są liczone
```

- **`count(str,start,end)`** - Zlicza ilość wystąpień w ciagu znaków, zaczyna się od indeksu start a konczy sie indeksem end

```python
zmienna = "Michał Ola Kuba Ola Kacper Ola"
print(zmienna.count("Ola",0,28)) #2
```

- **find(str,start,end)** - zwraca ilość wystąpień danego stringa w ciagu znaków, zwraca -1 jesli nie znajdzie stringa w łańcuchu

```python
zmienna = "Michał ma syna o imieniu Michał"
print(zmienna.find("Michał",0,len(zmienna))) #0
```

### Formatowanie ciągów znaków

- Występują trzy podstawowe sposoby formatowania łańcuchów znaków:
  - Łączenie danych za pomocą przecinka
    ```python
    print("ten napis nie posiada zmiennych")
    print("ten napis posiada zmienna x, która wynosi, x")
    ```
- Łączenie danych za pomocą funkcji format:

```python
print(" Liczba {} oraz liczba {} to liczby naturalne "
.format(4,5))
#Liczba 4 oraz liczba 5 to liczby naturalne
```

- Łączenie danych za pomocą f-stringa:

Aby utworzyć f-string, wystarczy dodać literę f przed cudzysłowem otwierającym ciąg znaków. Wewnątrz takiego ciągu możemy umieszczać wyrażenia w nawiasach klamrowych `{}`

```python
x=3
y=5
print(f"Liczby {x} oraz {y} to liczby naturalne")
#Liczby 3 oraz 5 to liczby naturalne
```

### Indeksowanie Łańcucha Znaków

Łańcuch znaków indeksuje się na dwa sposoby:

- `Od lewej strony do prawej`
- Od prawej strony do lewej

| Łańcuch znaków | P   | Y   | T   | H   | O   | N   |
| -------------- | --- | --- | --- | --- | --- | --- |
| `Indesks`      | `0` | `1` | `2` | `3` | `4` | `5` |
| Indesks        | -5  | -4  | -3  | -2  | -1  | 0   |

### Slicing string

To proces polegający na wykonaniu wycinka z łańcucha znaków.
Wycinek tekstu nazywany jest podłańcuchem lub substringkiem

`S[Start:Stop:Step]`

Pozycje `Start` i `Stop` są obowiązkowe, natomiast pozycja `Step` jest opcjonalna.

```python
zmienna1= "abcdefghijk" <start:stop) <0;4)

print(zmienna1[0:4]) #abcd
print(zmienna1[1:]) #bcdefghijk
print(zmienna1[:5]) #abcde
print(zmienna1[:]) #abcdefghijk
print(zmienna1[::-1]) #kjihgfedcba
print(zmienna1[-5:-2]) #ghi
print(zmienna1[-10:-4:2])# bdf
print(zmienna1[-4:-10:-2]) #hfd
```

## Instrukcje Warunkowe

Instrukcje warunkowe pozwalają na wykonywanie różnych bloków kodu w zależności od warunków logicznych.

## Operatory logiczne i porównania

Operatory logiczne i porównania są używane do tworzenia warunków w instrukcjach warunkowych.

| Operator | Nazwa              | Przykład         | Opis                                                  |
| -------- | ------------------ | ---------------- | ----------------------------------------------------- |
| ==       | Równość            | x == y           | Sprawdza, czy x jest równe y                          |
| !=       | Nierówność         | x != y           | Sprawdza, czy x nie jest równe y                      |
| >        | Większe            | x > y            | Sprawdza, czy x jest większe od y                     |
| <        | Mniejsze           | x < y            | Sprawdza, czy x jest mniejsze od y                    |
| >=       | Większe lub równe  | x >= y           | Sprawdza, czy x jest większe lub równe y              |
| <=       | Mniejsze lub równe | x <= y           | Sprawdza, czy x jest mniejsze lub równe y             |
| and      | I                  | x > 0 and x < 10 | Sprawdza, czy oba warunki są prawdziwe                |
| or       | Lub                | x < 0 or x > 10  | Sprawdza, czy którykolwiek warunek jest prawdziwy     |
| not      | Negacja            | not x == y       | Neguje warunek, zmieniając True na False i vice versa |

### Instrukcja `if`:

Instrukcja `if` sprawdza, czy warunek jest prawdziwy, i jeśli tak, wykonuje blok kodu.

```python
x = 10

if x > 5:
    print(" x jest wieksze od 5")
```

### Instrukcja `if else`

Instrukcja `if`...`else` pozwala na wykonanie alternatywnego bloku kodu, jeśli warunek jest fałszywy.

```python
x = 3

if x > 5:
    print(" x jest wieksze od 5")
else:
    print("x jest mniejsze lub równe 5")
```

### Instrukcja `if elif else`

Instrukcja `if`...`elif`...`else` pozwala na sprawdzenie wielu warunków po kolei.

```python
x = 5
if x > 5:
    print("x jest większe od 5")
elif x == 5:
    print("x jest równe 5")
else:
    print("x jest mniejsze od 5")
```

### Instrukcja `match case`

Instrukcja **`match case`** w Pythonie, wprowadzona w Pythonie 3.10, służy do dopasowywania wzorców. Pozwala ona na dopasowywanie wzorców do wartości, zapewniając bardziej czytelny.

```python
dzien = str(input("Poodaj dzień tygodnia"))
match dzien:
    case 1:
        print("Poniedziałek")
    case 2:
        print("Wtorek")
    case 3:
        print("Środa")
    case 4:
        print("Czwartek")
    case 5:
        print("Piątek")
    case 6:
        print("Sobota")
    case 7:
        print("Niedziela")
    case _:
        print("Nieznany dzień tygodnia")
```

Podkreślenie `_` jest używane jako znak wieloznaczny, który pasuje do dowolnej wartości nie dopasowanej przez wcześniejsze przypadki.

Isnieje równiez uzycie operatorów logicznych:

```python
day = input("Podaj dzien tygodnia")

match day:
    case "Sobota" | "Niedziela":
        print("Weekend")

    case "Poniedziałek" | "Wtorek" | "Środa" | "Czwartek" | "Piątek":
        print("Dzień roboczy")

    case _:
        print("Nieprawidłowy dzień")
```

### Hybryda if-match case

Brak znaku logicznego oznacza operację logiczną AND

```python
numer1 = int(input("Pierwsza liczba: "))
numer2 = int(input("Druga liczba: "))

match numer1:
    case 1 if numer2 > 20:
        print(f"Pierwsza liczba to {numer1}, a druga liczba jest większa od 20")
    case 2 if numer2 == 20:
        print(f"Pierwsza liczba to {numer1}, a druga liczba jest równa 20")
    case 3 if numer2 < 20:
        print(f"Pierwsza liczba to {numer1}, a druga liczba jest mniejsza od 20")
    case _:
        print("Niepasujący przypadek")
```

## Pętle

Pętle w Pythonie są używane do wielokrotnego wykonywania bloku kodu. Pozwalają one na efektywne przetwarzanie danych, powtarzanie operacji oraz automatyzację zadań

### Petla **`For`**

Co to są obiekty iterowalne (iterable):

W Pythonie, obiekty sekwencyjne to obiekty, które przechowują sekwencje elementów wokreślonym porządku. Do najczęściej używanych obiektów sekwencyjnych w Pythonie należą:

1. **`Listy (lists)`**: listy to obiekty sekwencyjne, które przechowują kolekcje wartości w określonym porządku. Listy mogą przechowywać wartości różnego typu i są mutowalne, co oznacza, że ich wartości mogą być zmieniane po utworzeniu.

2. **`Krotki (tuples)`**: krotki to obiekty sekwencyjne, które są bardzo podobne do list, z tą różnicą, że są niezmienne (immutable), co oznacza, że po utworzeniu ich wartości nie mogą być zmieniane.

3. **`Ciągi znaków (strings)`** : ciągi znaków to obiekty sekwencyjne, które przechowują sekwencje znaków w określonym porządku. Ciągi znaków są niezmienne (immutable).

4. **`Bufory (bytearrays)`** : bufory to mutowalne obiekty sekwencyjne, które przechowują sekwencje bajtów w określonym porządku.

5. **`Zakresy (ranges)`** : zakresy to obiekty sekwencyjne, które przechowują sekwencje liczb całkowitych w określonym porządku.

- Petla `for`: listy

```python
list = [1,2,3,4,5,]
for elment in list:
    print(element, end=" ") #1 2 3 4 5
    if elment == 2:
        print(f"znaleziono element o numerze:  {element}")


tab = [2,-1,3,-2,9]
for i in tab:
    if i % 2 == 0: # tak sprawdzamy podzielność przez konkretne liczby
        continue
    print(i**0.5)
```

- Petla `for`: łańcuchy znaków

```python
for char in "SQL":
    if char.lower() == "q":
        print("W słowie znajduje się 'q'")
```

- Pętla for - zakresy

```python
for i in range(1, 10):
    print(i, end=" ")

for x in range(10, 1, -1):
    if x == 5:
        break
    print(x)


# !! Zagniezdzona petla !!
for a in range(1,5):
    for b in range(2,6):
        if a == 2 and b == 3:
            break
        print(f"Pierwsza liczba to {a}, druga to {b}")
```

Pętle nie zawsze muszą być realizowane od początku do końca. Czasami, w zależności od warunków, może być konieczne pominięcie niektórych kroków pętli lub przedwczesne zakończenie pętli.

Do tego właśnie służą instrukcje `break` i `continue`.

- Break to instrukcja wcześniejszego zakończenia pętli.

- Continue to instrukcja pominięcia reszty pętli i przejścia do następnego kroku pętli. W tym przypadku pętla nie jest zakończona.

### Petla **`While`**

Pętla `while` jest wykonywana tak długo dopóki określony warunek będzie prawdziwy. Warunek po każdym wykonaniu jest ponownie sprawdzany i jeśli jest prawdziwy zwraca wartość `True`, kod w bloku jest wykonywany. Jeżeli warunek jest fałszywy, wtedy przyjmie wartość `False`, blok kodu wewnątrz pętli się nie wykona

```python
count = 0
while count < 10:
    print(count)
    count += 1  # count = count + 1
```

W tym przykładzie zastosowano pętlę `while True`, która będzie działać w nieskończoność, chyba że zostanie przerwana przy użyciu instrukcji `break` wewnątrz pętli.

```python
while True:
    wybor = int(input(" 1- zaloguj sie: \n co chcesz zrobic: "))

    elif wybor == 1:

        login = input("Podaj login ")
        haslo = input("Podaj haslo ")
        if sprawdzanie(login,haslo): # Ps. Nie nalezy przejmować sie uzytą funkcją
            break
```

## Listy i słowniki
