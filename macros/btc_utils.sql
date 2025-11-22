{% macro convert_to_usd(column_name) %}

{{column_name}} * (
	select
	price
	from {{ ref('btc_usd_max')}}
	where snapped_at = '2013-04-28 00:00:00 UTC'
)

{% endmacro %}