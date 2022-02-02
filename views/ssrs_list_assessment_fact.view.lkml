view: ssrs_list_assement_tests_rpt {
  sql_table_name: dbo.ssrs_List_Assement_Tests_RPT ;;

  dimension: alpha_score {
    type: string
    sql: ${TABLE}."Alpha Score" ;;
  }

  dimension: assessment_id {
    type: string
    sql: ${TABLE}."Assessment ID" ;;
  }

  dimension_group: assessment_test {
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
    sql: ${TABLE}."Assessment Test Date" ;;
  }

  dimension: district_code {
    type: string
    sql: ${TABLE}."District Code" ;;
  }

  dimension: district_key {
    type: number
    sql: ${TABLE}."DISTRICT KEY" ;;
  }

  dimension: district_name {
    type: string
    sql: ${TABLE}."District Name" ;;
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

  dimension: raw_score {
    type: number
    sql: ${TABLE}."Raw Score" ;;
  }

  dimension: scaled_score {
    type: number
    sql: ${TABLE}."Scaled Score" ;;
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

  dimension: source {
    type: string
    sql: ${TABLE}.Source ;;
  }

  dimension: student_first_name {
    type: string
    sql: ${TABLE}."Student First Name" ;;
  }

  dimension: student_grade_level {
    type: string
    sql: ${TABLE}."Student Grade Level" ;;
  }

  dimension: student_id {
    type: string
    sql: ${TABLE}."Student ID" ;;
  }

  dimension: student_key {
    type: number
    sql: ${TABLE}."STUDENT KEY" ;;
  }

  dimension: student_last_name {
    type: string
    sql: ${TABLE}."Student Last Name" ;;
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

  dimension: subtest_identifiers {
    type: string
    sql: ${TABLE}."Subtest Identifiers" ;;
  }

  measure: count {
    type: count
    drill_fields: [district_name, location_legal_name, student_first_name, student_last_name]
  }
}
