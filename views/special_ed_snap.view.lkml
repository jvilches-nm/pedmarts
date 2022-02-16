view: special_ed_snap {
  sql_table_name: dbo.SPECIAL_ED_SNAP ;;

  dimension: alt_assessment {
    type: string
    label: "Alternate Assessment"
    description: "Indication of whether the Special Education Student is entitled to take an alternate assessment rather than the regular state assessment, as documented in their Service Plan (IEP)."
    sql: ${TABLE}."Alt Assessment" ;;
  }

  dimension: braille_instruction {
    type: string
    description: "Indication of need for Braille Instruction"
    sql: ${TABLE}."Braille Instruction" ;;
  }

  dimension: challenge_type {
    type: string
    hidden: yes
    sql: ${TABLE}."Challenge Type" ;;
  }

  dimension: challenge_type_code {
    type: string
    hidden: yes
    sql: ${TABLE}."Challenge Type Code" ;;
  }

  dimension: diploma_type {
    type: string
    sql: ${TABLE}."Diploma Type" ;;
  }

  dimension: diploma_type_code {
    type: string
    sql: ${TABLE}."Diploma Type Code" ;;
  }

  dimension: district_code {
    type: string
    hidden: yes
    sql: ${TABLE}."District Code" ;;
  }

  dimension: district_key {
    type: number
    hidden: yes
    sql: ${TABLE}."DISTRICT KEY" ;;
  }

  dimension: district_legal_name {
    type: string
    hidden: yes
    sql: ${TABLE}."District Legal Name" ;;
  }

  dimension: district_name {
    type: string
    hidden: yes
    sql: ${TABLE}."District Name" ;;
  }

  dimension: district_operational_status_code {
    type: string
    sql: ${TABLE}."District Operational Status Code" ;;
  }

  dimension: district_organization_type {
    type: string
    sql: ${TABLE}."District Organization Type" ;;
  }

  dimension: economically_disadvantaged_status_code {
    type: string
    sql: ${TABLE}."Economically Disadvantaged Status Code" ;;
  }

  dimension: ell_program_eligibility_code {
    type: string
    sql: ${TABLE}."ELL Program Eligibility Code" ;;
  }

  dimension: ell_program_participation_code {
    type: string
    hidden: yes
    sql: ${TABLE}."ELL Program Participation Code" ;;
  }

  dimension: english_proficiency_code {
    type: string
    hidden: yes
    sql: ${TABLE}."English Proficiency Code" ;;
  }

  dimension: enrolled_special_education_at_school_year_start {
    type: string
    sql: ${TABLE}."Enrolled Special Education At School Year Start" ;;
  }

  dimension_group: entry {
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
    sql: ${TABLE}."Entry Date" ;;
  }

  dimension: expected_diploma_type {
    type: string
    label: "Expected Diploma Type"
    description: "Expected Graduation Option. The option determined and indicated in the student's IEP.
    3 = Modified Option
    4 = Ability Option
    5 = Standard Option"
    sql: ${TABLE}."Expected Diploma Type" ;;
  }

  dimension: expected_diploma_type_code {
    type: string
    hidden: yes
    sql: ${TABLE}."Expected Diploma Type Code" ;;
  }

  dimension: extended_school_year {
    type: string
    sql: ${TABLE}."Extended School Year" ;;
  }

  dimension: food_program_participation_code {
    type: string
    sql: ${TABLE}."Food Program Participation Code" ;;
  }

  dimension: gifted_participation_code {
    type: string
    sql: ${TABLE}."Gifted Participation Code" ;;
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

  dimension: hearing_impairment_level {
    type: string
    sql: ${TABLE}."Hearing Impairment Level" ;;
  }

  dimension: hearing_impairment_level_code {
    type: string
    sql: ${TABLE}."Hearing Impairment Level Code" ;;
  }

  dimension: home_schooled_ind {
    type: string
    sql: ${TABLE}."Home Schooled Ind" ;;
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

  dimension_group: last_evaluation {
    type: time
    label: "Last Evaluation Date"
    description: "Date on which the student last received a formal special education evaluation."
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."Last Evaluation Date" ;;
  }

  dimension_group: last_iep {
    type: time
    label: "Last IEP Date"
    description: "Date on which the student last received an Individual Education Plan (IEP)."
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."Last IEP Date" ;;
  }

  dimension: level_of_integration {
    type: string
    sql: ${TABLE}."Level of Integration" ;;
  }

  dimension: level_of_integration_code {
    type: string
    sql: ${TABLE}."Level of Integration Code" ;;
  }

  dimension: living_setting {
    type: string
    sql: ${TABLE}."Living Setting" ;;
  }

  dimension: living_setting_code {
    type: string
    sql: ${TABLE}."Living Setting Code" ;;
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

  dimension: migrant_status_code {
    type: string
    sql: ${TABLE}."Migrant Status Code" ;;
  }

  dimension_group: modified_date_special_ed_snap {
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
    sql: ${TABLE}."modified date SPECIAL_ED_SNAP" ;;
  }

  dimension: modified_indicator_special_ed_snap {
    type: string
    sql: ${TABLE}."modified indicator SPECIAL_ED_SNAP" ;;
  }

  dimension: nces_district_id {
    type: string
    sql: ${TABLE}."NCES District ID" ;;
  }

  dimension: nces_school_id {
    type: string
    sql: ${TABLE}."NCES School ID" ;;
  }

  dimension: planned_post_graduate_activity {
    type: string
    sql: ${TABLE}."Planned Post Graduate Activity" ;;
  }

  dimension: planned_post_graduate_activity_code {
    type: string
    sql: ${TABLE}."Planned Post Graduate Activity Code" ;;
  }

  dimension: primary_area_of_exceptionality {
    type: string
    label: "Primary Area of Exceptionality"
    description: "Values:
    G = Gifted Only or Gifted as primary and disability as secondary as indicated in the IEP.
    SE = Disability Only or Disability as primary and Gifted as secondary as indicated in the IEP."
    sql: ${TABLE}."Primary Area of Exceptionality" ;;
  }

  dimension: primary_area_of_exceptionality_code {
    type: string
    sql: ${TABLE}."Primary Area of Exceptionality Code" ;;
  }

  dimension: primary_cause_of_disability {
    type: string
    sql: ${TABLE}."Primary Cause of Disability" ;;
  }

  dimension: primary_cause_of_disability_code {
    type: string
    sql: ${TABLE}."Primary Cause of Disability Code" ;;
  }

  dimension: primary_disability {
    type: string
    sql: ${TABLE}."Primary Disability" ;;
  }

  dimension: primary_disability_code {
    type: string
    sql: ${TABLE}."Primary Disability Code" ;;
  }

  dimension: primary_setting {
    type: string
    sql: ${TABLE}."Primary Setting" ;;
  }

  dimension: primary_setting_code {
    type: string
    sql: ${TABLE}."Primary Setting Code" ;;
  }

  dimension: quaternary_disability {
    type: string
    sql: ${TABLE}."Quaternary Disability" ;;
  }

  dimension: quaternary_disability_code {
    type: string
    sql: ${TABLE}."Quaternary Disability Code" ;;
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

  dimension: secondary_disability {
    type: string
    label: "Secondary Disability"
    description: "Values:
    Autism
    Deaf-Blindness
    Developmental Delay
    Emotional Disturbance
    Hearing Impairment
    Intellectual Disability (previously referred to as MR – Mental Retardation)
    Multiple Disabilities
    Other Health Impairment
    Orthopedic Impairment
    Speech or Language Impairment
    Specific Learning Disability
    Traumatic Brain Injury
    Visual Impairment"
    sql: ${TABLE}."Secondary Disability" ;;
  }

  dimension: secondary_disability_code {
    type: string
    hidden: yes
    sql: ${TABLE}."Secondary Disability Code" ;;
  }

  dimension: section_504_status {
    type: string
    sql: ${TABLE}."Section 504 Status" ;;
  }

  dimension_group: special_ed_exit {
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
    sql: ${TABLE}."Special Ed Exit Date" ;;
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

  dimension: staff_key_for_se_teacher_id {
    type: number
    sql: ${TABLE}."STAFF KEY for SE Teacher ID" ;;
  }

  dimension: student_address_base_zip_code {
    type: string
    hidden: yes
    sql: ${TABLE}."Student Address Base Zip Code" ;;
  }

  dimension: student_address_city {
    type: string
    sql: ${TABLE}."Student Address City" ;;
  }

  dimension: student_address_state {
    type: string
    sql: ${TABLE}."Student Address State" ;;
  }

  dimension: student_address_street_1 {
    type: string
    hidden: yes
    sql: ${TABLE}."Student Address Street 1" ;;
  }

  dimension: student_address_street_2 {
    type: string
    hidden: yes
    sql: ${TABLE}."Student Address Street 2" ;;
  }

  dimension: student_address_zip_code {
    type: string
    hidden: yes
    sql: ${TABLE}."Student Address Zip Code" ;;
  }

  dimension_group: student_birth {
    type: time
    hidden: yes
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

  dimension: student_age {
    type: number
    sql: CONVERT(INT,DATEDIFF(day,${TABLE}."Student Birth Date",GETDATE()))/365  ;;
  }

  dimension: student_first_name {
    type: string
    sql: ${TABLE}."Student First Name" ;;
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
    hidden: yes
    sql: ${TABLE}."Student ID" ;;
  }

  dimension: student_key {
    type: number
    hidden: yes
    sql: ${TABLE}."STUDENT KEY" ;;
  }

  dimension: student_last_name {
    type: string
    hidden: yes
    sql: ${TABLE}."Student Last Name" ;;
  }

  dimension: student_lives_with_code {
    type: string
    sql: ${TABLE}."Student Lives With Code" ;;
  }

  dimension: student_middle_initial {
    type: string
    hidden: yes
    sql: ${TABLE}."Student Middle Initial" ;;
  }

  dimension: student_name {
    type: string
    hidden: yes
    sql: ${TABLE}."Student Name" ;;
  }

  dimension: student_race_1_ethnicity_code {
    type: string
    hidden: yes
    sql: ${TABLE}."Student Race 1 Ethnicity Code" ;;
  }

  dimension: student_race_2_code {
    type: string
    hidden: yes
    sql: ${TABLE}."Student Race 2 Code" ;;
  }

  dimension: student_race_3_code {
    type: string
    hidden: yes
    sql: ${TABLE}."Student Race 3 Code" ;;
  }

  dimension: student_race_4_code {
    type: string
    hidden: yes
    sql: ${TABLE}."Student Race 4 Code" ;;
  }

  dimension: student_race_5_code {
    type: string
    hidden: yes
    sql: ${TABLE}."Student Race 5 Code" ;;
  }

  dimension: student_race_ethnicity_derived {
    type: string
    hidden: yes
    sql: ${TABLE}."Student Race Ethnicity Derived" ;;
  }

  dimension: student_race_ethnicity_subgroup {
    type: string
    hidden: yes
    sql: ${TABLE}."Student Race Ethnicity Subgroup" ;;
  }

  dimension: student_race_ethnicity_subgroup_code {
    type: string
    hidden: yes
    sql: ${TABLE}."Student Race Ethnicity Subgroup Code" ;;
  }

  dimension_group: student_snapshot {
    type: time
    hidden: yes
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

  dimension: tertiary_disability {
    type: string
    sql: ${TABLE}."Tertiary Disability" ;;
  }

  dimension: tertiary_disability_code {
    type: string
    sql: ${TABLE}."Tertiary Disability Code" ;;
  }

  dimension: transition_iep_status {
    type: string
    sql: ${TABLE}."Transition IEP Status" ;;
  }

  dimension: transition_iep_status_code {
    type: string
    sql: ${TABLE}."Transition IEP Status Code" ;;
  }

  dimension: vision_impairment_level {
    type: string
    sql: ${TABLE}."Vision Impairment Level" ;;
  }

  dimension: vision_impairment_level_code {
    type: string
    sql: ${TABLE}."Vision Impairment Level Code" ;;
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
      district_name,
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
