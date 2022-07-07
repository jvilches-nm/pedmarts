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

  dimension: sy2011 {
    type: string
    sql: ${TABLE}.SY2011 ;;
  }

  dimension: sy2012 {
    type: string
    sql: ${TABLE}.SY2012 ;;
  }

  dimension: sy2013 {
    type: string
    sql: ${TABLE}.SY2013 ;;
  }

  dimension: sy2014 {
    type: number
    sql: ${TABLE}.SY2014 ;;
  }

  dimension: sy2015 {
    type: number
    sql: ${TABLE}.SY2015 ;;
  }

  dimension: sy2016 {
    type: string
    sql: ${TABLE}.SY2016 ;;
  }

  dimension: sy2017 {
    type: string
    sql: ${TABLE}.SY2017 ;;
  }

  dimension: sy2018 {
    type: string
    sql: ${TABLE}.SY2018 ;;
  }

  dimension: sy2019 {
    type: string
    sql: ${TABLE}.SY2019 ;;
  }

  dimension: sy2020 {
    type: string
    sql: ${TABLE}.SY2020 ;;
  }

  dimension: sy2021 {
    type: string
    sql: ${TABLE}.SY2021 ;;
  }

  measure: count {
    type: count
    drill_fields: [dist_name, schname]
  }
}
