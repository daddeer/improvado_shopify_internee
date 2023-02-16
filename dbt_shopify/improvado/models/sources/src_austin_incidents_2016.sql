with source as (
      select * from {{ source('austin_incidents', 'austin_incidents_2016') }}
),
src_incidents_2016 as (
    select
        unique_key as id,
        descript as des,
        date,
        time,    

    from source
)
select * from src_incidents_2016
  
 