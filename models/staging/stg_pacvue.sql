{{
    config(
        materialized='view'
    )
}}
with source as (

    select * from {{ source('kenvue', 'pacvue') }}
 
),

renamed as (

select
	ID ,
	AMAZON_ADERTISER_ID ,
	PROFILE_ID ,
	BRAND_NAME ,
	CALENDAR_NAME ,
	COUNTRY 
    from source

)

select * from renamed

	