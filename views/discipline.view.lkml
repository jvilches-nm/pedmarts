view: discipline {
  sql_table_name: dbo.DISCIPLINE ;;

  dimension: discipline_infraction {
    type: string
    sql: ${TABLE}."Discipline Infraction" ;;
  }

  dimension: discipline_infraction_code {
    type: string
    sql: ${TABLE}."Discipline Infraction Code" ;;
  }

  dimension: discipline_response {
    type: string
    sql: ${TABLE}."Discipline Response" ;;
  }

  dimension: discipline_response_code {
    type: string
    sql: ${TABLE}."Discipline Response Code" ;;
  }

  dimension: discipline_response_duration {
    type: number
    sql: ${TABLE}."Discipline Response Duration" ;;
  }

  dimension: district_code {
    type: string
    sql: ${TABLE}."District Code" ;;
  }

  dimension: district_legal_name {
    type: string
    sql: ${TABLE}."District Legal Name" ;;
  }

  dimension: full_location_name {
    type: string
    sql: ${TABLE}."Full Location Name" ;;
  }

  dimension: location_id {
    type: string
    sql: ${TABLE}."Location ID" ;;
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

  dimension: student_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."Student ID" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      district_legal_name,
      full_location_name,
      student.student_id,
      student.student_name,
      student.district_name,
      student.location_name
    ]
  }
}
