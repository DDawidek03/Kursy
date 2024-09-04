-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Czas generowania: 04 Wrz 2024, 10:37
-- Wersja serwera: 5.7.39
-- Wersja PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `project_management`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `task_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `comment_text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `comments`
--

INSERT INTO `comments` (`comment_id`, `task_id`, `user_id`, `comment_text`, `created_at`) VALUES
(1, 1, 1, 'Started working on the design. Initial sketches are ready.', '2024-09-04 10:29:23'),
(2, 2, 2, 'Awaiting design approval before starting development.', '2024-09-04 10:29:23'),
(3, 3, 3, 'Wireframes are complete and shared with the team.', '2024-09-04 10:29:23'),
(4, 4, 4, 'Working on the backend API. Progressing well.', '2024-09-04 10:29:23'),
(5, 5, 5, 'Data migration script is being tested.', '2024-09-04 10:29:23'),
(6, 6, 6, 'Customization is about 50% done.', '2024-09-04 10:29:23'),
(7, 7, 7, 'Cloud infrastructure set up successfully.', '2024-09-04 10:29:23'),
(8, 8, 8, 'Conducting performance tests. So far, so good.', '2024-09-04 10:29:23'),
(9, 9, 9, 'Starting on the interface development.', '2024-09-04 10:29:23'),
(10, 10, 10, 'Deployments scheduled for next week.', '2024-09-04 10:29:23');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `files`
--

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL,
  `task_id` int(11) DEFAULT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `files`
--

INSERT INTO `files` (`file_id`, `task_id`, `file_name`, `file_path`, `uploaded_at`) VALUES
(1, 1, 'homepage_sketch.jpg', '/uploads/homepage_sketch.jpg', '2024-09-04 10:29:23'),
(2, 2, 'homepage_mockup.png', '/uploads/homepage_mockup.png', '2024-09-04 10:29:23'),
(3, 3, 'mobile_wireframe.pdf', '/uploads/mobile_wireframe.pdf', '2024-09-04 10:29:23'),
(4, 4, 'api_specifications.docx', '/uploads/api_specifications.docx', '2024-09-04 10:29:23'),
(5, 5, 'crm_data_migration.sql', '/uploads/crm_data_migration.sql', '2024-09-04 10:29:23'),
(6, 6, 'crm_customization_guide.pdf', '/uploads/crm_customization_guide.pdf', '2024-09-04 10:29:23'),
(7, 7, 'aws_setup_guide.pdf', '/uploads/aws_setup_guide.pdf', '2024-09-04 10:29:23'),
(8, 8, 'cloud_performance_report.xlsx', '/uploads/cloud_performance_report.xlsx', '2024-09-04 10:29:23'),
(9, 9, 'tool_interface_design.jpg', '/uploads/tool_interface_design.jpg', '2024-09-04 10:29:23'),
(10, 10, 'deployment_plan.pdf', '/uploads/deployment_plan.pdf', '2024-09-04 10:29:23');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `permissions`
--

CREATE TABLE `permissions` (
  `permission_id` int(11) NOT NULL,
  `permission_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `permissions`
--

INSERT INTO `permissions` (`permission_id`, `permission_name`) VALUES
(1, 'View Tasks'),
(2, 'Edit Tasks'),
(3, 'Delete Tasks'),
(4, 'Assign Tasks'),
(5, 'View Projects'),
(6, 'Edit Projects'),
(7, 'Delete Projects'),
(8, 'Manage Users'),
(9, 'View Comments'),
(10, 'Add Comments');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `projects`
--

CREATE TABLE `projects` (
  `project_id` int(11) NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `projects`
--

INSERT INTO `projects` (`project_id`, `project_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Website Redesign', 'Redesigning the company website for better user experience.', '2024-09-04 10:29:23', '2024-09-04 10:29:23'),
(2, 'Mobile App Development', 'Developing a mobile application for Android and iOS.', '2024-09-04 10:29:23', '2024-09-04 10:29:23'),
(3, 'CRM Implementation', 'Implementing a new CRM system for sales and customer management.', '2024-09-04 10:29:23', '2024-09-04 10:29:23'),
(4, 'Cloud Migration', 'Migrating infrastructure to the cloud for better scalability.', '2024-09-04 10:29:23', '2024-09-04 10:29:23'),
(5, 'Internal Tool Development', 'Developing internal tools to improve team efficiency.', '2024-09-04 10:29:23', '2024-09-04 10:29:23'),
(6, 'Marketing Campaign', 'Running a multi-channel marketing campaign for product launch.', '2024-09-04 10:29:23', '2024-09-04 10:29:23'),
(7, 'Data Analysis Project', 'Analyzing customer data to identify trends and insights.', '2024-09-04 10:29:23', '2024-09-04 10:29:23'),
(8, 'Cybersecurity Audit', 'Conducting a full audit of the company’s cybersecurity measures.', '2024-09-04 10:29:23', '2024-09-04 10:29:23'),
(9, 'API Development', 'Developing RESTful APIs for third-party integrations.', '2024-09-04 10:29:23', '2024-09-04 10:29:23'),
(10, 'Legacy System Upgrade', 'Upgrading legacy systems to newer technologies.', '2024-09-04 10:29:23', '2024-09-04 10:29:23');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'Administrator'),
(2, 'Project Manager'),
(3, 'Developer'),
(4, 'Designer'),
(5, 'Tester'),
(6, 'DevOps Engineer'),
(7, 'Business Analyst'),
(8, 'Product Owner'),
(9, 'Support Engineer'),
(10, 'Intern');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `role_permissions`
--

CREATE TABLE `role_permissions` (
  `role_permission_id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `role_permissions`
--

INSERT INTO `role_permissions` (`role_permission_id`, `role_id`, `permission_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 2, 1),
(7, 2, 2),
(8, 2, 4),
(9, 2, 5),
(10, 2, 6),
(11, 3, 1),
(12, 3, 9),
(13, 4, 1),
(14, 4, 9),
(15, 5, 10),
(16, 6, 5),
(17, 7, 5),
(18, 8, 5),
(19, 9, 9),
(20, 10, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tags`
--

CREATE TABLE `tags` (
  `tag_id` int(11) NOT NULL,
  `tag_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `tags`
--

INSERT INTO `tags` (`tag_id`, `tag_name`) VALUES
(1, 'Frontend'),
(2, 'Backend'),
(3, 'Database'),
(4, 'UX/UI'),
(5, 'Security'),
(6, 'Testing'),
(7, 'Deployment'),
(8, 'API'),
(9, 'Mobile'),
(10, 'Cloud');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tasks`
--

CREATE TABLE `tasks` (
  `task_id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `status` enum('To Do','In Progress','Done') DEFAULT 'To Do',
  `priority` enum('Low','Medium','High') DEFAULT 'Medium',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `due_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `tasks`
--

INSERT INTO `tasks` (`task_id`, `project_id`, `assigned_to`, `title`, `description`, `status`, `priority`, `created_at`, `updated_at`, `due_date`) VALUES
(1, 1, 1, 'Design New Homepage', 'Create the new design for the homepage.', 'In Progress', 'High', '2024-09-04 10:29:23', '2024-09-04 10:29:23', '2024-09-15'),
(2, 1, 2, 'Develop New Homepage', 'Implement the new homepage design.', 'To Do', 'Medium', '2024-09-04 10:29:23', '2024-09-04 10:29:23', '2024-09-22'),
(3, 2, 3, 'Create Wireframes', 'Design wireframes for the mobile app.', 'Done', 'High', '2024-09-04 10:29:23', '2024-09-04 10:29:23', '2024-08-01'),
(4, 2, 4, 'Develop Backend API', 'Set up the backend API for the app.', 'In Progress', 'High', '2024-09-04 10:29:23', '2024-09-04 10:29:23', '2024-09-10'),
(5, 3, 5, 'Data Migration', 'Migrate data from the old CRM to the new one.', 'To Do', 'Low', '2024-09-04 10:29:23', '2024-09-04 10:29:23', '2024-10-01'),
(6, 3, 6, 'Customize CRM', 'Customize the CRM to fit company needs.', 'In Progress', 'Medium', '2024-09-04 10:29:23', '2024-09-04 10:29:23', '2024-09-25'),
(7, 4, 7, 'Set Up Cloud Infrastructure', 'Set up the infrastructure on AWS.', 'Done', 'High', '2024-09-04 10:29:23', '2024-09-04 10:29:23', '2024-07-30'),
(8, 4, 8, 'Test Cloud Performance', 'Ensure cloud infrastructure meets performance requirements.', 'In Progress', 'High', '2024-09-04 10:29:23', '2024-09-04 10:29:23', '2024-09-15'),
(9, 5, 9, 'Develop Tool Interface', 'Create user-friendly interfaces for internal tools.', 'To Do', 'Medium', '2024-09-04 10:29:23', '2024-09-04 10:29:23', '2024-09-20'),
(10, 5, 10, 'Deploy Internal Tools', 'Deploy tools for company-wide usage.', 'To Do', 'Low', '2024-09-04 10:29:23', '2024-09-04 10:29:23', '2024-09-30');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `task_tags`
--

CREATE TABLE `task_tags` (
  `task_tag_id` int(11) NOT NULL,
  `task_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `task_tags`
--

INSERT INTO `task_tags` (`task_tag_id`, `task_id`, `tag_id`) VALUES
(1, 1, 4),
(2, 1, 1),
(3, 2, 1),
(4, 2, 2),
(5, 3, 4),
(6, 4, 2),
(7, 4, 8),
(8, 5, 3),
(9, 6, 3),
(10, 7, 10),
(11, 8, 10),
(12, 9, 1),
(13, 9, 4),
(14, 10, 7),
(15, 10, 9);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'jdoe', 'jdoe@example.com', 'password123', '2024-09-04 10:29:23', '2024-09-04 10:29:23'),
(2, 'asmith', 'asmith@example.com', 'password456', '2024-09-04 10:29:23', '2024-09-04 10:29:23'),
(3, 'mjones', 'mjones@example.com', 'password789', '2024-09-04 10:29:23', '2024-09-04 10:29:23'),
(4, 'jblack', 'jblack@example.com', 'password321', '2024-09-04 10:29:23', '2024-09-04 10:29:23'),
(5, 'awhite', 'awhite@example.com', 'password654', '2024-09-04 10:29:23', '2024-09-04 10:29:23'),
(6, 'rwilliams', 'rwilliams@example.com', 'password987', '2024-09-04 10:29:23', '2024-09-04 10:29:23'),
(7, 'rking', 'rking@example.com', 'password147', '2024-09-04 10:29:23', '2024-09-04 10:29:23'),
(8, 'bwayne', 'bwayne@example.com', 'password258', '2024-09-04 10:29:23', '2024-09-04 10:29:23'),
(9, 'pclark', 'pclark@example.com', 'password369', '2024-09-04 10:29:23', '2024-09-04 10:29:23'),
(10, 'dprince', 'dprince@example.com', 'password741', '2024-09-04 10:29:23', '2024-09-04 10:29:23');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user_roles`
--

CREATE TABLE `user_roles` (
  `user_role_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `user_roles`
--

INSERT INTO `user_roles` (`user_role_id`, `user_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `task_id` (`task_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeksy dla tabeli `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`),
  ADD KEY `task_id` (`task_id`);

--
-- Indeksy dla tabeli `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indeksy dla tabeli `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`project_id`);

--
-- Indeksy dla tabeli `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indeksy dla tabeli `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`role_permission_id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `permission_id` (`permission_id`);

--
-- Indeksy dla tabeli `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indeksy dla tabeli `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`task_id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `assigned_to` (`assigned_to`);

--
-- Indeksy dla tabeli `task_tags`
--
ALTER TABLE `task_tags`
  ADD PRIMARY KEY (`task_tag_id`),
  ADD KEY `task_id` (`task_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeksy dla tabeli `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_role_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `permissions`
--
ALTER TABLE `permissions`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `projects`
--
ALTER TABLE `projects`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `role_permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT dla tabeli `tags`
--
ALTER TABLE `tags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `tasks`
--
ALTER TABLE `tasks`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `task_tags`
--
ALTER TABLE `task_tags`
  MODIFY `task_tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `user_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`task_id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Ograniczenia dla tabeli `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`task_id`);

--
-- Ograniczenia dla tabeli `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD CONSTRAINT `role_permissions_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`),
  ADD CONSTRAINT `role_permissions_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`permission_id`);

--
-- Ograniczenia dla tabeli `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`project_id`),
  ADD CONSTRAINT `tasks_ibfk_2` FOREIGN KEY (`assigned_to`) REFERENCES `users` (`user_id`);

--
-- Ograniczenia dla tabeli `task_tags`
--
ALTER TABLE `task_tags`
  ADD CONSTRAINT `task_tags_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`task_id`),
  ADD CONSTRAINT `task_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`tag_id`);

--
-- Ograniczenia dla tabeli `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
