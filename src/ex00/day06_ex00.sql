CREATE TABLE person_discounts (
    id integer PRIMARY KEY,
    person_id integer,
    pizzeria_id integer,
    discount NUMERIC(5, 2),
    CONSTRAINT fk_person_discounts_person_id FOREIGN KEY (person_id) REFERENCES person(id),
    CONSTRAINT fk_person_discounts_pizzeria_id FOREIGN KEY (pizzeria_id) REFERENCES pizzeria(id)
);