{{ config(materialized='table') }}

with incidents_2016 as (
  Select 
    unique_key as id, 
    REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(descript, '/', '_'), '(', ''), ')', ''), '.', ''), ' ', '_'), '-', '_') as des,
    date,
  From {{ source('austin_incidents','austin_incidents_2016')}}
)

Select * from incidents_2016
WHERE des <> 'none'