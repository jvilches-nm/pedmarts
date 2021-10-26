view: student {
  sql_table_name: dbo.STUDENT ;;
  drill_fields: [student_id]

  dimension: student_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.STUDENT_ID ;;
  }

  dimension: curr_grade_lvl {
    type: string
    sql: ${TABLE}.CURR_GRADE_LVL ;;
  }

  dimension: district_code {
    type: string
    sql: ${TABLE}.DISTRICT_CODE ;;
  }

  dimension: district_key {
    type: number
    sql: ${TABLE}.DISTRICT_KEY ;;
  }

  dimension: district_name {
    type: string
    sql: ${TABLE}.DISTRICT_NAME ;;
  }

  dimension: dob {
    type: string
    sql: ${TABLE}.DOB ;;
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
    sql: ${TABLE}.SCHOOL_YEAR ;;
  }

  dimension: special_ed_code {
    type: string
    sql: ${TABLE}.SPECIAL_ED_CODE ;;
  }

  dimension_group: stud_birthdate {
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
    sql: ${TABLE}.STUD_BIRTHDATE ;;
  }

  dimension: stud_middle_nm {
    type: string
    sql: ${TABLE}.STUD_MIDDLE_NM ;;
  }

  dimension: student_first_nm {
    type: string
    sql: ${TABLE}.STUDENT_FIRST_NM ;;
  }

  dimension: student_gender {
    type: string
    sql: ${TABLE}.STUDENT_GENDER ;;
  }

  dimension: student_key {
    type: number
    sql: ${TABLE}.STUDENT_KEY ;;
  }

  dimension: student_last_nm {
    type: string
    sql: ${TABLE}.STUDENT_LAST_NM ;;
  }

  dimension: student_mid_init {
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

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      student_id,
      student_name,
      district_name,
      location_name,
      assessment_view.count,
      attendance.count,
      car_student.count,
      discipline.count,
      fact_tests.count,
      fc_matched.count,
      program_fact.count,
      school_enroll.count,
      special_ed_snap.count,
      stud_snapshot.count,
      student_courses.count
    ]
  }
}
