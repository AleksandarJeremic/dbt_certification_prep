select
        id as customer_id,
        first_name,
        last_name,
        {{ dbt_utils.generate_surrogate_key(['id','first_name','last_name']) }} as customer_surrogate_key,
from {{ source('tutorial', 'customers') }}