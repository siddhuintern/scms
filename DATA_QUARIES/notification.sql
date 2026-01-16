CREATE TABLE IF NOT EXISTS notification 
(
	notification_id SERIAL PRIMARY KEY ,
	complaint_id INT NOT NULL,
	user_id INT NOT NULL,
	message VARCHAR(100) NOT NULL,
	created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

	CONSTRAINT fk_notification_complaint
		FOREIGN KEY (complaint_id) 
		REFERENCES complaints(complaint_id)
		ON DELETE CASCADE,

	CONSTRAINT fk_notification_user
	FOREIGN KEY (user_id)
	REFERENCES users(user_id)
	ON DELETE CASCADE
	
);

INSERT INTO notification(complaint_id,user_id,message)
VALUES 
(3, 2, 'Your complaint has been registered successfully.'),
(3, 5, 'A new complaint has been assigned to you.'),
(4, 2, 'Your complaint status has been updated to IN PROGRESS.'),
(4, 2, 'Your complaint has been resolved. Please check and confirm.');