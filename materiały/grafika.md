### Instrukcja przeliczania wartości HEX na RGB i RGB na HEX oraz podstawowe informacje o grafice rastrowej i wektorowej

#### 1. **Przeliczanie wartości HEX na system dziesiętny (RGB)**

Kolory w formacie HEX (szesnastkowym) składają się z sześciu znaków poprzedzonych symbolem "#". Każdy kolor jest reprezentowany przez trzy składowe: **R** (czerwony), **G** (zielony) i **B** (niebieski), gdzie każda z tych składowych przyjmuje wartości od 00 do FF w systemie szesnastkowym, co odpowiada wartościom od 0 do 255 w systemie dziesiętnym.

Aby przeliczyć wartości HEX na RGB, musimy najpierw zamienić liczby szesnastkowe na dziesiętne.

##### **Tabela przeliczania cyfr HEX na system dziesiętny**

| HEX | Dziesiętnie |
| --- | ----------- |
| 0   | 0           |
| 1   | 1           |
| 2   | 2           |
| 3   | 3           |
| 4   | 4           |
| 5   | 5           |
| 6   | 6           |
| 7   | 7           |
| 8   | 8           |
| 9   | 9           |
| A   | 10          |
| B   | 11          |
| C   | 12          |
| D   | 13          |
| E   | 14          |
| F   | 15          |

Każda składowa koloru (R, G, B) zapisana w systemie HEX składa się z dwóch znaków, które należy przeliczyć na dziesiętny za pomocą powyższej tabeli.

##### **Kroki przeliczania HEX na RGB**

1. **Weź wartość HEX** – np. `#4A9FDC`.
2. **Podziel HEX na trzy składowe RGB**:

   - Pierwsze dwie cyfry to **R**: `4A`,
   - Środkowe dwie cyfry to **G**: `9F`,
   - Ostatnie dwie cyfry to **B**: `DC`.

3. **Przelicz każdą składową na dziesiętny**:

   - Dla składowej **R**: `4A`:  
     \( 4 \* 16 + 10 = 64 + 10 = 74 \).
   - Dla składowej **G**: `9F`:  
     \( 9 \* 16 + 15 = 144 + 15 = 159 \).
   - Dla składowej **B**: `DC`:  
     \( 13 \* 16 + 12 = 208 + 12 = 220 \).

4. **Wynik**: HEX `#4A9FDC` to **RGB(74, 159, 220)**.

##### **Przykład 2**

Dla koloru HEX `#1A3F8B`:

- **R**: `1A`: \( 1 \* 16 + 10 = 26 \),
- **G**: `3F`: \( 3 \* 16 + 15 = 63 \),
- **B**: `8B`: \( 8 \* 16 + 11 = 139 \).

Wynik: **RGB(26, 63, 139)**.

---

#### 2. **Przeliczanie wartości RGB na HEX**

Każdą składową RGB (od 0 do 255) można zamienić na system szesnastkowy za pomocą podobnych kroków, ale w drugą stronę.

##### **Kroki przeliczania RGB na HEX**

1. **Weź wartości RGB** – np. RGB(255, 87, 51).
2. **Przelicz każdą składową z systemu dziesiętnego na szesnastkowy**:

   - Dla **R** = 255:  
     \( 255 / 16 = 15 \) z resztą 15, czyli **FF** (F w systemie HEX to 15).
   - Dla **G** = 87:  
     \( 87 / 16 = 5 \) z resztą 7, czyli **57**.
   - Dla **B** = 51:  
     \( 51 / 16 = 3 \) z resztą 3, czyli **33**.

3. **Wynik**: RGB(255, 87, 51) to **HEX #FF5733**.

##### **Przykład 2**

Dla RGB(26, 63, 139):

- **R**: 26 → \( 1 \* 16 + 10 = 1A \),
- **G**: 63 → \( 3 \* 16 + 15 = 3F \),
- **B**: 139 → \( 8 \* 16 + 11 = 8B \).

Wynik: **HEX #1A3F8B**.

---

#### 3. **Grafika rastrowa a grafika wektorowa**

W informatyce wyróżniamy dwa podstawowe rodzaje grafiki komputerowej: **grafikę rastrową** i **grafikę wektorową**. Oba te typy różnią się sposobem reprezentacji obrazów i są stosowane w różnych kontekstach.

##### **Grafika rastrowa**

Grafika rastrowa (bitmapowa) składa się z siatki pikseli, gdzie każdy piksel ma określony kolor. Rozdzielczość obrazu określa liczbę pikseli na jednostkę powierzchni. Powiększanie grafiki rastrowej prowadzi do jej **pikselizacji**, czyli utraty jakości.

- **Przykłady formatów**: **JPEG, PNG, GIF, BMP**.
- **Zalety**:
  - Doskonała do przechwytywania realistycznych obrazów, np. zdjęć.
  - Obsługiwana przez większość programów graficznych i przeglądarek.
- **Wady**:
  - Utrata jakości przy powiększaniu.
  - Duże rozmiary plików przy wysokiej rozdzielczości.
- **Zastosowania**:
  - Zdjęcia cyfrowe, obrazy internetowe, skany.

##### **Grafika wektorowa**

Grafika wektorowa opiera się na matematycznych wzorach – liniach, krzywych, i kształtach. Wektory są skalowalne, co oznacza, że grafiki można powiększać bez utraty jakości, w przeciwieństwie do grafiki rastrowej.

- **Przykłady formatów**: **SVG, AI, EPS**.
- **Zalety**:
  - Możliwość skalowania bez utraty jakości.
  - Zajmuje mniej miejsca niż grafika rastrowa przy prostych grafikach.
- **Wady**:
  - Nie nadaje się do obrazów realistycznych, np. zdjęć.
- **Zastosowania**:
  - Logotypy, ilustracje, schematy, ikony.

#### 4. **Podsumowanie różnic między grafiką rastrową a wektorową**

| Cecha             | Grafika rastrowa                      | Grafika wektorowa               |
| ----------------- | ------------------------------------- | ------------------------------- |
| **Reprezentacja** | Piksele                               | Linie, krzywe, kształty         |
| **Skalowanie**    | Powoduje utratę jakości               | Brak utraty jakości             |
| **Zastosowania**  | Zdjęcia, obrazy o dużej ilości detali | Logotypy, ilustracje techniczne |
| **Formaty**       | JPEG, PNG, GIF, BMP                   | SVG, AI, EPS                    |

---

#### 5. **Dodatkowe zagadnienia przydatne na zajęciach informatyki (INF 03)**

1. **Rozdzielczość obrazu**:

   - Rozdzielczość opisuje, ile pikseli znajduje się na jednostce powierzchni (np. piksele na cal – **PPI**). Wyższa rozdzielczość oznacza lepszą jakość obrazu.

2. **Paleta barw**:

   - W modelu kolorów RGB używa się 24 bitów, gdzie każda składowa koloru (R, G, B) ma 8 bitów, co daje łącznie 16,777,216 możliwych kolorów.

3. **Kompresja obrazów**:
   - **Kompresja stratna** (np. JPEG) zmniejsza rozmiar pliku, ale kosztem jakości obrazu.
   - **Kompresja bezstratna** (np. PNG) zachowuje pełną jakość, ale pliki są większe.
