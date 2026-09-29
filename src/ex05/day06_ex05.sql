COMMENT ON TABLE person_discounts IS 'Table of special discounts for customers, broken down by pizzeria.';
COMMENT ON COLUMN person_discounts.id IS 'Unique record identifier (primary key).';
COMMENT ON COLUMN person_discounts.person_id IS 'Customer ID (foreign key to the person table).';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'Pizzeria identifier (foreign key referencing the pizzeria table).';
COMMENT ON COLUMN person_discounts.discount IS 'Personal discount rate as a percentage (from 0 to 100).';