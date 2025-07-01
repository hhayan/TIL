USE lecture;

CREATE TABLE dt_demo(
	id 			INT 	AUTO_INCREMENT PRIMARY KEY,
    name 		VARCHAR(20) NOT NULL,
    nickname 	VARCHAR(20),
    birth 		DATE,
    score 		FLOAT,
    Description TEXT,
    is_active 	BOOL DEFAULT TRUE,
    created_id 	DATETIME DEFAULT CURRENT_TIMESTAMP
);

