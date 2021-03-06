
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='view') }}

with source_data as (

    select 1 as id, current_date() as created_at
    union all
    select null as id, current_date() AS created_at

)

select *
from source_data
where id is not null
