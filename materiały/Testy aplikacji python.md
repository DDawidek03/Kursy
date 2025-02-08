# **Instrukcja do kwalifikacji INF.04 – Testowanie aplikacji**

## **1. Wprowadzenie**

Kwalifikacja INF.04 obejmuje projektowanie, tworzenie oraz testowanie aplikacji. Testowanie jest kluczowym procesem zapewniającym wysoką jakość oprogramowania, eliminującym błędy oraz zapewniającym zgodność z wymaganiami biznesowymi i technicznymi.

## **2. Podstawowe pojęcia w testowaniu aplikacji**

Testowanie oprogramowania to proces analizy aplikacji w celu znalezienia i naprawienia błędów. Może być wykonywane manualnie lub automatycznie.

**Główne cele testowania:**

- Sprawdzenie zgodności aplikacji z wymaganiami,
- Identyfikacja i eliminacja błędów,
- Poprawa jakości kodu,
- Zapewnienie optymalnej wydajności i bezpieczeństwa.

## **3. Rodzaje testów**

### **3.1. Testy funkcjonalne**

Sprawdzają, czy aplikacja działa zgodnie z jej założeniami. Przykład testu jednostkowego w Pythonie dla funkcji logowania:

```python
import pytest
from app import login

def test_valid_login():
    assert login("admin", "password123") is True

def test_invalid_login():
    assert login("admin", "wrongpassword") is False

def test_empty_credentials():
    assert login("", "") is False
```

### **3.2. Testy niefunkcjonalne**

- **Testy wydajnościowe** – sprawdzają czas odpowiedzi aplikacji,
- **Testy użyteczności** – badają intuicyjność interfejsu,
- **Testy kompatybilności** – sprawdzają działanie na różnych systemach.

Przykład testu wydajnościowego w Pythonie za pomocą `pytest`:

```python
import time
import pytest
from app import funkcja_do_testowania

def test_wydajnosci():
    start = time.time()
    funkcja_do_testowania()
    end = time.time()
    assert end - start < 1  # Test przejdzie, jeśli funkcja działa szybciej niż 1 sekunda
```

### **3.3. Testy integracyjne**

Sprawdzają interakcje między modułami aplikacji. Przykład testu integracyjnego w `pytest`:

```python
import requests
import pytest

def test_api_login():
    response = requests.post("https://api.example.com/login", json={"username": "testuser", "password": "securepassword"})
    assert response.status_code == 200
    assert "token" in response.json()

def test_api_invalid_login():
    response = requests.post("https://api.example.com/login", json={"username": "testuser", "password": "wrongpassword"})
    assert response.status_code == 401
```

### **3.4. Testy akceptacyjne**

Testy wykonywane przez klienta w celu sprawdzenia, czy spełnione są wymagania biznesowe.

## **4. Proces testowania aplikacji**

### **4.1. Analiza wymagań**

- Zapoznanie się z dokumentacją aplikacji,
- Określenie kryteriów akceptacji.

### **4.2. Tworzenie przypadków testowych**

Przykład przypadków testowych dla funkcji rejestracji i resetowania hasła:

| ID  | Opis Testu                   | Kroki                                                                     | Oczekiwany Wynik                    |
| --- | ---------------------------- | ------------------------------------------------------------------------- | ----------------------------------- |
| TC1 | Test rejestracji użytkownika | 1. Otwórz formularz rejestracji 2. Wprowadź dane 3. Kliknij "Zarejestruj" | Użytkownik zostaje zarejestrowany   |
| TC2 | Test rejestracji bez danych  | 1. Otwórz formularz 2. Kliknij "Zarejestruj" bez wpisania danych          | Komunikat o błędzie                 |
| TC3 | Test resetowania hasła       | 1. Kliknij "Zapomniałem hasła" 2. Wpisz e-mail 3. Kliknij "Wyślij"        | Otrzymanie e-maila z linkiem resetu |

### **4.3. Wykonywanie testów**

Testy mogą być wykonywane manualnie lub automatycznie.

**Testowanie manualne:**

- Przegląd aplikacji,
- Sprawdzanie interfejsu,
- Ręczne wykonywanie przypadków testowych.

**Testowanie automatyczne:**
Przykład testu Selenium dla aplikacji webowej:

```python
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
import pytest

def test_login():
    driver = webdriver.Chrome()
    driver.get("https://example.com/login")
    element = driver.find_element("name", "username")
    element.send_keys("testuser")
    element.send_keys(Keys.RETURN)
    assert "Dashboard" in driver.title
    driver.quit()
```

### **4.4. Zgłaszanie błędów**

Błędy zgłasza się w systemie takim jak JIRA:

- Opis problemu,
- Kroki do odtworzenia,
- Oczekiwany i rzeczywisty wynik.

### **4.5. Retest i testy regresji**

Po naprawieniu błędów testujemy aplikację ponownie, aby upewnić się, że zmiany nie wpłynęły negatywnie na inne funkcje.

## **5. Narzędzia do testowania**

- **PyTest** – testy jednostkowe i integracyjne,
- **Selenium** – automatyzacja testów webowych,
- **JMeter** – testy wydajnościowe,
- **Postman** – testowanie API,
- **JIRA** – zarządzanie testami i błędami.

## **6. Metodyki testowania**

- **Waterfall** – testowanie po zakończeniu kodowania.
- **Agile/Scrum** – testowanie iteracyjne w sprintach.
- **DevOps** – testowanie ciągłe w CI/CD.

## **7. Dokumentacja testowa**

### **Przykład dokumentacji testowej**

**Plan testów:**

- Cel testów: Weryfikacja działania funkcji logowania.
- Zakres testów: Moduł logowania użytkowników.
- Narzędzia: PyTest, Postman.

**Przypadki testowe:**
| ID | Opis | Kroki | Oczekiwany Wynik |
| --- | --------------------- | ----------------------------- | ---------------- |
| TC1 | Test poprawnego loginu | 1. Wprowadź poprawne dane 2. Kliknij „Zaloguj” | Przekierowanie na stronę główną |
| TC2 | Test błędnego loginu | 1. Wprowadź błędne dane 2. Kliknij „Zaloguj” | Komunikat o błędzie |

**Raport testów:**

- Testy jednostkowe: 6/6 przeszło
- Testy integracyjne: 5/6 przeszło (1 błąd zgłoszony do poprawy)

## **8. Podsumowanie**

Testowanie aplikacji jest kluczowym procesem zapewniającym jakość oprogramowania. W ramach kwalifikacji INF.04 ważne jest znajomość rodzajów testów, procesu testowania oraz narzędzi, które pomagają w wykrywaniu błędów i optymalizacji aplikacji.
