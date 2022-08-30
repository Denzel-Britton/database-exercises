-- CREATE TABLE IF NOT EXISTS quotes (
--     ...
-- );
-- CREATE TABLE albums (
--                         id INT UNSIGNED NOT NULL AUTO_INCREMENT,
--                         artist VARCHAR(50) DEFAULT 'NONE',
--                         name VARCHAR(100) NOT NULL,
--                         release_date INTEGER,
--                         sales FLOAT,
--                         genre VARCHAR(50),
--                         PRIMARY KEY (id)
-- );
use denzel;
select * from albums //
-- //id — auto-incrementing unsigned integer primary key
-- artist — string for storing the recording artist name
-- name — string for storing a record name
-- release_date — integer representing year record was released
-- sales — floating point value for number of records sold (in millions)
-- genre — string for storing the record's genre(s)

use denzel;
select * from albums