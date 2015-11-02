-- load places data from a csv file
\copy places(population,name,country,region,longitude,latitude) FROM 'data/places.csv' WITH (FORMAT csv, HEADER true)
