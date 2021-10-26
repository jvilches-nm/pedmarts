view: stud_snapshot {
  sql_table_name: dbo.STUD_SNAPSHOT ;;
  label: "Student Snapshot"

  dimension: grade_level {
    type: string
    label: "Grade Level"
    sql: ${TABLE}.CURR_GRADE_LVL ;;
  }

  dimension: district_code {
    type: string
    label: "District ID"
    sql: ${TABLE}.DISTRICT_CODE ;;
  }

  dimension: district_key {
    type: number
    hidden: yes
    sql: ${TABLE}.DISTRICT_KEY ;;
  }

  dimension: district_name {
    type: string
    label: "District Name"
    sql: ${TABLE}.DISTRICT_NAME ;;
  }

  dimension: student_birthdate_formatted {
    type: string
    label: "Student Birthdate - Formatted"
    description: "Date of birth formatted into a yyyymmdd string."
    sql: ${TABLE}.DOB1 ;;
  }

  dimension: economic_code {
    type: string
    sql: ${TABLE}.ECONOMIC_CODE ;;
  }

  dimension: eng_prof_code {
    type: string
    sql: ${TABLE}.ENG_PROF_CODE ;;
  }

  dimension: eng_proficiency {
    type: string
    sql: ${TABLE}.ENG_PROFICIENCY ;;
  }

  dimension: ethnic_desc {
    type: string
    sql: ${TABLE}.ETHNIC_DESC ;;
  }

  dimension: gifted_talented {
    type: string
    sql: ${TABLE}.GIFTED_TALENTED ;;
  }

  dimension: hispanic_ind {
    type: string
    sql: ${TABLE}.HISPANIC_IND ;;
  }

  dimension: home_lang_code {
    type: string
    sql: ${TABLE}.HOME_LANG_CODE ;;
  }

  dimension: home_language {
    type: string
    sql: ${TABLE}.HOME_LANGUAGE ;;
  }

  dimension: homeless {
    type: string
    sql: ${TABLE}.HOMELESS ;;
  }

  dimension: immigrant_ind {
    type: string
    sql: ${TABLE}.IMMIGRANT_IND ;;
  }

  dimension: lep_eligibil_code {
    type: string
    sql: ${TABLE}.LEP_ELIGIBIL_CODE ;;
  }

  dimension: location_id {
    type: string
    sql: ${TABLE}.LOCATION_ID ;;
  }

  dimension: location_key {
    type: number
    sql: ${TABLE}.LOCATION_KEY ;;
  }

  dimension: location_name {
    type: string
    sql: ${TABLE}.LOCATION_NAME ;;
  }

  dimension: migrant_code {
    type: string
    sql: ${TABLE}.MIGRANT_CODE ;;
  }

  dimension: migrant_status {
    type: string
    sql: ${TABLE}.MIGRANT_STATUS ;;
  }

  dimension: military_family_desc {
    type: string
    sql: ${TABLE}.MILITARY_FAMILY_DESC ;;
  }

  dimension: org_type_code {
    type: string
    sql: ${TABLE}.ORG_TYPE_CODE ;;
  }

  dimension: plan_504 {
    type: string
    sql: ${TABLE}.PLAN_504 ;;
  }

  dimension: poverty_code {
    type: string
    sql: ${TABLE}.POVERTY_CODE ;;
  }

  dimension: race2_code {
    type: string
    sql: ${TABLE}.RACE2_CODE ;;
  }

  dimension: race3_code {
    type: string
    sql: ${TABLE}.RACE3_CODE ;;
  }

  dimension: race4_code {
    type: string
    sql: ${TABLE}.RACE4_CODE ;;
  }

  dimension: race5_code {
    type: string
    sql: ${TABLE}.RACE5_CODE ;;
  }

  dimension: rptg_race_ethnicity_desc {
    type: string
    sql: ${TABLE}.RPTG_RACE_ETHNICITY_DESC ;;
  }

  dimension: school_type_code {
    type: string
    sql: ${TABLE}.SCHOOL_TYPE_CODE ;;
  }

  dimension: school_year_end_date {
    type: string
    hidden: yes
    sql: ${TABLE}.SCHOOL_YEAR ;;
  }

  dimension_group: snapshot {
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
    sql: ${TABLE}.SNAPSHOT_DATE ;;
  }

  dimension: special_ed_code {
    type: string
    sql: ${TABLE}.SPECIAL_ED_CODE ;;
  }

  dimension_group: student_birthdate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.STUD_BIRTHDATE ;;
  }

  dimension: student_middle_name {
    type: string
    sql: ${TABLE}.STUD_MIDDLE_NM ;;
  }

  dimension: student_first_name {
    type: string
    sql: ${TABLE}.STUDENT_FIRST_NM ;;
  }

  dimension: student_gender {
    type: string
    sql: ${TABLE}.STUDENT_GENDER ;;
  }

  dimension: student_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.STUDENT_ID ;;
  }

  dimension: student_key {
    type: number
    hidden: yes
    sql: ${TABLE}.STUDENT_KEY ;;
  }

  dimension: student_last_name {
    type: string
    sql: ${TABLE}.STUDENT_LAST_NM ;;
  }

  dimension: student_middde_initial {
    type: string
    sql: ${TABLE}.STUDENT_MID_INIT ;;
  }

  dimension: student_name {
    type: string
    sql: ${TABLE}.STUDENT_NAME ;;
  }

  dimension: years_us_schools {
    type: number
    sql: ${TABLE}.YEARS_US_SCHOOLS ;;
  }

  dimension: school_year {
    type: string
    sql: year(${school_year_end_date})-1 +'-'+year(${school_year_end_date}  ;;
  }

  dimension: snapshot_period {
    type: string
    sql: case when month(snapshot_date)='10' then '40D' when month(snapshot_date)='12' then '80D' when month(snapshot_date)='3' then '120D' else 'EOY' end  ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      student_name,
      district_name,
      location_name,
      grade_level
    ]
  }
}
