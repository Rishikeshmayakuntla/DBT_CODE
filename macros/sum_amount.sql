{% macro sum_column(column_name, table_name) %}
    SUM({{ new_amount }}) AS total_sum
{% endmacro %}