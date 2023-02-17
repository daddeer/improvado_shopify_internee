with source as (
      select * from {{ source('austin_incidents', 'austin_incidents_2008') }}
),
src_incidents as (
    select
        unique_key as id,
        descript as des,
        date,
        time,
        address

    from source
)
select * from src_incidents
  