--Query’s die gebruikt zijn om de database te onderzoeken/om inzichten te verkrijgen, inclusief views en joins.

select *
from locaties_2024
join wijk_2024
	on locaties_2024.wijk_code = wijk_2024.wijk_code;
 
select *
from locaties_2024
join gemeente
	on locaties_2024.gemeente_code = gemeente.gemeente_code;
 
select *
from locaties_2024
join buurt
	on locaties_2024.buurt_code = buurt.buurt_code;
 
select *
from locaties_2024
join energielabels 
	on locaties_2024.postcode = energielabels."Postcode" ;
 
select *
from EVZ_locaties
join Hoofdverwarming
	on EVZ_locaties.Wijken_en_Buurten = hoofdverwarming."Wijken en buurten"  ;
 
select *
from EVZ_locaties
join Energieverbruik
	on EVZ_locaties.Wijken_en_Buurten = Energieverbruik."Wijken en Buurten" ;
	
select *
from energielabels ey 
join EVZ_locaties
	on energielabels."Postcode" = EVZ_locaties.Wijken_en_Buurten;
 
select *
from EVZ_locaties
join Zonnestroom
	on EVZ_locaties.Wijken_en_Buurten = Zonnestroom."Wijken en buurten" ;

--inzicht: 

SELECT
  MIN("kWh") AS min_kwh,
  MAX("kWh") AS max_kwh,
  AVG("kWh") AS avg_kwh
FROM energieverbruik;


SELECT "kWh"
FROM energieverbruik
ORDER BY "kWh" DESC
LIMIT 10;


SELECT
  "Type verwarmingsinstallatie",
  COUNT(*) AS aantal
FROM hoofdverwarming
GROUP BY "Type verwarmingsinstallatie"
ORDER BY aantal DESC;


SELECT
  buurt_code,
  COUNT(*) AS adressen
FROM locaties_2024
GROUP BY buurt_code
ORDER BY adressen DESC;


SELECT
  MIN("kWp") AS min_kwp,
  MAX("kWp") AS max_kwp,
  AVG("kWp") AS avg_kwp
FROM zonnestroom;
