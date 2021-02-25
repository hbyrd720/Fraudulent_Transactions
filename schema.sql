CREATE TABLE card_holder (
	id INT,
	name VARCHAR(50),
	PRIMARY KEY (id)
);

CREATE TABLE credit_card (
	card VARCHAR(20),
	id_card_holder INT,
	PRIMARY KEY (card),
	FOREIGN KEY (id_card_holder) REFERENCES card_holder(id)
);

CREATE TABLE merchant_category(
	id INT,
	name VARCHAR(50),
	PRIMARY KEY (id)
);

CREATE TABLE merchant(
	id INT,
	name VARCHAR(50),
	id_merchant_category INT,
	PRIMARY KEY (id),
	FOREIGN KEY (id_merchant_category) REFERENCES merchant_category(id)
);

CREATE TABLE transaction (
	id INT,
	date TIMESTAMP,
	amount FLOAT,
	CARD VARCHAR(20),
	id_merchant INT,
	PRIMARY KEY (id),
	FOREIGN KEY (card) REFERENCES credit_card(card),
	FOREIGN KEY (id_merchant) REFERENCES merchant(id)
);