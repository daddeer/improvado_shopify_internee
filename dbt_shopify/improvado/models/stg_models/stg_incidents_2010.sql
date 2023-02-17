{{ config(materialized='table') }}


with incidents_2010 as (

Select 
 unique_key as id, 
 descript as des,
 date,
 time,
 address
From {{ source('austin_incidents','austin_incidents_2010')}}
)

Select * from incidents_2010