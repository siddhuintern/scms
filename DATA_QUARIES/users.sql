CREATE EXTENSION IF NOT EXISTS pgcrypto;
Create TABLE users 
(
	user_id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	email VARCHAR(150) NOT NULL UNIQUE,
	password TEXT NOT NULL,
	role_id INT NOT NULL,
	CONSTRAINT fk_user_role
		FOREIGN KEY(role_id)
		REFERENCES roles(role_id)
		ON DELETE  RESTRICT
);


INSERT INTO users(name,email,password,role_id)
VALUES 
('Raju Singh','raju@xyz.com',crypt('password1234',gen_salt('bf')),1),

('Sham Naik','sham@xyz.com',crypt('password1234',gen_salt('bf')),2),

('Rinku Takur','rinku@xyz.com',crypt('password1234',gen_salt('bf')),3),

('Ajay Bhatt','ajay@xyz.com',crypt('password1234',gen_salt('bf')),4),

('Danish Khan','danish@xyz.com',crypt('password1234',gen_salt('bf')),8);
