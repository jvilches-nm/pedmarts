view: graddata_overall {
  sql_table_name: REA.graddata_overall ;;
  label: "Annual Graduation"

  dimension: aigid {
    type: string
    sql: ${TABLE}.AIGID ;;
  }

  dimension: demographic {
    type: string
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
    sql: ${TABLE}.SY ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.Value ;;
  }

  measure: count {
    type: count
    drill_fields: [dist_name, schname]
  }
}
