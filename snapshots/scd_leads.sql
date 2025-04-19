{% snapshot scd_leads %}
{{
    config(target_schema='dev',
    unique_key='id',
    strategy="timestamp",
    updated_at="updated_at",
    invalidate_hard_deletes=True)
}}

SELECT * from "SRC_LEADS"
{% endsnapshot %}