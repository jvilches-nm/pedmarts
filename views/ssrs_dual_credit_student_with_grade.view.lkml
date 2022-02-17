view: ssrs_dual_credit_student_with_grade {
  label: "Dual Credit District School Student 4 Digit Course With Grades List"
  sql_table_name: dbo.ssrs_DualCreditDistSchoolStudCourseGrade_RPT ;;

  dimension_group: birth {
    hidden: yes
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
    sql: ${TABLE}."Birth Date" ;;
  }

  dimension: student_age {
    type: number
    description: "Student age at the time of the snapshot."
    sql: CONVERT(INT,DATEDIFF(day,${TABLE}."Birth Date",${TABLE}."Snapshot Date"))/365  ;;
  }

  dimension: district_code {
    type: string
    sql: ${TABLE}."District Code" ;;
  }

  dimension: district_course_name {
    type: string
    sql: ${TABLE}."District Course Name" ;;
  }

  dimension: district_name {
    type: string
    sql: ${TABLE}."District Name" ;;
  }

  dimension: eco_dis {
    type: string
    sql: ${TABLE}."Eco Dis" ;;
  }

  dimension: ell {
    type: string
    sql: ${TABLE}.ELL ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.Gender ;;
  }

  dimension: grade_count {
    type: number
    sql: ${TABLE}."Grade Count" ;;
  }

  dimension: grade_high {
    type: string
    sql: ${TABLE}."Grade High" ;;
  }

  dimension: location_id {
    type: string
    sql: ${TABLE}."Location ID" ;;
  }

  dimension: location_name {
    type: string
    sql: ${TABLE}."Location Name" ;;
  }

  dimension: location_organization_type {
    type: string
    sql: ${TABLE}."Location Organization Type" ;;
  }

  dimension: race_ethnicity {
    type: string
    sql: ${TABLE}."Race Ethnicity" ;;
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


  dimension: snap_120_day_grade_count {
    type: number
    sql: ${TABLE}."Snap 120 day grade count" ;;
  }

  dimension: snap_120_day_high_grade {
    type: string
    sql: ${TABLE}."Snap 120 day high grade" ;;
  }

  dimension: snap_120_day_low_grade {
    type: string
    sql: ${TABLE}."Snap 120 day low grade" ;;
  }

  dimension: snap_40_day_grade_count {
    type: number
    sql: ${TABLE}."Snap 40 day grade count" ;;
  }

  dimension: snap_40_day_high_grade {
    type: string
    sql: ${TABLE}."Snap 40 day high grade" ;;
  }

  dimension: snap_40_day_low_grade {
    type: string
    sql: ${TABLE}."Snap 40 day low grade" ;;
  }

  dimension: snap_80_day_grade_count {
    type: number
    sql: ${TABLE}."Snap 80 day grade count" ;;
  }

  dimension: snap_80_day_high_grade {
    type: string
    sql: ${TABLE}."Snap 80 day high grade" ;;
  }

  dimension: snap_80_day_low_grade {
    type: string
    sql: ${TABLE}."Snap 80 day low grade" ;;
  }

  dimension: snap_eoy_grade_count {
    type: number
    sql: ${TABLE}."Snap EOY grade count" ;;
  }

  dimension: snap_eoy_high_grade {
    type: string
    sql: ${TABLE}."Snap EOY high grade" ;;
  }

  dimension: snap_eoy_low_grade {
    type: string
    sql: ${TABLE}."Snap EOY low grade" ;;
  }

  dimension_group: snapshot {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."Snapshot Date" ;;
  }

  dimension: snapshot_period {
    type: string
    label: "Snapshot Period"
    order_by_field: snapshot_period_order
    description: "Defines the count for which the snapshot was taken, for example 40 Day, 80 Day, 120 Day, End of Year"
    sql:  case when month(${TABLE}."Snapshot Date")=10 then '40 Day'
               when month(${TABLE}."Snapshot Date")=12 then '80 Day'
               when month(${TABLE}."Snapshot Date")=3 then '120 Day'
               else 'End of Year' end;;
  }

  dimension: snapshot_period_order {
    type: number
    hidden: yes
    sql: case when month(${TABLE}."Snapshot Date")=10 then 1
               when month(${TABLE}."Snapshot Date")=12 then 2
               when month(${TABLE}."Snapshot Date")=3 then 3
               else 4 end;;
  }

  dimension: sped {
    type: string
    sql: ${TABLE}.SPED ;;
  }

  dimension: state_course_id {
    type: string
    sql: ${TABLE}."State Course ID" ;;
  }

  dimension: state_course_name {
    type: string
    sql: ${TABLE}."State Course Name" ;;
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

  dimension: student_last_name {
    type: string
    sql: ${TABLE}."Student Last Name" ;;
  }

  dimension: student_middle_initial {
    type: string
    sql: ${TABLE}."Student Middle Initial" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      district_name,
      location_name,
      student_first_name,
      student_last_name,
      state_course_name,
      district_course_name
    ]
  }
}
