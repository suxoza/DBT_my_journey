{% macro add_hook(action_name) -%}
    insert into "DEMO_DB"."PUBLIC"."for_dbt_logs" (name) values 
        ('{{ action_name }}');
    commit;
{%- endmacro %}