view: ssrs_list_assessment_fact {
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
    type: string
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
    type: string
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

  dimension_group: school_year_end {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."School Year" ;;
  }

  dimension: school_year {
    type: string
    label: "School Year"
    description: "The two years that the school year spans"
    sql: cast(YEAR(${TABLE}."School Year")-1 as varchar) +'-'+ cast(YEAR(${TABLE}."School Year") as varchar) ;;
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
    type: string
    hidden: yes
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

  dimension: snapshot_period {
    type: string
    label: "Snapshot Period"
    order_by_field: snapshot_period_order
    description: "Defines the count for which the snapshot was taken, for example 40 Day, 80 Day, 120 Day, End of Year"
    sql:  case when month(${TABLE}."Student Snapshot Date")=10 then '40 Day'
               when month(${TABLE}."Student Snapshot Date")=12 then '80 Day'
               when month(${TABLE}."Student Snapshot Date")=3 then '120 Day'
               else 'End of Year' end;;
  }

  dimension: snapshot_period_order {
    type: number
    hidden: yes
    sql: case when month(${TABLE}."Student Snapshot Date")=10 then 1
               when month(${TABLE}."Student Snapshot Date")=12 then 2
               when month(${TABLE}."Student Snapshot Date")=3 then 3
               else 4 end;;
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
