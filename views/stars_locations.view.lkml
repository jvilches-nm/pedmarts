view: stars_locations {
  sql_table_name: looker.stars_locations ;;

  dimension: district_id {
    type: number
    sql: cast(${TABLE}.district_id as int);;
  }

  dimension: district_name {
    type: string
    sql: ${TABLE}.district_name ;;
  }

  dimension: district_type {
    type: string
    sql: ${TABLE}.district_type ;;
  }

  dimension: g10_pop {
    type: number
    sql: ${TABLE}.g10_pop ;;
  }

  dimension: g11_pop {
    type: number
    sql: ${TABLE}.g11_pop ;;
  }

  dimension: g12_pop {
    type: number
    sql: ${TABLE}.g12_pop ;;
  }

  dimension: g1_pop {
    type: number
    sql: ${TABLE}.g1_pop ;;
  }

  dimension: g2_pop {
    type: number
    sql: ${TABLE}.g2_pop ;;
  }

  dimension: g3_pop {
    type: number
    sql: ${TABLE}.g3_pop ;;
  }

  dimension: g4_pop {
    type: number
    sql: ${TABLE}.g4_pop ;;
  }

  dimension: g5_pop {
    type: number
    sql: ${TABLE}.g5_pop ;;
  }

  dimension: g6_pop {
    type: number
    sql: ${TABLE}.g6_pop ;;
  }

  dimension: g7_pop {
    type: number
    sql: ${TABLE}.g7_pop ;;
  }

  dimension: g8_pop {
    type: number
    sql: ${TABLE}.g8_pop ;;
  }

  dimension: g9_pop {
    type: number
    sql: ${TABLE}.g9_pop ;;
  }

  dimension: grade_range {
    type: string
    sql: ${TABLE}.grade_range ;;
  }

  dimension: kf_pop {
    type: number
    sql: ${TABLE}.kf_pop ;;
  }

  dimension: location_address {
    type: string
    sql: ${TABLE}.location_address ;;
  }

  dimension: location_city {
    type: string
    sql: ${TABLE}.location_city ;;
  }

  dimension: location_code {
    type: string
    sql: ${TABLE}.location_code ;;
  }

  dimension: location_county {
    type: string
    sql: ${TABLE}.location_county ;;
  }

  dimension: location_id {
    type: number
    sql: cast(${TABLE}.location_id as int);;
  }

  dimension: location_identity {
    type: number
    value_format_name: id
    sql: ${TABLE}.location_identity ;;
  }

  dimension: location_latitude {
    type: string
    sql: ${TABLE}.location_latitude ;;
  }

  dimension: location_longitude {
    type: string
    sql: ${TABLE}.location_longitude ;;
  }

  dimension: location_name {
    type: string
    sql: ${TABLE}.location_name ;;
  }

  dimension: location_phone {
    type: string
    sql: ${TABLE}.location_phone ;;
  }

  dimension: location_state {
    type: string
    sql: ${TABLE}.location_state ;;
  }

  dimension: location_type {
    type: string
    sql: ${TABLE}.location_type ;;
  }

  dimension: location_website {
    type: string
    sql: ${TABLE}.location_website ;;
  }

  dimension: location_year {
    type: string
    sql: ${TABLE}.location_year ;;
  }

  dimension: location_zip {
    type: string
    sql: ${TABLE}.location_zip ;;
  }

  dimension: nces_district_id {
    type: string
    sql: ${TABLE}.nces_district_id ;;
  }

  dimension: nces_school_id {
    type: string
    sql: ${TABLE}.nces_school_id ;;
  }

  dimension: obms_code {
    type: string
    sql: ${TABLE}.obms_code ;;
  }

  dimension: pk_pop {
    type: number
    sql: ${TABLE}.pk_pop ;;
  }

  dimension: school_level {
    type: string
    sql: ${TABLE}.school_level ;;
  }

  dimension: school_level_code {
    type: string
    sql: ${TABLE}.school_level_code ;;
  }

  dimension: student_pop {
    type: number
    sql: ${TABLE}.student_pop ;;
  }

  measure: count {
    type: count
    drill_fields: [district_name, location_name]
  }
}
