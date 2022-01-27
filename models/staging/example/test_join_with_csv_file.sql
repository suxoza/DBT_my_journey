
with from_existing_table as (
    select * from {{ ref("just_example_file") }}
),

from_csv_file as (
    select * from {{ ref("test_file_import") }}
),

final as (

    select 
        from_csv_file.name,
        from_csv_file.surname,
        from_csv_file.email,
        from_csv_file.ss_item_sk as first_ss_item_sk,
        from_existing_table.ss_item_sk,
        iff(from_existing_table.ss_item_sk = {{ var('start_date') }}, true, false) as just_variable
    from from_csv_file
    left join from_existing_table on from_existing_table.ss_item_sk = from_csv_file.ss_item_sk 

)

select * from final