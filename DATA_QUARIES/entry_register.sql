CREATE TABLE entry_register 
(
	entry_id SERIAL PRIMARY KEY ,
	visitor_name VARCHAR(50) NOT NULL,
	visitor_type VARCHAR(50) NOT NULL,
	purpose TEXT NOT NULL,
	entry_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	exit_time TIMESTAMP ,
	status VARCHAR(20) NOT NULL DEFAULT 'IN',
	security_user_id INT NOT NULL,

	CONSTRAINT fk_entry_security_user
	FOREIGN KEY (security_user_id)
	REFERENCES users(user_id)
	ON DELETE RESTRICT
);


INSERT INTO entry_register (visitor_name,visitor_type,purpose,entry_time,exit_time,status,security_user_id)
VALUES 
('Ash','Guest','FF1- Came to visit at my friend. ',CURRENT_TIMESTAMP,NULL,'IN',8),

('Mark','Delivery','TF11- Came to visit at my friend. ',CURRENT_TIMESTAMP,NULL,'IN',7),

('Nandu','Vendor','SF2- Came to visit at my friend. ',CURRENT_TIMESTAMP,NULL,'IN',2),

('Elaine','Service','FF9- Came to visit at my friend. ',CURRENT_TIMESTAMP,NULL,'IN',8),

('Joffrie','Guest','LF6- Came to visit at my friend. ',CURRENT_TIMESTAMP,NULL,'IN',1);