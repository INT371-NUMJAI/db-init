ALTER TABLE foundations DROP COLUMN create_date;
ALTER TABLE foundations ADD COLUMN create_date DATE DEFAULT NOW();

ALTER TABLE users DROP COLUMN create_date;
ALTER TABLE users ADD COLUMN create_date DATE DEFAULT NOW();
