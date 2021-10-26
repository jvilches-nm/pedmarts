view: attendance {
  sql_table_name: dbo.ATTENDANCE ;;

  dimension: attend {
    type: number
    sql: ${TABLE}.ATTEND ;;
  }

  dimension: district_code {
    type: string
    sql: ${TABLE}.DISTRICT_CODE ;;
  }

  dimension: district_name {
    type: string
    sql: ${TABLE}.DISTRICT_NAME ;;
  }

  dimension: enrolled {
    type: number
    sql: ${TABLE}.ENROLLED ;;
  }

  dimension: location_id {
    type: string
    sql: ${TABLE}.LOCATION_ID ;;
  }

  dimension: location_name {
    type: string
    sql: ${TABLE}.LOCATION_NAME ;;
  }

  dimension: org_type_code {
    type: string
    sql: ${TABLE}.ORG_TYPE_CODE ;;
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

  dimension: student_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.STUDENT_ID ;;
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
      student.student_id,
      student.student_name,
      student.district_name,
      student.location_name
    ]
  }
}
