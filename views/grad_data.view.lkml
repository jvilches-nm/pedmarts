view: grad_data {
  sql_table_name: REA.grad_data ;;

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

  measure: sy2011 {
    type: sum
    sql: ${TABLE}.SY2011 ;;
  }

  measure: sy2012 {
    type: sum
    sql: ${TABLE}.SY2012 ;;
  }

  measure: sy2013 {
    type: sum
    sql: ${TABLE}.SY2013 ;;
  }

  measure: sy2014 {
    type: sum
    sql: ${TABLE}.SY2014 ;;
  }

  measure: sy2015 {
    type: sum
    sql: ${TABLE}.SY2015 ;;
  }

  measure: sy2016 {
    type: sum
    sql: ${TABLE}.SY2016 ;;
  }

  measure: sy2017 {
    type: sum
    sql: ${TABLE}.SY2017 ;;
  }

  measure: sy2018 {
    type: sum
    sql: ${TABLE}.SY2018 ;;
  }

  measure: sy2019 {
    type: sum
    sql: ${TABLE}.SY2019 ;;
  }

  measure: sy2020 {
    type: sum
    sql: ${TABLE}.SY2020 ;;
  }

  measure: sy2021 {
    type: sum
    sql: ${TABLE}.SY2021 ;;
  }

  measure: count {
    type: count
    drill_fields: [dist_name, schname]
  }
}
