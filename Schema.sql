-- Students Table
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);

-- Courses Table
CREATE TABLE courses (
    id SERIAL PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT NOW()
);

-- Enrollments Table
CREATE TABLE enrollments (
    id SERIAL PRIMARY KEY,
    student_id INT REFERENCES students(id),
    course_id INT REFERENCES courses(id),
    enrolled_at TIMESTAMP DEFAULT NOW()
);

-- Insert sample data
INSERT INTO students (name, email, created_at) VALUES
('Jeanne Karanu', 'jkaranu@gmail.com', '2025-09-01 10:00:00'),
('Joseline Othieno', 'jothieno@gmail.com', '2025-09-02 11:15:00'),
('Charles Weko', 'charlesweko@egmail.com', '2025-09-03 09:45:00'),
('Diana Juma', 'dianaj@gmail.com', '2025-09-04 14:20:00'),
('Ethan Liko', 'ethanliko@gmail.com', '2025-09-05 16:10:00');

INSERT INTO courses (title, description, created_at) VALUES
('SQL Basics', 'Intro to SQL and Databases', '2025-09-01 08:00:00'),
('Python for Beginners', 'Learn Python fundamentals', '2025-09-01 09:30:00'),
('Web Development 101', 'HTML, CSS, and JavaScript basics', '2025-09-02 10:00:00'),
('Data Analysis with SQL', 'Analyze data using SQL queries', '2025-09-03 11:00:00'),
('Intro to Machine Learning', 'Basics of ML algorithms', '2025-09-04 12:00:00');

INSERT INTO enrollments (student_id, course_id, enrolled_at) VALUES
(1, 1, '2025-09-06 09:00:00'),
(1, 2, '2025-09-06 09:15:00'),
(2, 3, '2025-09-07 10:30:00'),
(3, 1, '2025-09-08 11:00:00'),
(4, 5, '2025-09-09 13:45:00');
