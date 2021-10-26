view: assessment_view {
  sql_table_name: dbo.Assessment View ;;

  dimension: achievement_level_code {
    type: string
    sql: ${TABLE}."Achievement Level Code" ;;
  }

  dimension: alternate_student_id {
    type: string
    sql: ${TABLE}."Alternate Student ID" ;;
  }

  dimension: alternative_school_indicator {
    type: string
    sql: ${TABLE}."Alternative School Indicator" ;;
  }

  dimension: assessment_category {
    type: string
    sql: ${TABLE}."Assessment Category" ;;
  }

  dimension: assessment_group {
    type: string
    sql: ${TABLE}."Assessment Group" ;;
  }

  dimension: assessment_id {
    type: string
    sql: ${TABLE}."Assessment ID" ;;
  }

  dimension: assessment_id_school_year {
    type: string
    sql: ${TABLE}."Assessment ID School Year" ;;
  }

  dimension: assessment_name {
    type: string
    sql: ${TABLE}."Assessment Name" ;;
  }

  dimension: assessment_status {
    type: string
    sql: ${TABLE}."Assessment Status" ;;
  }

  dimension: assessment_status_code {
    type: string
    sql: ${TABLE}."Assessment Status Code" ;;
  }

  dimension: assessment_type {
    type: string
    sql: ${TABLE}."Assessment Type" ;;
  }

  dimension: assessment_vendor {
    type: string
    sql: ${TABLE}."Assessment Vendor" ;;
  }

  dimension: ayp_additional_indicator_type {
    type: string
    sql: ${TABLE}."AYP Additional Indicator Type" ;;
  }

  dimension: ayp_grade_level_range {
    type: string
    sql: ${TABLE}."AYP Grade Level Range" ;;
  }

  dimension: charter_school {
    type: string
    sql: ${TABLE}."Charter School" ;;
  }

  dimension: charter_school_code {
    type: string
    sql: ${TABLE}."Charter School Code" ;;
  }

  dimension: charter_status {
    type: string
    sql: ${TABLE}."Charter Status" ;;
  }

  dimension: charter_status_code {
    type: string
    sql: ${TABLE}."Charter Status Code" ;;
  }

  dimension: common_location_name {
    type: string
    sql: ${TABLE}."Common Location Name" ;;
  }

  dimension: converted_score {
    type: number
    sql: ${TABLE}."Converted Score" ;;
  }

  dimension: credential_type {
    type: string
    sql: ${TABLE}."Credential Type" ;;
  }

  dimension: credential_type_code {
    type: string
    sql: ${TABLE}."Credential Type Code" ;;
  }

  dimension: diploma_type {
    type: string
    sql: ${TABLE}."Diploma Type" ;;
  }

  dimension: diploma_type_code {
    type: string
    sql: ${TABLE}."Diploma Type Code" ;;
  }

  dimension: displaced_homemaker {
    type: string
    sql: ${TABLE}."Displaced Homemaker" ;;
  }

  dimension: district_accreditation_status {
    type: string
    sql: ${TABLE}."District Accreditation Status" ;;
  }

  dimension: district_administrator_email_address {
    type: string
    sql: ${TABLE}."District Administrator Email Address" ;;
  }

  dimension: district_administrator_first_name {
    type: string
    sql: ${TABLE}."District Administrator First Name" ;;
  }

  dimension: district_administrator_last_name {
    type: string
    sql: ${TABLE}."District Administrator Last Name" ;;
  }

  dimension: district_administrator_middle_name {
    type: string
    sql: ${TABLE}."District Administrator Middle Name" ;;
  }

  dimension: district_administrator_name {
    type: string
    sql: ${TABLE}."District Administrator Name" ;;
  }

  dimension: district_administrator_name_suffix {
    type: string
    sql: ${TABLE}."District Administrator Name Suffix" ;;
  }

  dimension: district_administrator_position_title {
    type: string
    sql: ${TABLE}."District Administrator Position Title" ;;
  }

  dimension: district_agency_type {
    type: string
    sql: ${TABLE}."District Agency Type" ;;
  }

  dimension: district_ayp_status {
    type: string
    sql: ${TABLE}."District AYP Status" ;;
  }

  dimension: district_ayp_status_code {
    type: string
    sql: ${TABLE}."District AYP Status Code" ;;
  }

  dimension: district_code {
    type: string
    sql: ${TABLE}."District Code" ;;
  }

  dimension: district_county_name {
    type: string
    sql: ${TABLE}."District County Name" ;;
  }

  dimension: district_dangerous_school_count {
    type: number
    sql: ${TABLE}."District Dangerous School Count" ;;
  }

  dimension: district_es_ms_ayp_indicator_status {
    type: string
    sql: ${TABLE}."District ES MS AYP Indicator Status" ;;
  }

  dimension: district_es_ms_ayp_indicator_status_code {
    type: string
    sql: ${TABLE}."District ES MS AYP Indicator Status Code" ;;
  }

  dimension: district_graduation_rate {
    type: number
    sql: ${TABLE}."District Graduation Rate" ;;
  }

  dimension: district_hs_ayp_indicator_status {
    type: string
    sql: ${TABLE}."District HS AYP Indicator Status" ;;
  }

  dimension: district_hs_ayp_indicator_status_code {
    type: string
    sql: ${TABLE}."District HS AYP Indicator Status Code" ;;
  }

  dimension: district_improvement_status {
    type: string
    sql: ${TABLE}."District Improvement Status" ;;
  }

  dimension: district_improvement_status_code {
    type: string
    sql: ${TABLE}."District Improvement Status Code" ;;
  }

  dimension: district_integrated_technology_status {
    type: string
    sql: ${TABLE}."District Integrated Technology Status" ;;
  }

  dimension: district_integrated_technology_status_code {
    type: string
    sql: ${TABLE}."District Integrated Technology Status Code" ;;
  }

  dimension: district_legal_name {
    type: string
    sql: ${TABLE}."District Legal Name" ;;
  }

  dimension: district_locale {
    type: string
    sql: ${TABLE}."District Locale" ;;
  }

  dimension: district_locale_code {
    type: string
    sql: ${TABLE}."District Locale Code" ;;
  }

  dimension: district_location_address_1 {
    type: string
    sql: ${TABLE}."District Location Address 1" ;;
  }

  dimension: district_location_address_2 {
    type: string
    sql: ${TABLE}."District Location Address 2" ;;
  }

  dimension: district_location_address_3 {
    type: string
    sql: ${TABLE}."District Location Address 3" ;;
  }

  dimension: district_location_city {
    type: string
    sql: ${TABLE}."District Location City" ;;
  }

  dimension: district_location_state_code {
    type: string
    sql: ${TABLE}."District Location State Code" ;;
  }

  dimension: district_location_state_name {
    type: string
    sql: ${TABLE}."District Location State Name" ;;
  }

  dimension: district_location_zip_code {
    type: string
    sql: ${TABLE}."District Location Zip Code" ;;
  }

  dimension: district_location_zip_code4 {
    type: string
    sql: ${TABLE}."District Location Zip Code4" ;;
  }

  dimension: district_mailing_address_1 {
    type: string
    sql: ${TABLE}."District Mailing Address 1" ;;
  }

  dimension: district_mailing_address_2 {
    type: string
    sql: ${TABLE}."District Mailing Address 2" ;;
  }

  dimension: district_mailing_address_3 {
    type: string
    sql: ${TABLE}."District Mailing Address 3" ;;
  }

  dimension: district_mailing_city {
    type: string
    sql: ${TABLE}."District Mailing City" ;;
  }

  dimension: district_mailing_state_code {
    type: string
    sql: ${TABLE}."District Mailing State Code" ;;
  }

  dimension: district_mailing_state_name {
    type: string
    sql: ${TABLE}."District Mailing State Name" ;;
  }

  dimension: district_mailing_zip_code {
    type: string
    sql: ${TABLE}."District Mailing Zip Code" ;;
  }

  dimension: district_mailing_zip_code4 {
    type: string
    sql: ${TABLE}."District Mailing Zip Code4" ;;
  }

  dimension: district_main_phone_number {
    type: string
    sql: ${TABLE}."District Main Phone Number" ;;
  }

  dimension: district_math_participation_status {
    type: string
    sql: ${TABLE}."District Math Participation Status" ;;
  }

  dimension: district_math_participation_status_code {
    type: string
    sql: ${TABLE}."District Math Participation Status Code" ;;
  }

  dimension: district_math_proficiency_status {
    type: string
    sql: ${TABLE}."District Math Proficiency Status" ;;
  }

  dimension: district_math_proficiency_status_code {
    type: string
    sql: ${TABLE}."District Math Proficiency Status Code" ;;
  }

  dimension: district_name {
    type: string
    sql: ${TABLE}."District Name" ;;
  }

  dimension: district_operational_status {
    type: string
    sql: ${TABLE}."District Operational Status" ;;
  }

  dimension: district_operational_status_code {
    type: string
    sql: ${TABLE}."District Operational Status Code" ;;
  }

  dimension: district_organization_type {
    type: string
    sql: ${TABLE}."District Organization Type" ;;
  }

  dimension: district_reading_participation_status {
    type: string
    sql: ${TABLE}."District Reading Participation Status" ;;
  }

  dimension: district_reading_participation_status_code {
    type: string
    sql: ${TABLE}."District Reading Participation Status Code" ;;
  }

  dimension: district_reading_proficiency_status {
    type: string
    sql: ${TABLE}."District Reading Proficiency Status" ;;
  }

  dimension: district_reading_proficiency_status_code {
    type: string
    sql: ${TABLE}."District Reading Proficiency Status Code" ;;
  }

  dimension: district_safe_harbor_application_status {
    type: string
    sql: ${TABLE}."District Safe Harbor Application Status" ;;
  }

  dimension: district_safe_harbor_application_status_code {
    type: string
    sql: ${TABLE}."District Safe Harbor Application Status Code" ;;
  }

  dimension: district_safe_school_count {
    type: number
    sql: ${TABLE}."District Safe School Count" ;;
  }

  dimension: district_street_address {
    type: string
    sql: ${TABLE}."District Street Address" ;;
  }

  dimension: district_web_site {
    type: string
    sql: ${TABLE}."District Web Site" ;;
  }

  dimension: dwelling_arrangement {
    type: string
    sql: ${TABLE}."Dwelling Arrangement" ;;
  }

  dimension: dwelling_arrangement_code {
    type: string
    sql: ${TABLE}."Dwelling Arrangement Code" ;;
  }

  dimension: ell_program_eligibility {
    type: string
    sql: ${TABLE}."ELL Program Eligibility" ;;
  }

  dimension: ell_program_eligibility_code {
    type: string
    sql: ${TABLE}."ELL Program Eligibility Code" ;;
  }

  dimension: english_proficiency {
    type: string
    sql: ${TABLE}."English Proficiency" ;;
  }

  dimension: english_proficiency_code {
    type: string
    sql: ${TABLE}."English Proficiency Code" ;;
  }

  dimension: federal_form_506 {
    type: string
    sql: ${TABLE}."Federal Form 506" ;;
  }

  dimension: food_program_participation {
    type: string
    sql: ${TABLE}."Food Program Participation" ;;
  }

  dimension: food_program_participation_code {
    type: string
    sql: ${TABLE}."Food Program Participation Code" ;;
  }

  dimension: foreign_exchange_student {
    type: string
    sql: ${TABLE}."Foreign Exchange Student" ;;
  }

  dimension: full_district_name {
    type: string
    sql: ${TABLE}."Full District Name" ;;
  }

  dimension: full_location_name {
    type: string
    sql: ${TABLE}."Full Location Name" ;;
  }

  dimension: funding_district {
    type: string
    sql: ${TABLE}."Funding District" ;;
  }

  dimension: gifted_participation {
    type: string
    sql: ${TABLE}."Gifted Participation" ;;
  }

  dimension: gifted_participation_code {
    type: string
    sql: ${TABLE}."Gifted Participation Code" ;;
  }

  dimension: grade_01_location_id {
    type: string
    sql: ${TABLE}."Grade 01 Location ID" ;;
  }

  dimension: grade_02_location_id {
    type: string
    sql: ${TABLE}."Grade 02 Location ID" ;;
  }

  dimension: grade_k_location_id {
    type: string
    sql: ${TABLE}."Grade K Location ID" ;;
  }

  dimension: grade_level_range {
    type: string
    sql: ${TABLE}."Grade Level Range" ;;
  }

  dimension: graduated {
    type: string
    sql: ${TABLE}.Graduated ;;
  }

  dimension: graduation_status {
    type: string
    sql: ${TABLE}."Graduation Status" ;;
  }

  dimension: graduation_year {
    type: string
    sql: ${TABLE}."Graduation Year" ;;
  }

  dimension: graduation_year_code {
    type: string
    sql: ${TABLE}."Graduation Year Code" ;;
  }

  dimension: home_language {
    type: string
    sql: ${TABLE}."Home Language" ;;
  }

  dimension: home_language_code {
    type: string
    sql: ${TABLE}."Home Language Code" ;;
  }

  dimension: homeless_status {
    type: string
    sql: ${TABLE}."Homeless Status" ;;
  }

  dimension: homeless_status_code {
    type: string
    sql: ${TABLE}."Homeless Status Code" ;;
  }

  dimension: immigrant {
    type: string
    sql: ${TABLE}.Immigrant ;;
  }

  dimension: improvement_status {
    type: string
    sql: ${TABLE}."Improvement Status" ;;
  }

  dimension: improvement_status_code {
    type: string
    sql: ${TABLE}."Improvement Status Code" ;;
  }

  dimension: level_of_integration {
    type: string
    sql: ${TABLE}."Level of Integration" ;;
  }

  dimension: level_of_integration_code {
    type: string
    sql: ${TABLE}."Level of Integration Code" ;;
  }

  dimension: loc_county_name {
    type: string
    sql: ${TABLE}."Loc County Name" ;;
  }

  dimension: location_address_1 {
    type: string
    sql: ${TABLE}."Location Address 1" ;;
  }

  dimension: location_address_2 {
    type: string
    sql: ${TABLE}."Location Address 2" ;;
  }

  dimension: location_address_3 {
    type: string
    sql: ${TABLE}."Location Address 3" ;;
  }

  dimension: location_address_city {
    type: string
    sql: ${TABLE}."Location Address City" ;;
  }

  dimension: location_address_state_code {
    type: string
    sql: ${TABLE}."Location Address State Code" ;;
  }

  dimension: location_address_zip_code {
    type: string
    sql: ${TABLE}."Location Address Zip Code" ;;
  }

  dimension: location_address_zip_code4 {
    type: string
    sql: ${TABLE}."Location Address Zip Code4" ;;
  }

  dimension: location_ayp_status {
    type: string
    sql: ${TABLE}."Location AYP Status" ;;
  }

  dimension: location_ayp_status_code {
    type: string
    sql: ${TABLE}."Location AYP Status Code" ;;
  }

  dimension: location_id {
    type: string
    sql: ${TABLE}."Location ID" ;;
  }

  dimension: location_legal_name {
    type: string
    sql: ${TABLE}."Location Legal Name" ;;
  }

  dimension: location_locale {
    type: string
    sql: ${TABLE}."Location Locale" ;;
  }

  dimension: location_locale_code {
    type: string
    sql: ${TABLE}."Location Locale Code" ;;
  }

  dimension: location_mailing_address_1 {
    type: string
    sql: ${TABLE}."Location Mailing Address 1" ;;
  }

  dimension: location_mailing_address_2 {
    type: string
    sql: ${TABLE}."Location Mailing Address 2" ;;
  }

  dimension: location_mailing_address_3 {
    type: string
    sql: ${TABLE}."Location Mailing Address 3" ;;
  }

  dimension: location_mailing_city {
    type: string
    sql: ${TABLE}."Location Mailing City" ;;
  }

  dimension: location_mailing_state_code {
    type: string
    sql: ${TABLE}."Location Mailing State Code" ;;
  }

  dimension: location_mailing_state_name {
    type: string
    sql: ${TABLE}."Location Mailing State Name" ;;
  }

  dimension: location_mailing_zip_code {
    type: string
    sql: ${TABLE}."Location Mailing Zip Code" ;;
  }

  dimension: location_mailing_zip_code4 {
    type: string
    sql: ${TABLE}."Location Mailing Zip Code4" ;;
  }

  dimension: location_main_phone_number {
    type: string
    sql: ${TABLE}."Location Main Phone Number" ;;
  }

  dimension: location_name_long {
    type: string
    sql: ${TABLE}."Location Name Long" ;;
  }

  dimension: location_organization_subtype {
    type: string
    sql: ${TABLE}."Location Organization Subtype" ;;
  }

  dimension: location_organization_type_code {
    type: string
    sql: ${TABLE}."Location Organization Type Code" ;;
  }

  dimension: location_reading_proficiency_status_code {
    type: string
    sql: ${TABLE}."Location Reading Proficiency Status Code" ;;
  }

  dimension: location_safe_harbor_application_status {
    type: string
    sql: ${TABLE}."Location Safe Harbor Application Status" ;;
  }

  dimension: location_safe_harbor_application_status_code {
    type: string
    sql: ${TABLE}."Location Safe Harbor Application Status Code" ;;
  }

  dimension: location_state_name {
    type: string
    sql: ${TABLE}."Location State Name" ;;
  }

  dimension: location_status {
    type: string
    sql: ${TABLE}."Location Status" ;;
  }

  dimension_group: location_status {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."Location Status Date" ;;
  }

  dimension: location_street_address {
    type: string
    sql: ${TABLE}."Location Street Address" ;;
  }

  dimension: location_web_site {
    type: string
    sql: ${TABLE}."Location Web Site" ;;
  }

  dimension: magnet_school {
    type: string
    sql: ${TABLE}."Magnet School" ;;
  }

  dimension: magnet_school_code {
    type: string
    sql: ${TABLE}."Magnet School Code" ;;
  }

  dimension: math_participation_status {
    type: string
    sql: ${TABLE}."Math Participation Status" ;;
  }

  dimension: math_participation_status_code {
    type: string
    sql: ${TABLE}."Math Participation Status Code" ;;
  }

  dimension: math_proficiency_target {
    type: string
    sql: ${TABLE}."Math Proficiency Target" ;;
  }

  dimension: math_proficiency_target_code {
    type: string
    sql: ${TABLE}."Math Proficiency Target Code" ;;
  }

  dimension: migrant_status {
    type: string
    sql: ${TABLE}."Migrant Status" ;;
  }

  dimension: migrant_status_code {
    type: string
    sql: ${TABLE}."Migrant Status Code" ;;
  }

  dimension_group: modified_date_assessment_fact {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."modified date ASSESSMENT_FACT" ;;
  }

  dimension_group: modified_date_district_year {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."modified date DISTRICT_YEAR" ;;
  }

  dimension_group: modified_date_location_year {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."modified date LOCATION_YEAR" ;;
  }

  dimension_group: modified_date_student {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."modified date STUDENT" ;;
  }

  dimension: nces_district_id {
    type: string
    sql: ${TABLE}."NCES District ID" ;;
  }

  dimension: nces_school_id {
    type: string
    sql: ${TABLE}."NCES School ID" ;;
  }

  dimension: numeric_primary_subtest_score_type {
    type: string
    sql: ${TABLE}."Numeric Primary Subtest Score Type" ;;
  }

  dimension: percentage_score {
    type: number
    sql: ${TABLE}."Percentage Score" ;;
  }

  dimension: persistently_dangerous_status {
    type: string
    sql: ${TABLE}."Persistently Dangerous Status" ;;
  }

  dimension: persistently_dangerous_status_code {
    type: string
    sql: ${TABLE}."Persistently Dangerous Status Code" ;;
  }

  dimension: planned_post_graduate_activity {
    type: string
    sql: ${TABLE}."Planned Post Graduate Activity" ;;
  }

  dimension: planned_post_graduate_activity_code {
    type: string
    sql: ${TABLE}."Planned Post Graduate Activity Code" ;;
  }

  dimension: primary_numeric_score {
    type: number
    sql: ${TABLE}."Primary Numeric Score" ;;
  }

  dimension: primary_subtest_score_type {
    type: string
    sql: ${TABLE}."Primary Subtest Score Type" ;;
  }

  dimension: primary_subtest_score_type_code {
    type: string
    sql: ${TABLE}."Primary Subtest Score Type Code" ;;
  }

  dimension: prior_state_district_code {
    type: string
    sql: ${TABLE}."Prior State District Code" ;;
  }

  dimension: prior_state_district_id {
    type: string
    sql: ${TABLE}."Prior State District ID" ;;
  }

  dimension: prior_state_location_id {
    type: string
    sql: ${TABLE}."Prior State Location ID" ;;
  }

  dimension: raw_score {
    type: number
    sql: ${TABLE}."Raw Score" ;;
  }

  dimension: reporting_assessment_status {
    type: string
    sql: ${TABLE}."Reporting Assessment Status" ;;
  }

  dimension: residence_district {
    type: string
    sql: ${TABLE}."Residence District" ;;
  }

  dimension: retained {
    type: string
    sql: ${TABLE}.Retained ;;
  }

  dimension: scaled_score {
    type: number
    sql: ${TABLE}."Scaled Score" ;;
  }

  dimension: school_category {
    type: string
    sql: ${TABLE}."School Category" ;;
  }

  dimension: school_category_code {
    type: string
    sql: ${TABLE}."School Category Code" ;;
  }

  dimension: school_level {
    type: string
    sql: ${TABLE}."School Level" ;;
  }

  dimension: school_level_code {
    type: string
    sql: ${TABLE}."School Level Code" ;;
  }

  dimension_group: school_year {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."School Year" ;;
  }

  dimension: scoring_model {
    type: string
    sql: ${TABLE}."Scoring Model" ;;
  }

  dimension: scoring_model_code {
    type: string
    sql: ${TABLE}."Scoring Model Code" ;;
  }

  dimension: scoring_model_name {
    type: string
    sql: ${TABLE}."Scoring Model Name" ;;
  }

  dimension: section_504_status {
    type: string
    sql: ${TABLE}."Section 504 Status" ;;
  }

  dimension: special_ed_assessment {
    type: string
    sql: ${TABLE}."Special Ed Assessment" ;;
  }

  dimension: special_ed_referral {
    type: string
    sql: ${TABLE}."Special Ed Referral" ;;
  }

  dimension: special_ed_referral_code {
    type: string
    sql: ${TABLE}."Special Ed Referral Code" ;;
  }

  dimension: special_ed_status {
    type: string
    sql: ${TABLE}."Special Ed Status" ;;
  }

  dimension: special_ed_status_code {
    type: string
    sql: ${TABLE}."Special Ed Status Code" ;;
  }

  dimension: special_ed_transition_status {
    type: string
    sql: ${TABLE}."Special Ed Transition Status" ;;
  }

  dimension: state_assessment_id {
    type: string
    sql: ${TABLE}."State Assessment ID" ;;
  }

  dimension: state_district_code {
    type: string
    sql: ${TABLE}."State District Code" ;;
  }

  dimension: state_location_id {
    type: string
    sql: ${TABLE}."State Location ID" ;;
  }

  dimension_group: student_birth {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."Student Birth Date" ;;
  }

  dimension: student_first_name {
    type: string
    sql: ${TABLE}."Student First Name" ;;
  }

  dimension: student_gender {
    type: string
    sql: ${TABLE}."Student Gender" ;;
  }

  dimension: student_gender_code {
    type: string
    sql: ${TABLE}."Student Gender Code" ;;
  }

  dimension: student_grade_level {
    type: string
    sql: ${TABLE}."Student Grade Level" ;;
  }

  dimension: student_hispanic_indicator {
    type: string
    sql: ${TABLE}."Student Hispanic Indicator" ;;
  }

  dimension: student_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."Student ID" ;;
  }

  dimension: student_is_a_single_parent {
    type: string
    sql: ${TABLE}."Student Is a Single Parent" ;;
  }

  dimension: student_last_name {
    type: string
    sql: ${TABLE}."Student Last Name" ;;
  }

  dimension: student_middle_initial {
    type: string
    sql: ${TABLE}."Student Middle Initial" ;;
  }

  dimension: student_name {
    type: string
    sql: ${TABLE}."Student Name" ;;
  }

  dimension: student_primary_disability {
    type: string
    sql: ${TABLE}."Student Primary Disability" ;;
  }

  dimension: student_primary_disability_code {
    type: string
    sql: ${TABLE}."Student Primary Disability Code" ;;
  }

  dimension: student_race_1_ethnicity {
    type: string
    sql: ${TABLE}."Student Race 1 Ethnicity" ;;
  }

  dimension: student_race_1_ethnicity_code {
    type: string
    sql: ${TABLE}."Student Race 1 Ethnicity Code" ;;
  }

  dimension: student_race_2 {
    type: string
    sql: ${TABLE}."Student Race 2" ;;
  }

  dimension: student_race_2_code {
    type: string
    sql: ${TABLE}."Student Race 2 Code" ;;
  }

  dimension: student_race_3 {
    type: string
    sql: ${TABLE}."Student Race 3" ;;
  }

  dimension: student_race_3_code {
    type: string
    sql: ${TABLE}."Student Race 3 Code" ;;
  }

  dimension: student_race_4 {
    type: string
    sql: ${TABLE}."Student Race 4" ;;
  }

  dimension: student_race_4_code {
    type: string
    sql: ${TABLE}."Student Race 4 Code" ;;
  }

  dimension: student_race_5 {
    type: string
    sql: ${TABLE}."Student Race 5" ;;
  }

  dimension: student_race_5_code {
    type: string
    sql: ${TABLE}."Student Race 5 Code" ;;
  }

  dimension: student_race_ethnicity_derived {
    type: string
    sql: ${TABLE}."Student Race Ethnicity Derived" ;;
  }

  dimension: student_race_ethnicity_subgroup {
    type: string
    sql: ${TABLE}."Student Race Ethnicity Subgroup" ;;
  }

  dimension: student_race_ethnicity_subgroup_code {
    type: string
    sql: ${TABLE}."Student Race Ethnicity Subgroup Code" ;;
  }

  dimension: student_special_program {
    type: string
    sql: ${TABLE}."Student Special Program" ;;
  }

  dimension: student_special_program_code {
    type: string
    sql: ${TABLE}."Student Special Program Code" ;;
  }

  dimension: subtest_administration {
    type: string
    sql: ${TABLE}."Subtest Administration" ;;
  }

  dimension: subtest_aggregated {
    type: string
    sql: ${TABLE}."Subtest Aggregated" ;;
  }

  dimension: subtest_description {
    type: string
    sql: ${TABLE}."Subtest Description" ;;
  }

  dimension: subtest_form {
    type: string
    sql: ${TABLE}."Subtest Form" ;;
  }

  dimension: subtest_grade_level {
    type: string
    sql: ${TABLE}."Subtest Grade Level" ;;
  }

  dimension: subtest_identifiers {
    type: string
    sql: ${TABLE}."Subtest Identifiers" ;;
  }

  dimension: subtest_language {
    type: string
    sql: ${TABLE}."Subtest Language" ;;
  }

  dimension: subtest_language_code {
    type: string
    sql: ${TABLE}."Subtest Language Code" ;;
  }

  dimension: subtest_level {
    type: string
    sql: ${TABLE}."Subtest Level" ;;
  }

  dimension: subtest_name {
    type: string
    sql: ${TABLE}."Subtest Name" ;;
  }

  dimension: subtest_subject_area {
    type: string
    sql: ${TABLE}."Subtest Subject Area" ;;
  }

  dimension: subtest_subject_area_code {
    type: string
    sql: ${TABLE}."Subtest Subject Area Code" ;;
  }

  dimension_group: test_assignment {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."Test Assignment Date" ;;
  }

  dimension: testing_accommodation {
    type: string
    sql: ${TABLE}."Testing Accommodation" ;;
  }

  dimension: title_i_location_category {
    type: string
    sql: ${TABLE}."Title I Location Category" ;;
  }

  dimension: title_i_location_status {
    type: string
    sql: ${TABLE}."Title I Location Status" ;;
  }

  dimension: title_i_location_status_code {
    type: string
    sql: ${TABLE}."Title I Location Status Code" ;;
  }

  dimension: title_i_status_code {
    type: string
    sql: ${TABLE}."Title I Status Code" ;;
  }

  dimension: unaccompanied_youth {
    type: string
    sql: ${TABLE}."Unaccompanied Youth" ;;
  }

  dimension: unaccompanied_youth_code {
    type: string
    sql: ${TABLE}."Unaccompanied Youth Code" ;;
  }

  dimension: years_in_us_schools {
    type: number
    sql: ${TABLE}."Years in US Schools" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      subtest_name,
      scoring_model_name,
      assessment_name,
      student_first_name,
      student_last_name,
      student_name,
      district_name,
      full_district_name,
      district_legal_name,
      district_county_name,
      district_administrator_first_name,
      district_administrator_last_name,
      district_administrator_middle_name,
      district_administrator_name,
      district_location_state_name,
      district_mailing_state_name,
      location_legal_name,
      full_location_name,
      common_location_name,
      loc_county_name,
      location_mailing_state_name,
      location_state_name,
      student.student_id,
      student.student_name,
      student.district_name,
      student.location_name
    ]
  }
}
