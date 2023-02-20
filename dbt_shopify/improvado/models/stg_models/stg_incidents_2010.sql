{{ config(materialized='table') }}

with incidents_2010 as (
  Select 
    unique_key as id, 
    REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(descript, '/', '_'), '(', ''), ')', ''), '.', ''), ' ', '_'), '-', '_') as des,
    date,
  From {{ source('austin_incidents','austin_incidents_2010')}}
)

Select * from incidents_2010
WHERE des <> 'none'