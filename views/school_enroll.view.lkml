view: school_enroll {
  sql_table_name: dbo.SCHOOL_ENROLL ;;

  dimension: district_code {
    type: string
    label: "District Code"
    description: "PED 3 digit District ID"
    sql: ${TABLE}.DISTRICT_CODE ;;
  }

  dimension: effective_date {
    type: string
    label: ""
    sql: ${TABLE}."effective date" ;;
  }

  dimension: enroll_code {
    type: string
    label: "Enrollment Code"
    description: "CE"
    sql: ${TABLE}.ENROLL_CODE ;;
  }

  dimension: enroll_desc {
    type: string
    label: "Course Description"
    description: "Course Enrollment Description."
    sql: ${TABLE}.ENROLL_DESC ;;
  }

  dimension: location_id {
    type: string
    label: "School Code"
    description: "PED 3 digit School ID"
    sql: ${TABLE}.LOCATION_ID ;;
  }

  dimension: school_year {
    type: string
    label: "School Year"
    description: "The PED standard school year runs from July 1 through June 30. PED uses the June 30th date to designate the full school year. "
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
