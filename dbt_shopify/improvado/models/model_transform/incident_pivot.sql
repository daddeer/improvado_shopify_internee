select
  date,
  {{ dbt_utils.pivot(
      'des',
      dbt_utils.get_column_values(ref('stg_incidents_2008'), 'des')
  ) }}
from {{ ref('stg_incidents_2008') }}
group by date