USE emmetblue;

CREATE TABLE class_tags (
	tag_id TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	tag_name VARCHAR(20) UNIQUE NOT NULL,
	tag_description VARCHAR(100)
);

CREATE TABLE class_info (
	class_id TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	class_name VARCHAR(30) UNIQUE NOT NULL,
	last_modified DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP()
);

CREATE TABLE class_info_tags (
	rel_id TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	class TINYINT UNSIGNED NOT NULL,
	tag TINYINT UNSIGNED NOT NULL,
	value VARCHAR(50),

	FOREIGN KEY (class) REFERENCES class_info(class_id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (tag) REFERENCES class_tags(tag_id) ON UPDATE CASCADE ON DELETE RESTRICT
)
