CREATE TABLE IF NOT EXISTS complaints
(
	complaint_id SERIAL PRIMARY KEY,
	user_id INT NOT NULL,
	category_id INT NOT NULL,
	title VARCHAR(100) NOT NULL,
	discription TEXT NOT NULL,
	status VARCHAR(25) NOT NULL DEFAULT 'OPEN',
	priority_request VARCHAR(20) NOT NULL,
	priority_final VARCHAR(20),
	priority_updated_by INT,
	priority_updated_at TIMESTAMP,
	created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	resolved_at TIMESTAMP,

	CONSTRAINT fk_complaints_user 
		FOREIGN KEY (user_id) 
		REFERENCES users(user_id) 
		ON DELETE RESTRICT,

	CONSTRAINT fk_complaints_category 
		FOREIGN KEY (category_id) 
		REFERENCES categories(category_id) 
		ON DELETE RESTRICT,

	CONSTRAINT fk_priority_updated_by 
		FOREIGN KEY (priority_updated_by) 
		REFERENCES users(user_id) 
		ON DELETE SET NULL
);


INSERT INTO complaints
(user_id, category_id, title, discription, priority_request)
VALUES
(1, 1, 'Water leakage in bathroom','Leakage from washbasin pipe since morning','High'),
(2, 2, 'Power fluctuation','Voltage fluctuation causing lights to flicker','Medium'),
(3, 3, 'Lift not working','Lift stuck between floors','High'),
(4, 4, 'Main gate left open','Security gate remains open late at night','Medium'),
(5, 5, 'Garbage not collected','Garbage not picked up for two days','Low');
