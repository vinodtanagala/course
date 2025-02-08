{% macro learn_variables() %}
  {% set your_name="vinodh" %}
    {{log("hello" ~ your_name,info=True)}}
{% endmacro %}