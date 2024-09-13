## Diagram ERD

![alt text](ERD.png)

## Warunkowe zapytania

#### Proste zadania (1-4)

1. Wyświetl wszystkich klientów, którzy zarejestrowali się po 1 stycznia 2020 roku.
2. Znajdź opinie, w których ocena jest równa 5.
3. Wyświetl wszystkie płatności dokonane kartą.
4. Pokaż wszystkie faktury, które mają kwotę większą niż 400 zł.

#### Zadania średnio trudne (5-9)

5. Wyświetl klientów, których nazwisko zaczyna się na "K".
6. Znajdź faktury, które zostały zapłacone, i wyświetl ich kwoty.
7. Pokaż wszystkie opinie klientów, które zostały wystawione w 2023 roku i mają ocenę co najmniej 4.
8. Wyświetl wszystkie płatności z kwotą pomiędzy 400 a 700 zł.
9. Znajdź wszystkich klientów, którzy złożyli co najmniej jedną opinię.

#### Zadania trudne (10-14)

10. Wyświetl wszystkich klientów, którzy zapłacili za faktury wydane w 2023 roku.
11. Znajdź wszystkie faktury, gdzie kwota całkowita jest większa niż 500 zł i nie zostały jeszcze zapłacone.
12. Wyświetl klientów, którzy dokonali płatności przelewem lub gotówką.
13. Pokaż faktury, które zostały wystawione na samochody z oceną poniżej 4.
14. Znajdź klientów, którzy wypożyczali samochody i zostawili co najmniej dwie różne opinie.

### Grupowanie danych

#### Proste zadania (15-18)

15. Pokaż liczbę faktur dla każdego klienta.
16. Wyświetl liczbę opinii wystawionych przez każdego klienta.
17. Znajdź średnią kwotę płatności dla każdej metody płatności.
18. Pokaż liczbę płatności wykonanych w każdym miesiącu 2023 roku.

#### Zadania średnio trudne (19-23)

19. Wyświetl wszystkich klientów, którzy dokonali co najmniej dwóch płatności.
20. Znajdź średnią ocenę samochodów na podstawie opinii klientów.
21. Pokaż liczbę faktur zapłaconych przez klientów z każdej miejscowości. <- znajdź błąd, i go zgłoś
22. Wyświetl wszystkich klientów, którzy mają średnią ocenę co najmniej 4 w swoich opiniach.
23. Pokaż liczbę faktur dla każdego roku i miesiąca.

#### Zadania trudne (24-28)

24. Znajdź osoby, gdzie średnia kwota faktur jest wyższa niż 600 zł.
25. Wyświetl klientów, którzy mają łączną kwotę płatności większą niż 1000 zł.
26. Pokaż typy płatności, które mają średnią kwotę powyżej 500 zł.
27. Wyświetl liczbę faktur i sumę kwot płatności dla każdego klienta.

### Łączenie tabel - powtórzenie

#### Zadania (29-33)

28. Wyświetl wszystkie faktury wraz z powiązanymi danymi o płatnościach.
29. Pokaż wszystkich klientów i ich opinie o samochodach.
30. Wyświetl listę klientów wraz z ich wszystkimi fakturami.
31. Pokaż szczegóły faktur i powiązanych płatności nawet, jeśli nie zostały zapłacone.
32. Wyświetl szczegóły klientów, którzy dokonali płatności kartą i jednocześnie wystawili co najmniej jedną opinię.

### Łączenie tabel

1. **Zadanie 1:** Wyświetl listę wszystkich klientów, którzy otrzymali faktury, wraz z łączną kwotą ich faktur. Posortuj wyniki alfabetycznie według nazwiska klienta.

2. **Zadanie 2:** Wyświetl listę samochodów oraz ich średnią ocenę na podstawie opinii klientów. Posortuj wyniki malejąco według średniej oceny.

3. **Zadanie 3:** Wyświetl listę klientów i liczbę różnych samochodów, które były oceniane w opiniach, przy założeniu, że samochody były przypisane do wypożyczeń obsługiwanych przez tych klientów. Posortuj wyniki malejąco według liczby samochodów.

4. **Zadanie 4:** Wyświetl listę wszystkich dostępnych samochodów, pokazując ich markę, model oraz datę ostatniego przeglądu technicznego. Posortuj wyniki według daty ostatniego przeglądu malejąco.

5. **Zadanie 5:** Wyświetl listę klientów, którzy złożyli zamówienia na wypożyczenie samochodów w danym okresie (_dowolny okres_), z informacją o liczbie dni wypożyczenia i łącznej wartości wypożyczenia.

6. **Zadanie 6:** Wyświetl listę klientów, którzy wykonali najwięcej wypożyczeń (top 3), wraz z liczbą wypożyczeń obsłużonych przez każdego z nich. Posortuj wyniki malejąco według liczby wypożyczeń.

7. **Zadanie 7:** Wyświetl listę samochodów, które nigdy nie zostały ocenione w opiniach klientów.

8. **Zadanie 8:** Wyświetl listę klientów, którzy mają więcej niż jedno aktywne wypożyczenie. Posortuj wyniki alfabetycznie według nazwiska klienta.

9. **Zadanie 9:** Wyświetl 10 najczęściej wypożyczanych samochodów wraz z liczbą wypożyczeń dla każdego z nich. Posortuj wyniki malejąco według liczby wypożyczeń.

10. **Zadanie 10:** Wyświetl średnią wartość wypożyczeń dla każdego klienta, który miał więcej niż 5 wypożyczeń. Posortuj wyniki malejąco według średniej wartości.

11. **Zadanie 11:** Wyświetl listę klientów, którzy wypożyczali samochody najwięcej razy w ostatnim roku, tylko dla samochodów ktorych koszt naprawy/serwisu nie przekroczył 5000, wraz z liczbą wypożyczeń dla każdego klienta. Posortuj wyniki malejąco według liczby wypożyczeń.

12. **Zadanie 12:** Wyświetl listę wszystkich samochodów, które były wypożyczane więcej niż 5 razy, z ich marką, modelem oraz średnią liczbą dni wypożyczeń, oraz kosztem napraw jakie zostały poniesione.

13. **Zadanie 13:** Wyświetl listę samochodów, które nigdy nie były wypożyczane lub nie zostały zwrócone.

14. **Zadanie 14:** Wyświetl liczbe pracowników na kazdym stanowisku, dodatkowo zostali zatrudnieni po 2020 roku. Posortuj wyniki według nazwiska.

15. **Zadanie 15:** Wyświetl listę samochodów, których średnia ocena w opiniach jest mniejsza niż 4. Posortuj wyniki rosnąco według średniej oceny.

16. **Zadanie 16:** Wyświetl listę klientów, którzy wypożyczyli samochody przynajmniej 3 razy, ale nigdy nie wystawili opinii o wypożyczonym samochodzie.

17. **Zadanie 17:** Wyświetl listę wszystkich samochodów, które były wypożyczone przynajmniej raz w ciągu ostatnich 12 miesięcy, wraz z liczbą dni, przez które były wypożyczone i ich klientów ktorzy zostali zarejestrowani od 2022 do 2023. Posortuj wyniki malejąco według liczby dni.

18. **Zadanie 18:** Wyświetl listę klientów razem z ich płatnosciami oraz listą samochodów, którzy nie zapłacili za swoje faktury.

19. **Zadanie 19:** Wyświetl listę samochodów u kturych wymieniano olej lub filtry dla kazdego roku, oraz posortuj od najdrozszej naprawy

20. **Zadanie 20:** Wyświetl łączną liczbę wypożyczeń oraz łączną kwote dla każdego klienta w ciągu ostatnich 12 miesięcy. Posortuj wyniki malejąco według łącznej wartości wypożyczeń.

21. **Zadanie 21:** Wyświetl listę wszystkich klientów, którzy wypożyczyli samochód marki "BMW" więcej niż 3 razy w ciągu ostatnich 2 lat. Posortuj wyniki alfabetycznie według nazwiska klienta.

22. **Zadanie 23:** Wyświetl listę samochodów, które były wypożyczane przez klientów w róznych okresach czasu. Posortuj wyniki alfabetycznie według marki samochodu.

23. **Zadanie 24:** Wyświetl listę klientów, którzy mają aktywne wypożyczenia trwające dłużej niż 30 dni. Posortuj wyniki alfabetycznie według nazwiska klienta. <- _trudne_

24. **Zadanie 25:** Wyświetl listę samochodów, które były wypożyczane przez klientów, którzy mają co różne imiona. Posortuj wyniki alfabetycznie według marki samochodu.
