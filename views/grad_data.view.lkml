view: grad_data {
  sql_table_name: REA.grad_data ;;
  label: "Annual Graduation"

  dimension: aigid {
    type: string
    sql: ${TABLE}.AIGID ;;
  }

  dimension: demographic {
    type: string
    label: "Student Demographic Group"
    sql: ${TABLE}.Demographic ;;
  }

  dimension: dist_code {
    type: number
    sql: ${TABLE}.DistCode ;;
  }

  dimension: dist_name {
    type: string
    sql: ${TABLE}.DistName ;;
  }

  dimension: location_id {
    type: string
    sql: ${TABLE}.Location_ID ;;
  }

  dimension: metric {
    type: string
    label: "Graduation metric - rate, graduates (numerator), cohort size (denominator)"
    sql: ${TABLE}.Metric ;;
  }

  dimension: sch_numb {
    type: number
    sql: ${TABLE}.SchNumb ;;
  }

  dimension: schname {
    type: string
    sql: ${TABLE}.Schname ;;
  }

  dimension: sy {
    type: string
    label: "School Year"
    description: "Last calendar year of the school year"
    sql: ${TABLE}.SY ;;
  }

  measure: value {
    type: max

    sql: ${TABLE}.Value ;;
  }

  measure: count {
    type: count
    drill_fields: [dist_name, schname]
  }
}
