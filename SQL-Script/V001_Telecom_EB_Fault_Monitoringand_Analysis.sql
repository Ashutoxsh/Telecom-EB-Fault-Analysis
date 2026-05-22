CREATE TABLE IF NOT EXISTS eb (
    sr_no              INT,
    Site_id             VARCHAR(50),
    Zone                VARCHAR(50),
    fault_category     VARCHAR(100),
    reason_of_fault    VARCHAR(200),
    allocation_date    DATE,
    turnaround_time    FLOAT,
    rectification_date DATE,
    estimate_amount    FLOAT,
    status             VARCHAR(50),
    approval_date      DATE,
    approval_amount    FLOAT
);


-- Removing/correcting irrlevent data -- 

DELETE FROM eb
WHERE EXTRACT(YEAR FROM Allocation_date) = 2018;

Select *
From EB
Where zone is null;

Delete From EB
Where zone is null;

Delete From EB
Where zone = 'Jhansi';

UPDATE eb
SET site_id = TRIM(site_id);

UPDATE eb
SET Site_id = 'BNDA-JC-01'
WHERE Site_id = 'BANDA-JC-01';

-- let's see... what's missing before analysis --
SELECT
  COUNT(*) FILTER (WHERE turnaround_time  IS NULL) AS null_tat,
  COUNT(*) FILTER (WHERE approval_date    IS NULL) AS null_approval,
  COUNT(*) FILTER (WHERE estimate_amount  IS NULL) AS null_estimate,
  COUNT(*) FILTER (WHERE fault_category   IS NULL) AS null_fault
FROM eb;

-- We are missing noting.. nearly perfection... --

-- Add derived columns --

Alter Table EB
ADD Column TAT_Category Varchar(20);

Update EB SET TAT_Category =
	CASE
		When turnaround_time < 7 Then 'Within SLA'
		When turnaround_time < 10 Then 'Slight Delay'
		When turnaround_time > 15 Then 'Breached'
		Else 'Unknown'
	End;


-- Which fault type is flooding our field teams? --

Select fault_category,
	Count(*) AS TotalFaults,
	Round(100.0 * Count(*) / SUM(Count(*)) Over(), 1) AS pctoftotal
From EB
Group By fault_category
Order By TotalFaults;


-- Which circle takes the longest to fix faults? --

Select
	zone,
	AVG(turnaround_time) AS AVGTAT
From EB
Group By zone
Order By AVGTAT DESC;


-- Monthly Fault Volume Trend --

Select 
	To_char(allocation_date, 'YYYY-MM') AS Months,
	Count(*) AS Total_faults
From EB
Group by Months
Order By Months;


-- SLA Breach Rate by Circle --
-- Which circles are consistently breaching SLA?--
Select
	zone,
	Count(*) AS Total_cases,
	Count(*) Filter(Where turnaround_time < 10) AS WithinSLA,
	Count(*) Filter(Where turnaround_time > 15) AS Breached,
	Round(100 * Count(*) Filter(Where Turnaround_time > 7)
	/Count(*), 1) As Breached_pct
From EB
Group By zone
order by Breached_pct;


Select Count(rectification_date)
From EB
Where rectification_date is not null;

CREATE VIEW duplicate_sites_details AS
SELECT *
FROM eb
WHERE site_id IN (
    SELECT site_id
    FROM eb
    GROUP BY site_id
    HAVING COUNT(*) > 2
);


CREATE VIEW unique_site_records AS
SELECT *
FROM eb
WHERE site_id IN (
    SELECT site_id
    FROM eb
   GROUP BY site_id
    HAVING COUNT(*) = 1
);


SELECT *
FROM eb
WHERE TRIM(site_id) = '';

select *
From unique_site_records

SELECT *
FROM eb
WHERE site_id IN (
    SELECT site_id
    FROM eb
    GROUP BY site_id
    HAVING COUNT(*) > 2
);


SELECT 
    rectified_count,
    COUNT(*) AS total_sites
FROM (
    SELECT 
        site_id,
        COUNT(*) AS rectified_count
    FROM eb
    GROUP BY site_id
) sub
GROUP BY rectified_count
ORDER BY rectified_count DESC;


Select *
FROM eb
WHERE site_id IN (
    SELECT site_id
    FROM eb
    GROUP BY site_id
    HAVING COUNT(*) = 5
)
ORDER BY site_id;


SELECT 
ROUND(
    (
        COUNT(DISTINCT CASE 
            WHEN site_count > 1 THEN site_id 
        END)::numeric
        /
        COUNT(DISTINCT site_id)
    ) * 100,
2
) AS repeat_fault_percentage
FROM (
    SELECT 
        site_id,
        COUNT(*) AS site_count
    FROM eb
    GROUP BY site_id
) sub;


Select *
From EB;






