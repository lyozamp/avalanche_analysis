-- Create Daily_obs table to store the daily_obs.csv
CREATE TABLE daily_obs (
     obs_date_time DATE,
     obs_location VARCHAR(40),
	 sky_cover VARCHAR(15),
	 precip_type VARCHAR(40),
	 air_temp_min DECIMAL,
	 air_temp_max DECIMAL,
	 air_temp_current DECIMAL,
	 snow_height DECIMAL,
	 new_snow_height DECIMAL,
	 wind_direction VARCHAR(10),
	 wind_speed DECIMAL,
	 wind_gust DECIMAL,
	 hazard DECIMAL			 
);

DROP TABLE daily_obs

-- Create avalanche_obs table to store the avalanche_obs.csv
CREATE TABLE avalanche_obs (
	avalanche_atlas_id INT,
	obs_date_time DATE, 
	"data.relative_size" DECIMAL, 
	"data.path_elevation" INT
);
	
DROP TABLE avalanche_obs

-- Create the avalanche_atlas table to store the avalanche_atlas.csv
CREATE TABLE avalanche_atlas (
	id INT,
	"data.aspect" VARCHAR(10),
	"data.start_elev" DECIMAL,
	"data.location_lat" DECIMAL, 
	"data.location_long" DECIMAL
);

DROP TABLE avalanche_atlas

-- join the avalanche_obs and daily_obs tables to convert to csv
-- for machine learning model
SELECT 
 	daily_obs.obs_date_time,
    daily_obs.obs_location,
	daily_obs.sky_cover,
	daily_obs.precip_type, 
	daily_obs.air_temp_min, 
	daily_obs.air_temp_max,
	daily_obs.air_temp_current, 
	daily_obs.snow_height,
	daily_obs.new_snow_height, 
	daily_obs.wind_direction,
	daily_obs.wind_speed,
	daily_obs.wind_gust,
	daily_obs.hazard,
	avalanche_obs.obs_date_time AS avalanche_obs_date_time
INTO avalanche_data
FROM daily_obs
FULL OUTER JOIN avalanche_obs
ON daily_obs.obs_date_time = avalanche_obs.obs_date_time
WHERE daily_obs.obs_date_time >= '2019-01-01';

DROP TABLE avalanche_data