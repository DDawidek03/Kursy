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

# EN

📑 Data Manipulation Language (DML)

🔭 SQL Queries (search and clauses)

1. Find all tasks assigned to the user named jdoe. (Joining tasks and users tables)

2. Find all projects that have the word "Upgrade" in their name. (Based on the projects table)

3. Find all comments from users whose email addresses end with "@example.com". (Joining comments and users tables)

4. Find all files attached to tasks marked as "Completed". (Joining files and tasks tables)

5. Find all high-priority tasks that are due within the next 7 days. (Based on the tasks table)

6. Find all tasks assigned to users with the role "Manager". (Joining tasks, users, and roles tables)

7. Find all comments added in the last 24 hours. (Based on the comments table)

8. Find all projects created in the year 2024. (Based on the projects table)

9. Find all tasks that do not have any attached files. (Joining tasks and files tables)

10. Find all roles that have the permission "Edit Tasks". (Joining roles and permissions tables)

11. Find all tasks created by the user asmith. (Joining tasks and users tables)

12. Find all users who do not have any assigned roles. (Based on the users and roles tables)

13. Find all files attached to tasks with the status "Pending". (Joining files and tasks tables)

14. Find all projects that have more than 5 tasks. (Joining projects and tasks tables)

15. Find all comments by the user mjones that contain the word "completed". (Joining comments and users tables)

#### 📥 **Grouping, Sorting, and HAVING Clause**

1. Group all tasks by priority and display the number of tasks in each group. (Based on the tasks table)

2. Group users by roles and display the number of users in each role. (Joining users and roles tables)

3. Find all projects that have more than 3 assigned tasks and are in the status "In Progress". (Joining projects and tasks tables)

4. Sort users alphabetically by username. (Based on the users table)

5. Sort tasks by creation date, with the newest on top. (Based on the tasks table)

6. Group comments by user and display the number of comments added by each user. (Joining comments and users tables)

7. Find all tasks that have at least 2 attached files. (Joining tasks and files tables)

8. Sort projects by the number of tasks, from the highest to the lowest number of tasks. (Joining projects and tasks tables)

9. Group roles by the number of assigned users and display those that have more than 1 user. (Joining roles and users tables)

10. Find all tasks that have more than 3 assigned comments. (Joining tasks and comments tables)

11. Sort users by the number of assigned tasks, from the highest to the lowest number. (Joining users and tasks tables)

12. Sort comments by the length of the comment text, from the longest to the shortest. (Based on the comments table)

13. Group tasks by status and display the number of tasks created by the user mjones. (Joining tasks and users tables)

#### 🔣 **Functions**

**Aggregate Functions:**

1. Calculate the total number of files assigned to each project. (Joining projects, tasks, and files tables)

2. Calculate the average number of tasks assigned to users. (Joining tasks and users tables)

3. Calculate the maximum number of comments assigned to a single task. (Joining comments and tasks tables)

4. Find the project with the highest number of assigned users. (Joining projects and users tables)

5. Calculate the average number of files assigned to tasks. (Joining tasks and files tables)

6. Calculate the total duration of tasks assigned to the user mjones. (Joining tasks and users tables - assuming there is a duration column)

7. Find the average number of tasks assigned to projects with the status "Pending". (Joining projects and tasks tables)

8. Calculate the total number of users who have more than one role. (Joining users and roles tables)

**Text Functions:**

1. Find all tasks whose titles start with "Implement". (Based on the tasks table)

2. Find users whose email addresses contain the word "admin". (Based on the users table)

3. Display the titles of all tasks, converting them to uppercase. (Based on the tasks table)

4. Find all comments that contain exactly 10 words. (Based on the comments table)

5. Display the first 10 characters of each project name. (Based on the projects table)

6. Find all tasks whose titles contain the word "review". (Based on the tasks table)

7. Display comments, converting their text to lowercase. (Based on the comments table)

8. Find users whose first name ends with "son". (Based on the users table)

9. Display users' last names without the first three letters. (Based on the users table)

10. Find projects whose names have more than 15 characters. (Based on the projects table)

11. Display task titles, replacing all occurrences of the word "task" with "job". (Based on the tasks table)

12. Find users who have exactly 8 characters in their username. (Based on the users table)

13. Display the last 5 characters of each task title. (Based on the tasks table)

14. Find all comments that contain the word "important". (Based on the comments table)

15. Display task titles, removing all spaces from them. (Based on the tasks table)
