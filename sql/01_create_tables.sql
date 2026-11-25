CREATE TABLE energielabels (
	"Nummer" int4 NULL,
	"Registratiedatum" int4 NULL,
	"Opnamedatum" int4 NULL,
	"GeldigTot" int4 NULL,
	"Certificaathouder" varchar(200) NULL,
	"SoortOpname" varchar(200) NULL,
	"Status" varchar(200) NULL,
	"Berekeningstype" varchar(200) NULL,
	"OpBasisVanReferentiegebouw" varchar(200) NULL,
	"Gebouwklasse" varchar(200) NULL,
	"Gebouwtype" varchar(200) NULL,
	"Gebouwsubtype" varchar(200) NULL,
	"SBICode" varchar(200) NULL,
	"Postcode" varchar(200) NULL,
	"Huisnummer" int4 NULL,
	"Huisletter" varchar(200) NULL,
	"Huisnummertoevoeging" varchar(200) NULL,
	"Detailaanduiding" varchar(200) NULL,
	"BAGVerblijfsobjectID" varchar(200) NULL,
	"BAGLigplaatsID" varchar(200) NULL,
	"BAGStandplaatsID" varchar(200) NULL,
	"BAGPandIDs" varchar(200) NULL,
	"Bouwjaar" int4 NULL,
	"GebruiksoppervlakteThermischeZone" varchar(200) NULL,
	"Compactheid" varchar(200) NULL,
	"Energieklasse" varchar(200) NULL,
	"EnergieIndex" varchar(200) NULL,
	"EnergieIndexEMGForfaitair" varchar(200) NULL,
	"Energiebehoefte" varchar(200) NULL,
	"PrimaireFossieleEnergie" varchar(200) NULL,
	"PrimaireFossieleEnergieEMGForfaitair" varchar(200) NULL,
	"AandeelHernieuwbareEnergie" varchar(200) NULL,
	"AandeelHernieuwbareEnergieEMGForfaitair" varchar(200) NULL,
	"Temperatuuroverschrijding" varchar(200) NULL,
	"Warmtebehoefte" varchar(200) NULL,
	"EisEnergiebehoefte" varchar(200) NULL,
	"EisPrimaireFossieleEnergie" varchar(200) NULL,
	"EisAandeelHernieuwbareEnergie" varchar(200) NULL,
	"EisTemperatuuroverschrijding" varchar(200) NULL,
	"BerekendeCO2Emissie" varchar(200) NULL,
	"BerekendeEnergieverbruik" varchar(200) NULL,
	projectnaam varchar(200) NULL,
	projectobject varchar(200) NULL
);
	

CREATE TABLE energieverbruik (
	"Woningkenmerken" varchar(200) NULL,
	"Wijken en Buurten" varchar(200) NULL,
	naam varchar(200) NULL,
	m3 varchar(200) NULL,
	"kWh" int4 NULL,
	"kWh_1" varchar(200) NULL,
	"%" varchar(200) NULL,
	code int4 NULL
);


CREATE TABLE hoofdverwarming (
	"Wijken en buurten" varchar(200) NULL,
	"Type verwarmingsinstallatie" varchar(200) NOT NULL,
	naam varchar(200) NULL,
	"ID" varchar(200) NOT NULL,
	"%" int4 NULL,
	CONSTRAINT pk_hoofdverwarming PRIMARY KEY ("ID", "Type verwarmingsinstallatie")
);

CREATE TABLE laadpalen_rotterdam (
	"OBJECTCODE" varchar(200) NULL,
	"ID" int4 NULL,
	"Status" varchar(200) NULL,
	"Paalnr" varchar(200) NULL,
	"BEHEERDER" varchar(200) NULL,
	"EIGENAAR" varchar(200) NULL,
	"Buurt" varchar(200) NULL,
	"Straat" varchar(200) NULL,
	"Laatste mutatie" varchar(200) NULL
);
	
	

CREATE TABLE zonnestroom (
	"Wijken en buurten" varchar(200) NULL,
	naam varchar(200) NULL,
	omschrijving varchar(200) NULL,
	"ID" varchar(200) NOT NULL,
	code int4 NULL,
	aantal varchar(200) NULL,
	"kWp" int4 NULL,
	CONSTRAINT zonnestrroom_pkey PRIMARY KEY ("ID")
);

CREATE TABLE nxo (
	start_datum varchar(200) NULL,
	"NL01485" float4 NULL,
	"NL01487" float4 NULL,
	"NL01488" float4 NULL,
	"NL01489" float4 NULL,
	"NL01491" float4 NULL,
	"NL01493" float4 NULL,
	"NL01494" float4 NULL,
	"NL01495" float4 NULL,
	"NL01496" float4 NULL,
	"NL01497" float4 NULL,
	"NL01912" float4 NULL,
	"NL01913" float4 NULL,
	"NL10107" float4 NULL,
	"NL10131" float4 NULL,
	"NL10133" float4 NULL,
	"NL10136" float4 NULL,
	"NL10138" float4 NULL,
	"NL10230" float4 NULL,
	"NL10235" float4 NULL,
	"NL10236" float4 NULL,
	"NL10237" float4 NULL,
	"NL10240" float4 NULL,
	"NL10241" float4 NULL,
	"NL10246" float4 NULL,
	"NL10247" float4 NULL,
	"NL10248" float4 NULL,
	"NL10301" float4 NULL,
	"NL10318" float4 NULL,
	"NL10404" float4 NULL,
	"NL10418" float4 NULL,
	"NL10437" float4 NULL,
	"NL10442" float4 NULL,
	"NL10444" float4 NULL,
	"NL10445" float4 NULL,
	"NL10446" float4 NULL,
	"NL10449" float4 NULL,
	"NL10450" float4 NULL,
	"NL10538" float4 NULL,
	"NL10550" float4 NULL,
	"NL10617" float4 NULL,
	"NL10633" float4 NULL,
	"NL10636" float4 NULL,
	"NL10639" float4 NULL,
	"NL10641" float4 NULL,
	"NL10643" float4 NULL,
	"NL10644" float4 NULL,
	"NL10722" float4 NULL,
	"NL10738" float4 NULL,
	"NL10741" float4 NULL,
	"NL10742" float4 NULL,
	"NL10807" float4 NULL,
	"NL10818" float4 NULL,
	"NL10918" float4 NULL,
	"NL10929" float4 NULL,
	"NL10934" float4 NULL,
	"NL10937" float4 NULL,
	"NL10938" float4 NULL,
	"NL49002" float4 NULL,
	"NL49003" float4 NULL,
	"NL49007" float4 NULL,
	"NL49012" float4 NULL,
	"NL49014" float4 NULL,
	"NL49017" float4 NULL,
	"NL49019" float4 NULL,
	"NL49020" float4 NULL,
	"NL49021" float4 NULL,
	"NL49022" float4 NULL,
	"NL49546" float4 NULL,
	"NL49551" float4 NULL,
	"NL49553" float4 NULL,
	"NL49561" float4 NULL,
	"NL49564" float4 NULL,
	"NL49565" float4 NULL,
	"NL49680" varchar(200) NULL,
	"NL49701" float4 NULL,
	"NL49703" float4 NULL,
	"NL49704" float4 NULL
);


CREATE TABLE buurt (
	buurt_code int4 NULL,
	buurtnaam varchar(100) NULL
);

CREATE TABLE evz_locaties (
	id varchar(200) NULL,
	wijken_en_buurten varchar(200) NULL,
	adres_id int4 NULL
);

CREATE TABLE gemeente (
	gemeente_code int4 NULL,
	gemeentenaam varchar(50) NULL
);

CREATE TABLE locaties_2024 (
	adres_id int4 NULL,
	postcode varchar(50) NULL,
	buurt_code int4 NULL,
	wijk_code varchar(20) NULL,
	gemeente_code int4 NULL
);

CREATE TABLE wijk_2024 (
	wijk_code varchar(20) NOT NULL,
	wijknaam varchar(255) NULL,
	CONSTRAINT wijk_2024_pkey PRIMARY KEY (wijk_code)
);
