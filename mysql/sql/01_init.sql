CREATE TABLE ip_blocks (
  ip_from int unsigned NOT NULL,
  ip_to int unsigned NOT NULL,
  network varchar(32) NOT NULL,
  geoname_id int unsigned NOT NULL,
  registered_country_geoname_id int unsigned NOT NULL,
  represented_country_geoname_id int unsigned NOT NULL,
  is_anonymous_proxy tinyint(1) NOT NULL,
  is_satellite_provider tinyint(1) NOT NULL,
  postal_code varchar(32) NOT NULL,
  latitude float(8,4) NOT NULL,
  longitude float(8,4) NOT NULL,
  accuracy_radius smallint unsigned NOT NULL
);


CREATE TABLE ip_locations (
  geoname_id int unsigned NOT NULL,
  locale_code varchar(32) NOT NULL,
  continent_code char(2) NOT NULL,
  continent_name varchar(32) NOT NULL,
  country_iso_code char(2) NOT NULL,
  country_name varchar(64) NOT NULL,
  subdivision_1_iso_code varchar(3) NOT NULL,
  subdivision_1_name varchar(128) COLLATE 'utf8_unicode_ci' NOT NULL,
  subdivision_2_iso_code varchar(3) NOT NULL,
  subdivision_2_name varchar(128) COLLATE 'utf8_unicode_ci' NOT NULL,
  city_name varchar(128) COLLATE 'utf8_unicode_ci' NOT NULL,
  metro_code smallint unsigned NOT NULL,
  time_zone varchar(64) NOT NULL
);

ALTER TABLE ip_blocks ADD PRIMARY KEY ip_to (ip_to);
ALTER TABLE ip_locations ADD PRIMARY KEY geoname_id (geoname_id);

CREATE TABLE login_histories (
  id int NOT NULL AUTO_INCREMENT,
  update_time datetime NOT NULL,
  login_id varchar(64) NOT NULL,
  login_time datetime NOT NULL,
  ip_address varchar(16) NOT NULL,
  geoname_id int unsigned NOT NULL,
  country_iso_code char(2) NOT NULL,
  country_name varchar(64) NOT NULL,
  subdivision_1_name varchar(128) COLLATE 'utf8_unicode_ci' NOT NULL,
  PRIMARY KEY (id, login_id)
);

