CREATE TABLE categories (
    category_id SERIAL PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL UNIQUE
);
INSERT INTO categories(category_name)
VALUES
('Water & Plumbing'),
('Power & Electrical'),
('Furniture & Woodwork'),
('Lift / Elevator'),
('Cleaning & Sanitation'),
('Security & Safety');