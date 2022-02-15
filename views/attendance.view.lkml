view: attendance {
  sql_table_name: dbo.ATTENDANCE ;;

  dimension: student_id {
    type: string
    label: "Student ID"
    description: "State issued student identification number."
    hidden: yes
    sql: ${TABLE}.STUDENT_ID ;;
  }


  dimension: district_code {
    type: string
    label: "District Code"
    description: "PED defined three character district code."
    hidden: yes
    sql: ${TABLE}.DISTRICT_CODE ;;
  }

  dimension: district_name {
    type: string
    label: "District Name - Short"
    description: "The district short name. Examples: Alamogordo (vs Alamogordo Public Schools), Albuquerque (vs Albuquesrque Public Schools), "
    hidden: yes
    sql: ${TABLE}.DISTRICT_NAME ;;
  }


  dimension: location_code {
    type: string
    label: "School Code"
    description: "PED defined three character location codes. "
    hidden: yes
    sql: ${TABLE}.LOCATION_ID ;;
  }

  dimension: location_name {
    type: string
    label: "School Name"
    description: "School Name"
    hidden: yes
    sql: ${TABLE}.LOCATION_NAME ;;
  }

  dimension: organization_type_desc {
    type: string
    label: "Organization Type"
    hidden: yes
    description: "Valid values:                                                                                                               Central Office
                  Charter
                  Home School
                  Off-Site
                  Private
                  Public
                  State supported"
    sql: ${TABLE}.ORG_TYPE_CODE ;;
  }

  dimension_group: school_year {
    type: time
    hidden: yes
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
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

  measure: days_attended {
    label: "Days Attended"
    description: "Total number of days within the Reporting Period that the student was marked as Present at the location."
    type: sum
    sql: ${TABLE}.ATTEND ;;
  }

  measure: days_enrolled {
    label: "Days Enrolled"
    description: "Total number of days within the Reporting Period that the student was counted as Enrolled at the location."
    type: sum
    sql: ${TABLE}.ENROLLED ;;
  }

  measure: count {
    type: count
    hidden: yes
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      district_name,
      location_name,
      student.student_id,
      student.student_name,
      student.district_name,
      student.location_name
    ]
  }
}
