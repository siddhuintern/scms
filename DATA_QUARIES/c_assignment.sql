CREATE TABLE IF NOT EXISTS c_assignment
(
	assignment_id SERIAL PRIMARY KEY,
	complaint_id INT NOT NULL,
	assigned_role_id INT NOT NULL,
	assigned_user_id INT,
	assigned_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

	CONSTRAINT fk_assignment_complaint 
		FOREIGN KEY (complaint_id)
		REFERENCES complaints(complaint_id)
		ON DELETE CASCADE,

	CONSTRAINT fk_assignment_role
		FOREIGN KEY (assigned_role_id)
		REFERENCES roles(role_id)
		ON DELETE RESTRICT ,
	
	CONSTRAINT fk_assignment_user  
		FOREIGN KEY (assigned_user_id)
		REFERENCES users(user_id)
		ON DELETE SET NULL
);