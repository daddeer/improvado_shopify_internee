select
  date,
  {{ dbt_utils.pivot(
      'des',
      dbt_utils.get_column_values(ref('stg_incidents_grand_select'), 'des')
  ) }}
from {{ ref('stg_incidents_grand_select') }}
group by date
