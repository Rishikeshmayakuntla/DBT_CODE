


{% macro new_macro(column_name) -%}
  ({{ column_name }} / 100)::numeric(16,2)
{%- endmacro %} 