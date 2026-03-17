# Kryptografia: Szyfry Symetryczne, Asymetryczne i Podejście Hybrydowe

Ten materiał szczegółowo omawia, w jaki sposób współczesny świat cyfrowy zabezpiecza nasze dane przed niepowołanym dostępem. Zrozumienie tych mechanizmów to podstawa cyberbezpieczeństwa.

---

## 🔒 1. Szyfrowanie Symetryczne (Symmetric-key Cryptography)

Szyfrowanie symetryczne to najstarszy i najbardziej intuicyjny sposób ukrywania informacji.

**Jak to działa?**
Używasz **dokładnie tego samego klucza** (tajnego hasła) do zaszyfrowania (zamknięcia kłódki) i odszyfrowania (otwarcia kłódki) wiadomości.

- **Analogia:** Zamykasz list w sejfie, którego jedyny działający klucz lub kod znasz Ty i Twój znajomy.

**Zalety:**

- **Błyskawiczna szybkość:** Algorytmy są zoptymalizowane pod kątem sprzętowym i przetwarzają gigabajty danych w ułamku sekundy.
- **Wydajność:** Idealne do szyfrowania całych dysków twardych (np. BitLocker), dużych plików czy strumieni wideo.

**Wady:**

- **Problem Dystrybucji Klucza:** Jak bezpiecznie przekazać ten "tajny klucz" koledze na drugim końcu świata, przez sieć pełną podsłuchujących, aby nikt go nie przechwycił? (Ten problem rozwiązano za pomocą szyfrów asymetrycznych).

**Najpopularniejsze algorytmy (Szyfry):**

- **AES (Advanced Encryption Standard):** Obecny standard światowy (klucze 128, 192, 256-bit). Praktycznie niemożliwy do złamania metodą siłową (brute-force) przy obecnej technologii.
- **ChaCha20:** Bardzo szybki nowoczesny szyfr (często używany w urządzeniach mobilnych z Androidem).
- **DES / 3DES:** Przestarzałe i aktualnie uważane za niebezpieczne (zbyt słabe na nowoczesne komputery).

---

## 🔑🔓 2. Szyfrowanie Asymetryczne (Klucza Publicznego)

Powstało w latach 70. XX wieku jako genialne rozwiązanie problemu przekazywania klucza z szyfrowania symetrycznego.

**Jak to działa?**
Zamiast jednego tajnego hasła, generujesz **matematycznie powiązaną parę kluczy**:

1. **Klucz Publiczny (Public Key):** Rozdajesz go każdemu, wrzucasz na stronę, wysyłasz mailem. Wszyscy mogą go mieć.
2. **Klucz Prywatny (Private Key):** Trzymasz w absolutnej tajemnicy. Służy _tylko_ Tobie.

**Analogia:**
Twój _Klucz Publiczny_ to otwarta kłódka. Rozdajesz ją wszystkim. Ktoś wkłada list do pudełka i zatrzaskuje na nim Twoją kłódkę (szyfruje List). Od tego momentu **nikt**, nawet nadawca, nie może otworzyć pudełka. Otworzyć je możesz tylko Ty, używając swojego unikalnego _Klucza Prywatnego_.

**Zalety:**

- **Bezpieczna wymiana danych:** Możesz bezpiecznie rozpocząć rozmowę z kimś, kogo nigdy wcześniej nie spotkałeś.
- **Tożsamość (Podpisy Cyfrowe):** Jeśli zaszyfrujesz coś swoim _prywatnym kluczem_, każdy, kto użyje Twojego _publicznego klucza_, będzie miał pewność, że to Ty to wysłałeś (bo tylko Twój prywatny klucz pasuje do Twojego publicznego).

**Wady:**

- **Bardzo wolne:** Ze względu na skomplikowane operacje matematyczne (np. na ogromnych liczbach pierwszych), szyfrowanie dużych plików zajęłoby wieczność.
- **Zasobożerne:** Wymaga więcej mocy obliczeniowej komputera.

**Najpopularniejsze algorytmy (Szyfry):**

- **RSA (Rivest-Shamir-Adleman):** Klasyk oparty na trudności rozkładu wielkich liczb na czynniki pierwsze.
- **ECC (Krzywe Eliptyczne):** Bardziej nowoczesne; zapewnia takie same bezpieczeństwo przy znacznie mniejszych rozmiarach kluczy (szybsze na urządzeniach mobilnych).

---

## 🤝 3. Prawdziwa Magia: Szyfrowanie Hybrydowe (Współpraca)

Ponieważ _symetryczne_ jest szybkie, ale ma problem z kluczami, a _asymetryczne_ świetnie rozwiązuje problem kluczy, ale jest wolne — połączono oba te światy.

Tak działa praktycznie cały współczesny, bezpieczny Internet (np. protokoły **TLS/SSL**, komunikatory typu **Signal** czy **WhatsApp**, i połączenia bankowe).

**Proces (krok po kroku w dużym uproszczeniu):**

1. **Początek (Magia Asymetryczna):** Twoja przeglądarka łączy się z serwerem banku. Bank wysyła Ci swój **Klucz Publiczny**.
2. **Tajny Sekret:** Twoja przeglądarka losuje zupełnie nowy, jednorazowy **Klucz Symetryczny** (tzw. klucz sesji) i szyfruje go za pomocą _Publicznego Klucza_ banku.
3. **Przekazanie:** Zaszyfrowany _Klucz Symetryczny_ trafia do banku.
4. **Odtworzenie:** Bank odzyskuje Twój _Klucz Symetryczny_ używając swojego ściśle strzeżonego **Klucza Prywatnego**.
5. **Główna Transmisja (Prędkość Symetryczna):** Obie strony mają już ten sam szybki _Klucz Symetryczny_. Od tego momentu zamykają połączenie asymetryczne i całą dalszą komunikację, loginy, przelewy itd., szyfrują ultraszybko algorytmem symetrycznym (np. AES). Kiedy zamykasz stronę, klucz sesji jest niszczony.

---

## 🛠️ Zadanie do przemyślenia / Ćwiczenie

Wyobraź sobie, że chcesz wysłać poufny raport (duży plik wideo, 2 GB) do swojego szefa przez niezabezpieczoną sieć, mając tylko jego i swój własny zestaw kluczy (prywatny i publiczny).

_Jak wykonasz cały proces, aby zapewnić, że:_

1. Plik nie będzie przesyłany tydzień (działanie szybko).
2. Szef otworzy plik.
3. Szef będzie miał pewność na 100%, że to od Ciebie?

_(Podpowiedź: Użyjesz szyfrowania losowego piku symetrycznie, klucza publicznego szefa do zaszyfrowania tego klucza symetrycznego, a hash pliku podpiszesz własnym kluczem prywatnym)._
