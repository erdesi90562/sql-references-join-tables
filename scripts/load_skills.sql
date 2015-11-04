-- load skills data from a csv file
\copy skills(language,framework) FROM 'data/skills.csv' WITH (HEADER true, FORMAT csv)
