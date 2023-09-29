CREATE TYPE user_status AS ENUM ('employed', 'un_employed', 'self_employed');

ALTER TABLE users
ALTER COLUMN status user_status,
ALTER COLUMN email SET DATA TYPE VARCHAR(300)