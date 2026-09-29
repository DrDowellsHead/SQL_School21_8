CREATE SEQUENCE seq_person_discounts START WITH 1;

SELECT setval('seq_person_discounts', (SELECT COUNT(*) + 1 FROM person_discounts), false);

ALTER TABLE person_discounts
    ALTER COLUMN id SET DEFAULT nextval('seq_person_discounts');

-- Проверка: вставим тестовую строку без указания id
INSERT INTO person_discounts (person_id, pizzeria_id, discount)
VALUES (1, 1, 15)
RETURNING id;