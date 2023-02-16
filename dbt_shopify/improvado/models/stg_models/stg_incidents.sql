with incidents as (

Select 
 id, 
 des,
 date,
 time,
 address
From {{ source('austin_incidents','stg_incidents')}}
)

Select * from incidents