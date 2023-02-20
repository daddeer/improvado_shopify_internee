{{ config(materialized='table') }}

with incidents_2008 as (
  Select 
    unique_key as id, 
    REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(descript, '/', '_'), '(', ''), ')', ''), '.', ''), ' ', '_'), '-', '_') as des,
    date,
  From {{ source('austin_incidents','austin_incidents_2008')}}
)

Select * from incidents_2008
WHERE des <> 'none'

