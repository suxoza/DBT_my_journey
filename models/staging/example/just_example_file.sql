

with just_example_data as (
    select * from {{ source("just_example_data", "store_sales") }} limit 10
),

final as (
    select *, current_date() as created_at from just_example_data
)

select * from final