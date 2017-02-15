USE EmmetBlue;

CREATE TABLE student_profile_fieldtitles (
	field_title_id TINYINT UNSIGNED AUTO_INCREMENT,
	field_title_name VARCHAR(50) UNIQUE NOT NULL,
	field_type VARCHAR(20) NOT NULL,
	field_title_description VARCHAR(500),

	PRIMARY KEY (field_title_id)
);

CREATE TABLE student_profile_info (
	profile_id TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	profile_admission_number VARCHAR(20) UNIQUE NOT NULL,
	profile_records_fields JSON,
	date_created DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);