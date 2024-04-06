-- SQL model for syhdr_commercial_person_2016.CSV
{{ config(materialized='external', location=var('output_path') + '/' + this.name + '.parquet') }}

SELECT
    PERSON_ID::VARCHAR,
    PERSON_WGHT::VARCHAR,
    AGE_LOW::VARCHAR,
    AGE_HIGH::VARCHAR,
    SEX_IDENT_CD::VARCHAR,
    STATE_CD::VARCHAR,
    COUNTY_FIPS_CD::VARCHAR,
    ZIP_CD::VARCHAR,
    PHRMCY_CVRG_1::VARCHAR,
    PHRMCY_CVRG_2::VARCHAR,
    PHRMCY_CVRG_3::VARCHAR,
    PHRMCY_CVRG_4::VARCHAR,
    PHRMCY_CVRG_5::VARCHAR,
    PHRMCY_CVRG_6::VARCHAR,
    PHRMCY_CVRG_7::VARCHAR,
    PHRMCY_CVRG_8::VARCHAR,
    PHRMCY_CVRG_9::VARCHAR,
    PHRMCY_CVRG_10::VARCHAR,
    PHRMCY_CVRG_11::VARCHAR,
    PHRMCY_CVRG_12::VARCHAR,
    CMRCL_INSRC_1::VARCHAR,
    CMRCL_INSRC_2::VARCHAR,
    CMRCL_INSRC_3::VARCHAR,
    CMRCL_INSRC_4::VARCHAR,
    CMRCL_INSRC_5::VARCHAR,
    CMRCL_INSRC_6::VARCHAR,
    CMRCL_INSRC_7::VARCHAR,
    CMRCL_INSRC_8::VARCHAR,
    CMRCL_INSRC_9::VARCHAR,
    CMRCL_INSRC_10::VARCHAR,
    CMRCL_INSRC_11::VARCHAR,
    CMRCL_INSRC_12::VARCHAR
FROM read_csv('/Users/me/data/syh_dr/syhdr_commercial_person_2016.CSV', header=True, null_padding=true)