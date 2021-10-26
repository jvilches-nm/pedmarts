view: program_fact {
  sql_table_name: dbo.PROGRAM FACT ;;

  dimension: alternate_student_id {
    type: string
    sql: ${TABLE}."Alternate Student ID" ;;
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

  dimension: district_code {
    type: string
    sql: ${TABLE}."District Code" ;;
  }

  dimension: district_key {
    type: number
    sql: ${TABLE}."DISTRICT KEY" ;;
  }

  dimension: district_legal_name {
    type: string
    sql: ${TABLE}."District Legal Name" ;;
  }

  dimension: district_operational_status_code {
    type: string
    sql: ${TABLE}."District Operational Status Code" ;;
  }

  dimension: district_organization_type {
    type: string
    sql: ${TABLE}."District Organization Type" ;;
  }

  dimension: dwelling_arrangement {
    type: string
    sql: ${TABLE}."Dwelling Arrangement" ;;
  }

  dimension: dwelling_arrangement_code {
    type: string
    sql: ${TABLE}."Dwelling Arrangement Code" ;;
  }

  dimension: economically_disadvantaged_status {
    type: string
    sql: ${TABLE}."Economically Disadvantaged Status" ;;
  }

  dimension: economically_disadvantaged_status_code {
    type: string
    sql: ${TABLE}."Economically Disadvantaged Status Code" ;;
  }

  dimension: ell_program_eligibility {
    type: string
    sql: ${TABLE}."ELL Program Eligibility" ;;
  }

  dimension: ell_program_eligibility_code {
    type: string
    sql: ${TABLE}."ELL Program Eligibility Code" ;;
  }

  dimension: ell_program_participation {
    type: string
    sql: ${TABLE}."ELL Program Participation" ;;
  }

  dimension: ell_program_participation_code {
    type: string
    sql: ${TABLE}."ELL Program Participation Code" ;;
  }

  dimension: english_proficiency {
    type: string
    sql: ${TABLE}."English Proficiency" ;;
  }

  dimension: english_proficiency_code {
    type: string
    sql: ${TABLE}."English Proficiency Code" ;;
  }

  dimension: food_program_eligibility {
    type: string
    sql: ${TABLE}."Food Program Eligibility" ;;
  }

  dimension: food_program_eligibility_code {
    type: string
    sql: ${TABLE}."Food Program Eligibility Code" ;;
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

  dimension: location_ayp_status_code {
    type: string
    sql: ${TABLE}."Location AYP Status Code" ;;
  }

  dimension: location_id {
    type: string
    sql: ${TABLE}."Location ID" ;;
  }

  dimension: location_key {
    type: number
    sql: ${TABLE}."LOCATION KEY" ;;
  }

  dimension: location_legal_name {
    type: string
    sql: ${TABLE}."Location Legal Name" ;;
  }

  dimension: location_organization_type_code {
    type: string
    sql: ${TABLE}."Location Organization Type Code" ;;
  }

  dimension: location_status {
    type: string
    sql: ${TABLE}."Location Status" ;;
  }

  dimension: migrant_status {
    type: string
    sql: ${TABLE}."Migrant Status" ;;
  }

  dimension: migrant_status_code {
    type: string
    sql: ${TABLE}."Migrant Status Code" ;;
  }

  dimension_group: modified_date_stud_snapshot {
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
    sql: ${TABLE}."modified date STUD_SNAPSHOT" ;;
  }

  dimension: modified_indicator_stud_snapshot {
    type: string
    sql: ${TABLE}."modified indicator STUD_SNAPSHOT" ;;
  }

  dimension: nces_district_id {
    type: string
    sql: ${TABLE}."NCES District ID" ;;
  }

  dimension: nces_school_id {
    type: string
    sql: ${TABLE}."NCES School ID" ;;
  }

  dimension_group: original_program_start {
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
    sql: ${TABLE}."Original Program Start Date" ;;
  }

  dimension: planned_post_graduate_activity {
    type: string
    sql: ${TABLE}."Planned Post Graduate Activity" ;;
  }

  dimension: planned_post_graduate_activity_code {
    type: string
    sql: ${TABLE}."Planned Post Graduate Activity Code" ;;
  }

  dimension: primary_disability {
    type: string
    sql: ${TABLE}."Primary Disability" ;;
  }

  dimension: primary_disability_code {
    type: string
    sql: ${TABLE}."Primary Disability Code" ;;
  }

  dimension: primary_language {
    type: string
    sql: ${TABLE}."Primary Language" ;;
  }

  dimension: primary_language_code {
    type: string
    sql: ${TABLE}."Primary Language Code" ;;
  }

  dimension: program {
    type: string
    sql: ${TABLE}.Program ;;
  }

  dimension: program_comment {
    type: string
    sql: ${TABLE}."Program Comment" ;;
  }

  dimension: program_id {
    type: string
    sql: ${TABLE}."Program ID" ;;
  }

  dimension: program_intensity {
    type: string
    sql: ${TABLE}."Program Intensity" ;;
  }

  dimension: program_participation_information {
    type: string
    sql: ${TABLE}."Program Participation Information" ;;
  }

  dimension: program_participation_information_code {
    type: string
    sql: ${TABLE}."Program Participation Information Code" ;;
  }

  dimension: program_qualification_comment {
    type: string
    sql: ${TABLE}."Program Qualification Comment" ;;
  }

  dimension_group: program_qualification {
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
    sql: ${TABLE}."Program Qualification Date" ;;
  }

  dimension: program_qualification_information {
    type: string
    sql: ${TABLE}."Program Qualification Information" ;;
  }

  dimension: program_qualification_information_code {
    type: string
    sql: ${TABLE}."Program Qualification Information Code" ;;
  }

  dimension: program_qualification_type {
    type: string
    sql: ${TABLE}."Program Qualification Type" ;;
  }

  dimension: program_qualification_type_code {
    type: string
    sql: ${TABLE}."Program Qualification Type Code" ;;
  }

  dimension_group: program_start {
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
    sql: ${TABLE}."Program Start Date" ;;
  }

  dimension: retained {
    type: string
    sql: ${TABLE}.Retained ;;
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

  dimension: section_504_status {
    type: string
    sql: ${TABLE}."Section 504 Status" ;;
  }

  dimension: single_parent_household {
    type: string
    sql: ${TABLE}."Single Parent Household" ;;
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

  dimension: student_is_pregnant {
    type: string
    sql: ${TABLE}."Student Is Pregnant" ;;
  }

  dimension: student_key {
    type: number
    sql: ${TABLE}."STUDENT KEY" ;;
  }

  dimension: student_last_name {
    type: string
    sql: ${TABLE}."Student Last Name" ;;
  }

  dimension: student_lives_with {
    type: string
    sql: ${TABLE}."Student Lives With" ;;
  }

  dimension: student_lives_with_code {
    type: string
    sql: ${TABLE}."Student Lives With Code" ;;
  }

  dimension: student_middle_initial {
    type: string
    sql: ${TABLE}."Student Middle Initial" ;;
  }

  dimension: student_name {
    type: string
    sql: ${TABLE}."Student Name" ;;
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

  dimension_group: student_snapshot {
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
    sql: ${TABLE}."Student Snapshot Date" ;;
  }

  dimension: student_special_program {
    type: string
    sql: ${TABLE}."Student Special Program" ;;
  }

  dimension: student_special_program_code {
    type: string
    sql: ${TABLE}."Student Special Program Code" ;;
  }

  dimension: title_i_location_status_code {
    type: string
    sql: ${TABLE}."Title I Location Status Code" ;;
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
      district_legal_name,
      location_legal_name,
      student_first_name,
      student_last_name,
      student_name,
      student.student_id,
      student.student_name,
      student.district_name,
      student.location_name
    ]
  }
}
