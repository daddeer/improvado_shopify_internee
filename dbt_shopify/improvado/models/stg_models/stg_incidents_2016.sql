with incidents as (

Select 
 unique_key as id, 
 descript as des,
 date,
 time,
 address
From {{ source('austin_incidents','austin_incidents_2016')}}
)

Select * from incidents