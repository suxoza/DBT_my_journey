
with inv as (
    select 'first' as _first
        union
    select 'second' as _second
        union 
    select 'third' as _third
)

select *, '{{ invocation_id }}' as inv_id from inv
