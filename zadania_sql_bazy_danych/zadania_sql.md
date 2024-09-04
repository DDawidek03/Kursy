### 📑 **Język Manipulacji Danymi (DML)**

#### 🔭 **Zapytania SQL (wyszukiwanie oraz klauzule)**

1. Znajdź wszystkie zadania przypisane do użytkownika o nazwie `jdoe`. _(Łączenie tabel `tasks` i `users`)_

2. Znajdź wszystkie projekty, które w nazwie mają słowo "Upgrade". _(Na podstawie tabeli `projects`)_

3. Znajdź wszystkie komentarze użytkowników, których adresy e-mail kończą się na "@example.com". _(Łączenie tabel `comments` i `users`)_

4. Znajdź wszystkie pliki, które zostały dołączone do zadań oznaczonych jako "Completed". _(Łączenie tabel `files` i `tasks`)_

5. Znajdź wszystkie zadania o wysokim priorytecie, które mają termin wykonania w ciągu następnych 7 dni. _(Na podstawie tabeli `tasks`)_

6. Znajdź wszystkie zadania, które są przypisane do użytkowników z rolą "Manager". _(Łączenie tabel `tasks`, `users` i `roles`)_

7. Znajdź wszystkie komentarze dodane w ciągu ostatnich 24 godzin. _(Na podstawie tabeli `comments`)_

8. Znajdź wszystkie projekty, które zostały utworzone w 2024 roku. _(Na podstawie tabeli `projects`)_

9. Znajdź wszystkie zadania, które nie mają przypisanych żadnych plików. _(Łączenie tabel `tasks` i `files`)_

10. Znajdź wszystkie role, które mają przypisane uprawnienia "Edit Tasks". _(Łączenie tabel `roles` i `permissions`)_

11. Znajdź wszystkie zadania, które zostały stworzone przez użytkownika `asmith`. _(Łączenie tabel `tasks` i `users`)_

12. Znajdź wszystkich użytkowników, którzy nie mają przypisanej żadnej roli. _(Na podstawie tabeli `users` i `roles`)_

13. Znajdź wszystkie pliki dołączone do zadań, których status jest "Pending". _(Łączenie tabel `files` i `tasks`)_

14. Znajdź wszystkie projekty, które mają więcej niż 5 zadań. _(Łączenie tabel `projects` i `tasks`)_

15. Znajdź wszystkie komentarze użytkownika `mjones`, które zawierają słowo "completed". _(Łączenie tabel `comments` i `users`)_

#### 📥 **Grupowanie, Sortowanie i Klauzula HAVING**

1. Zgrupuj wszystkie zadania według priorytetu i wyświetl liczbę zadań w każdej grupie. _(Na podstawie tabeli `tasks`)_

2. Zgrupuj użytkowników według ról i wyświetl liczbę użytkowników w każdej roli. _(Łączenie tabel `users` i `roles`)_

3. Znajdź wszystkie projekty, które mają więcej niż 3 przypisane zadania i są w statusie "In Progress". _(Łączenie tabel `projects` i `tasks`)_

4. Posortuj użytkowników alfabetycznie według nazw użytkownika. _(Na podstawie tabeli `users`)_

5. Posortuj zadania według daty utworzenia, najnowsze na górze. _(Na podstawie tabeli `tasks`)_

6. Zgrupuj komentarze według użytkownika i wyświetl liczbę komentarzy dodanych przez każdego użytkownika. _(Łączenie tabel `comments` i `users`)_

7. Znajdź wszystkie zadania, które mają co najmniej 2 przypisane pliki. _(Łączenie tabel `tasks` i `files`)_

8. Posortuj projekty według liczby zadań, od największej do najmniejszej liczby zadań. _(Łączenie tabel `projects` i `tasks`)_

9. Zgrupuj role według liczby przypisanych do nich użytkowników i wyświetl te, które mają więcej niż 1 użytkownika. _(Łączenie tabel `roles` i `users`)_

10. Znajdź wszystkie zadania, które mają przypisane więcej niż 3 komentarze. _(Łączenie tabel `tasks` i `comments`)_

11. Posortuj użytkowników według liczby przypisanych zadań, od największej do najmniejszej liczby. _(Łączenie tabel `users` i `tasks`)_

12. Posortuj komentarze według długości tekstu komentarza, od najdłuższego do najkrótszego. _(Na podstawie tabeli `comments`)_

13. Zgrupuj zadania według statusu i wyświetl liczbę zadań, które zostały utworzone przez użytkownika `mjones`. _(Łączenie tabel `tasks` i `users`)_

#### 🔣 **Funkcje**

**Funkcje agregujące:**

1. Oblicz łączną liczbę plików przypisanych do każdego projektu. _(Łączenie tabel `projects`, `tasks` i `files`)_

2. Oblicz średnią liczbę zadań przypisanych do użytkowników. _(Łączenie tabel `tasks` i `users`)_

3. Oblicz maksymalną liczbę komentarzy przypisanych do pojedynczego zadania. _(Łączenie tabel `comments` i `tasks`)_

4. Znajdź projekt z największą liczbą przypisanych użytkowników. _(Łączenie tabel `projects` i `users`)_

5. Oblicz średnią liczbę plików przypisanych do zadań. _(Łączenie tabel `tasks` i `files`)_

6. Oblicz łączny czas trwania zadań, które są przypisane do użytkownika `mjones`. _(Łączenie tabel `tasks` i `users` - zakładając, że jest kolumna `duration`)_

7. Znajdź średnią liczbę zadań przypisanych do projektów w statusie "Pending". _(Łączenie tabel `projects` i `tasks`)_

8. Oblicz łączną liczbę użytkowników, którzy mają więcej niż jedną rolę. _(Łączenie tabel `users` i `roles`)_

**Funkcje tekstowe:**

1. Znajdź wszystkie zadania, których tytuły zaczynają się na "Implement". _(Na podstawie tabeli `tasks`)_

2. Znajdź użytkowników, których adres e-mail zawiera słowo "admin". _(Na podstawie tabeli `users`)_

3. Wyświetl tytuły wszystkich zadań, konwertując je na wielkie litery. _(Na podstawie tabeli `tasks`)_

4. Znajdź wszystkie komentarze, które zawierają dokładnie 10 słów. _(Na podstawie tabeli `comments`)_

5. Wyświetl pierwsze 10 znaków każdej nazwy projektu. _(Na podstawie tabeli `projects`)_

6. Znajdź wszystkie zadania, w których tytule znajduje się słowo "review". _(Na podstawie tabeli `tasks`)_

7. Wyświetl komentarze, konwertując ich tekst na małe litery. _(Na podstawie tabeli `comments`)_

8. Znajdź użytkowników, których imię kończy się na "son". _(Na podstawie tabeli `users`)_

9. Wyświetl nazwiska użytkowników bez pierwszych trzech liter. _(Na podstawie tabeli `users`)_

10. Znajdź projekty, których nazwy mają więcej niż 15 znaków. _(Na podstawie tabeli `projects`)_

11. Wyświetl tytuły zadań, zastępując wszystkie wystąpienia słowa "task" słowem "job". _(Na podstawie tabeli `tasks`)_

12. Znajdź użytkowników, którzy mają dokładnie 8 znaków w nazwie użytkownika. _(Na podstawie tabeli `users`)_

13. Wyświetl ostatnie 5 znaków każdego tytułu zadania. _(Na podstawie tabeli `tasks`)_

14. Znajdź wszystkie komentarze, które zawierają słowo "important". _(Na podstawie tabeli `comments`)_

15. Wyświetl tytuły zadań, usuwając z nich wszystkie spacje. _(Na podstawie tabeli `tasks`)_
