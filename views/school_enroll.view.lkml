view: school_enroll {
  sql_table_name: dbo.SCHOOL_ENROLL ;;

  dimension: district_code {
    type: string
    sql: ${TABLE}.DISTRICT_CODE ;;
  }

  dimension: effective_date {
    type: string
    sql: ${TABLE}."effective date" ;;
  }

  dimension: enroll_code {
    type: string
    sql: ${TABLE}.ENROLL_CODE ;;
  }

  dimension: enroll_desc {
    type: string
    sql: ${TABLE}.ENROLL_DESC ;;
  }

  dimension: location_id {
    type: string
    sql: ${TABLE}.LOCATION_ID ;;
  }

  dimension: school_year {
    type: string
    sql: ${TABLE}.SCHOOL_YEAR ;;
  }

  dimension: student_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.STUDENT_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [student.student_id, student.student_name, student.district_name, student.location_name]
  }
}
