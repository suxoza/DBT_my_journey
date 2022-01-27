

with just_example_data as (
    select * from {{ source("just_example_data", "store_sales") }} limit 10
),

final as (
    select * from just_example_data
)

select * from final