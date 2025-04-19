{{
    config(materialized='table')
}}

WITH genai_leads AS (

    SELECT * FROM AZURELIB.RAW.GENAI
)

SELECT 
UUID_STRING() as id
,MEETING_CODE,
ACTOR,
ACTOR_NAME,
CLIENT_TYPE,
PRODUCT_TYPE,
"Duration (seconds)" AS Duration,
TO_DATE(DATE) as meeting_date,
CURRENT_TIMESTAMP(2) as updated_at
FROM genai_leads
