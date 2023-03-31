-- Datset spans dates of 01/08/2020 to 03/21/2023.

-- Due to issues with importing this dataset 'as is', I am importing each column
-- as a 'text' datatype, and will convert them to appropriate datatypes after import.
-- First, I'll convert all empty values to NULL.
UPDATE
	covid_cases
SET
	total_cases = CASE total_cases WHEN '' THEN NULL ELSE total_cases END,
    new_cases = CASE new_cases WHEN '' THEN NULL ELSE new_cases END,
    new_cases_smoothed = CASE new_cases_smoothed WHEN '' THEN NULL ELSE new_cases_smoothed END,
    total_deaths = CASE total_deaths WHEN '' THEN NULL ELSE total_deaths END,
    new_deaths = CASE new_deaths WHEN '' THEN NULL ELSE new_deaths END,
    new_deaths_smoothed = CASE new_deaths_smoothed WHEN '' THEN NULL ELSE new_deaths_smoothed END,
    total_cases_per_million = CASE total_cases_per_million WHEN '' THEN NULL ELSE total_cases_per_million END,
    new_cases_per_million = CASE new_cases_per_million WHEN '' THEN NULL ELSE new_cases_per_million END,
    new_cases_smoothed_per_million = CASE new_cases_smoothed_per_million WHEN '' THEN NULL ELSE new_cases_smoothed_per_million END,
    total_deaths_per_million = CASE total_deaths_per_million WHEN '' THEN NULL ELSE total_deaths_per_million END,
    new_deaths_per_million = CASE new_deaths_per_million WHEN '' THEN NULL ELSE new_deaths_per_million END,
    new_deaths_smoothed_per_million = CASE new_deaths_smoothed_per_million WHEN '' THEN NULL ELSE new_deaths_smoothed_per_million END,
    reproduction_rate = CASE reproduction_rate WHEN '' THEN NULL ELSE reproduction_rate END,
    icu_patients = CASE icu_patients WHEN '' THEN NULL ELSE icu_patients END,
    icu_patients_per_million = CASE icu_patients_per_million WHEN '' THEN NULL ELSE icu_patients_per_million END,
    hosp_patients = CASE hosp_patients WHEN '' THEN NULL ELSE hosp_patients END,
    hosp_patients_per_million = CASE hosp_patients_per_million WHEN '' THEN NULL ELSE hosp_patients_per_million END,
    weekly_icu_admissions = CASE weekly_icu_admissions WHEN '' THEN NULL ELSE weekly_icu_admissions END,
    weekly_icu_admissions_per_million = CASE weekly_icu_admissions_per_million WHEN '' THEN NULL ELSE weekly_icu_admissions_per_million END,
    weekly_hosp_admissions = CASE weekly_hosp_admissions WHEN '' THEN NULL ELSE weekly_hosp_admissions END,
    weekly_hosp_admissions_per_million = CASE weekly_hosp_admissions_per_million WHEN '' THEN NULL ELSE weekly_hosp_admissions_per_million END;

UPDATE
	covid_vaccinations
SET
	total_tests = CASE total_tests WHEN '' THEN NULL ELSE total_tests END,
    new_tests = CASE new_tests WHEN '' THEN NULL ELSE new_tests END,
    total_tests_per_thousand = CASE total_tests_per_thousand WHEN '' THEN NULL ELSE total_tests_per_thousand END,
    new_tests_per_thousand = CASE new_tests_per_thousand WHEN '' THEN NULL ELSE new_tests_per_thousand END,
    new_tests_smoothed = CASE new_tests_smoothed WHEN '' THEN NULL ELSE new_tests_smoothed END,
    new_tests_smoothed_per_thousand = CASE new_tests_smoothed_per_thousand WHEN '' THEN NULL ELSE new_tests_smoothed_per_thousand END,
    positive_rate = CASE positive_rate WHEN '' THEN NULL ELSE positive_rate END,
    tests_per_case = CASE tests_per_case WHEN '' THEN NULL ELSE tests_per_case END,
    tests_units = CASE tests_units WHEN '' THEN NULL ELSE tests_units END,
    total_vaccinations = CASE total_vaccinations WHEN '' THEN NULL ELSE total_vaccinations END,
    people_vaccinated = CASE people_vaccinated WHEN '' THEN NULL ELSE people_vaccinated END,
    people_fully_vaccinated = CASE people_fully_vaccinated WHEN '' THEN NULL ELSE people_fully_vaccinated END,
    total_boosters = CASE total_boosters WHEN '' THEN NULL ELSE total_boosters END,
    new_vaccinations = CASE new_vaccinations WHEN '' THEN NULL ELSE new_vaccinations END,
    new_vaccinations_smoothed = CASE new_vaccinations_smoothed WHEN '' THEN NULL ELSE new_vaccinations_smoothed END,
    total_vaccinations_per_hundred = CASE total_vaccinations_per_hundred WHEN '' THEN NULL ELSE total_vaccinations_per_hundred END,
    people_vaccinated_per_hundred = CASE people_vaccinated_per_hundred WHEN '' THEN NULL ELSE people_vaccinated_per_hundred END,
    people_fully_vaccinated_per_hundred = CASE people_fully_vaccinated_per_hundred WHEN '' THEN NULL ELSE people_fully_vaccinated_per_hundred END,
    total_boosters_per_hundred = CASE total_boosters_per_hundred WHEN '' THEN NULL ELSE total_boosters_per_hundred END,
    new_vaccinations_smoothed_per_million = CASE new_vaccinations_smoothed_per_million WHEN '' THEN NULL ELSE new_vaccinations_smoothed_per_million END,
    new_people_vaccinated_smoothed = CASE new_people_vaccinated_smoothed WHEN '' THEN NULL ELSE new_people_vaccinated_smoothed END,
    new_people_vaccinated_smoothed_per_hundred = CASE new_people_vaccinated_smoothed_per_hundred WHEN '' THEN NULL ELSE new_people_vaccinated_smoothed_per_hundred END,
    stringency_index = CASE stringency_index WHEN '' THEN NULL ELSE stringency_index END,
    population_density = CASE population_density WHEN '' THEN NULL ELSE population_density END,
    median_age = CASE median_age WHEN '' THEN NULL ELSE median_age END,
    aged_65_older = CASE aged_65_older WHEN '' THEN NULL ELSE aged_65_older END,
    aged_70_older = CASE aged_70_older WHEN '' THEN NULL ELSE aged_70_older END,
    gdp_per_capita = CASE gdp_per_capita WHEN '' THEN NULL ELSE gdp_per_capita END,
    extreme_poverty = CASE extreme_poverty WHEN '' THEN NULL ELSE extreme_poverty END,
    cardiovasc_death_rate = CASE cardiovasc_death_rate WHEN '' THEN NULL ELSE cardiovasc_death_rate END,
    diabetes_prevalence = CASE diabetes_prevalence WHEN '' THEN NULL ELSE diabetes_prevalence END,
    female_smokers = CASE female_smokers WHEN '' THEN NULL ELSE female_smokers END,
    male_smokers = CASE male_smokers WHEN '' THEN NULL ELSE male_smokers END,
    handwashing_facilities = CASE handwashing_facilities WHEN '' THEN NULL ELSE handwashing_facilities END,
    hospital_beds_per_thousand = CASE hospital_beds_per_thousand WHEN '' THEN NULL ELSE hospital_beds_per_thousand END,
    life_expectancy = CASE life_expectancy WHEN '' THEN NULL ELSE life_expectancy END,
    human_development_index = CASE human_development_index WHEN '' THEN NULL ELSE human_development_index END,
    excess_mortality_cumulative_absolute = CASE excess_mortality_cumulative_absolute WHEN '' THEN NULL ELSE excess_mortality_cumulative_absolute END,
    excess_mortality_cumulative = CASE excess_mortality_cumulative WHEN '' THEN NULL ELSE excess_mortality_cumulative END,
    excess_mortality = CASE excess_mortality WHEN '' THEN NULL ELSE excess_mortality END,
    excess_mortality_cumulative_per_million = CASE excess_mortality_cumulative_per_million WHEN '' THEN NULL ELSE excess_mortality_cumulative_per_million END;


-- Then I'll convert the columns to the appropriate data type.
ALTER TABLE covid_cases
	MODIFY COLUMN iso_code CHAR(10),
	MODIFY COLUMN continent VARCHAR(100),
	MODIFY COLUMN location VARCHAR(100),
	MODIFY COLUMN date DATE,
	MODIFY COLUMN population BIGINT(255),
	MODIFY COLUMN total_cases INT(255),
	MODIFY COLUMN new_cases INT(255),
	MODIFY COLUMN new_cases_smoothed FLOAT(24),
	MODIFY COLUMN total_deaths INT(255),
	MODIFY COLUMN new_deaths INT(255),
	MODIFY COLUMN new_deaths_smoothed FLOAT(24),
	MODIFY COLUMN total_cases_per_million FLOAT(24),
	MODIFY COLUMN new_cases_per_million FLOAT(24),
	MODIFY COLUMN new_cases_smoothed_per_million FLOAT(24),
	MODIFY COLUMN total_deaths_per_million FLOAT(24),
	MODIFY COLUMN new_deaths_per_million FLOAT(24),
	MODIFY COLUMN new_deaths_smoothed_per_million FLOAT(24),
	MODIFY COLUMN reproduction_rate FLOAT(24),
	MODIFY COLUMN icu_patients INT(255),
	MODIFY COLUMN icu_patients_per_million FLOAT(24),
	MODIFY COLUMN hosp_patients INT(255),
	MODIFY COLUMN hosp_patients_per_million FLOAT(24),
	MODIFY COLUMN weekly_icu_admissions INT(255),
	MODIFY COLUMN weekly_icu_admissions_per_million FLOAT(24),
	MODIFY COLUMN weekly_hosp_admissions INT(255),
	MODIFY COLUMN weekly_hosp_admissions_per_million FLOAT(24);

ALTER TABLE covid_vaccinations
	MODIFY COLUMN date DATE,
    MODIFY COLUMN total_tests BIGINT(255),
    MODIFY COLUMN new_tests INT(255),
    MODIFY COLUMN total_tests_per_thousand FLOAT(24),
    MODIFY COLUMN new_tests_per_thousand FLOAT(24),
    MODIFY COLUMN new_tests_smoothed INT(255),
    MODIFY COLUMN new_tests_smoothed_per_thousand FLOAT(24),
    MODIFY COLUMN positive_rate FLOAT(24),
    MODIFY COLUMN tests_per_case FLOAT(24),
    MODIFY COLUMN tests_units TEXT,
    MODIFY COLUMN total_vaccinations BIGINT(255),
    MODIFY COLUMN people_vaccinated BIGINT(255),
    MODIFY COLUMN people_fully_vaccinated BIGINT(255),
    MODIFY COLUMN total_boosters BIGINT(255),
    MODIFY COLUMN new_vaccinations BIGINT(255),
    MODIFY COLUMN new_vaccinations_smoothed INT(255),
    MODIFY COLUMN total_vaccinations_per_hundred FLOAT(24),
    MODIFY COLUMN people_vaccinated_per_hundred FLOAT(24),
    MODIFY COLUMN people_fully_vaccinated_per_hundred FLOAT(24),
    MODIFY COLUMN total_boosters_per_hundred FLOAT(24),
    MODIFY COLUMN new_vaccinations_smoothed_per_million INT(255),
    MODIFY COLUMN new_people_vaccinated_smoothed INT(255),
    MODIFY COLUMN new_people_vaccinated_smoothed_per_hundred FLOAT(24),
    MODIFY COLUMN stringency_index FLOAT(24),
    MODIFY COLUMN population_density FLOAT(24),
    MODIFY COLUMN median_age FLOAT(24),
    MODIFY COLUMN aged_65_older FLOAT(24),
    MODIFY COLUMN aged_70_older FLOAT(24),
    MODIFY COLUMN gdp_per_capita FLOAT(24),
    MODIFY COLUMN extreme_poverty FLOAT(24),
    MODIFY COLUMN cardiovasc_death_rate FLOAT(24),
    MODIFY COLUMN diabetes_prevalence FLOAT(24),
    MODIFY COLUMN female_smokers FLOAT(24),
    MODIFY COLUMN male_smokers FLOAT(24),
    MODIFY COLUMN handwashing_facilities FLOAT(24),
    MODIFY COLUMN hospital_beds_per_thousand FLOAT(24),
    MODIFY COLUMN life_expectancy	FLOAT(24),
    MODIFY COLUMN human_development_index FLOAT(24),
    MODIFY COLUMN excess_mortality_cumulative_absolute FLOAT(24),
    MODIFY COLUMN excess_mortality_cumulative FLOAT(24),
    MODIFY COLUMN excess_mortality FLOAT(24),
    MODIFY COLUMN excess_mortality_cumulative_per_million FLOAT(24);



-- Start with a check that the imported tables have the appropriate number of values.
SELECT COUNT(Location)
FROM covid_cases;

SELECT COUNT(iso_code)
FROM covid_vaccinations;
-- Output of 297338 for both, which is as expected.

-- Total Cases vs Total Deaths
SELECT Location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 AS PercentDead
FROM covid_cases
ORDER BY 1,2;

-- Total Cases vs Population (of United States)
SELECT Location, date, Population, total_cases, (total_cases/Population)*100 AS CasesPerPopulation
FROM covid_cases
WHERE Location LIKE 'United States'
ORDER BY 1,2;


-- CASES GROUPING BY CATEGORY

-- Infection rates by country.
SELECT Location, Population, MAX(total_cases) AS MaxNumberOfCases, MAX((total_cases/population))*100 AS PercentOfPopulationInfected
FROM covid_cases
WHERE continent IS NOT NULL
GROUP BY Location, Population
ORDER BY 4 DESC;
-- Cyprus, San Marino, and Austria lead in terms of percentage of population infected at around 70%.

-- Death rates by country.
CREATE VIEW TotalDeadByCountry AS
SELECT Location, MAX(total_deaths) AS MaxNumberOfDeaths, MAX((total_deaths/population))*100 AS PercentOfPopulationDead
FROM covid_cases
WHERE continent IS NOT NULL
GROUP BY Location
ORDER BY 3 DESC;


-- JOIN TABLES

SELECT cases.continent, cases.location, cases.date, cases.population, vacs.new_vaccinations
FROM covid_cases cases
JOIN covid_vaccinations vacs
	ON cases.location = vacs.location
    AND cases.date = vacs.date
WHERE cases.continent IS NOT NULL
ORDER BY 2,3;

-- USING COMMON TABLE EXPRESSIONS (CTEs) TO ENABLE COMPLEX QUERIES
-- Calculating a rolling sum of new vaccinations by country.

WITH PopulationVsVaccinations (continent, Location, Date, Population, New_Vaccinations, RollingVax)
AS (
    SELECT cases.Continent, cases.Location, cases.Date, cases.Population, vacs.new_vaccinations, 
		SUM(vacs.new_vaccinations) OVER (PARTITION BY cases.Location ORDER BY cases.Location, cases.Date) AS RollingVax
	FROM covid_cases cases
    JOIN covid_vaccinations vacs
		ON cases.location = vacs.location
        AND cases.date = vacs.date
	WHERE cases.continent IS NOT NULL
    )
SELECT *
FROM PopulationVsVaccinations;
