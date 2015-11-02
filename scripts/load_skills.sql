-- load skills data from a csv file
\copy skills(language,framework) FROM 'data/skills.csv' WITH (FORMAT csv, HEADER true)
