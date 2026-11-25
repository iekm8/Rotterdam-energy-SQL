-- Query’s die gebruikt zijn om de database te bewerken.
ALTER TABLE locaties_2024
ALTER COLUMN wijk_code TYPE INT
USING wijk_code::INT;

ALTER TABLE zonnestroom
ADD CONSTRAINT zonnestrroom_pkey PRIMARY KEY ("ID");

UPDATE zonnestroom
SET aantal = '0'
WHERE aantal = '.';    -- die "."door 0 vervangen

UPDATE zonnestroom
SET "kWp" = '0'
WHERE "kWp" = '.';

UPDATE energieverbruik
SET "m3" = '0'
WHERE "m3" = '.';

UPDATE energieverbruik
SET "kWh" = '0'
WHERE "kWh" = '.';

UPDATE energieverbruik
SET "kWh_1" = '0'
WHERE "kWh_1" = '.';

UPDATE energieverbruik
SET "%" = '0'
WHERE "%" = '.';

CREATE TABLE EVZ_locaties (
    ID int,
    Wijken_en_buurten varchar(200),
    adres_id int,

    CONSTRAINT fk_id
        FOREIGN KEY (ID)
        REFERENCES hoofdverwarming(ID),

    CONSTRAINT fk_adres
        FOREIGN KEY (adres_id)
        REFERENCES locaties_2024(adres_id)
);



ALTER TABLE energieverbruik
ADD CONSTRAINT pk_energieverbruik
PRIMARY KEY ("Wijken en Buurten", "Woningkenmerken");


ALTER TABLE hoofdverwarming
ADD CONSTRAINT pk_hoofdverwarming
PRIMARY KEY ("ID", "Type verwarmingsinstallatie");


ALTER TABLE public.wijk_2024
ALTER COLUMN wijk_code
TYPE INTEGER
USING wijk_code::INTEGER;

UPDATE energieverbruik
SET "kWh" = '0'
WHERE "kWh" = '' OR "kWh" IS NULL;

ALTER TABLE energieverbruik
    ALTER COLUMN "kWh" TYPE INT4 USING "kWh"::INT4;
