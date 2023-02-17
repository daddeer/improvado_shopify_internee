with source as (
      select * from {{ source('austin_incidents', 'austin_incidents_2010') }}
),
src_incidents_2010 as (
    select
      unique_key as id,
        descript as des,
        date,
        time,  

    from source
)
select * from src_incidents_2010
  