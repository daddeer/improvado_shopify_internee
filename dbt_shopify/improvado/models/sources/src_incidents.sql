with source as (
      select * from {{ source('austin_incidents', 'stg_incidents') }}
),
src_incidents as (
    select
        id,
        des,
        date,
        time,
        address

    from source
)
select * from src_incidents
  