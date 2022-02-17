view: schools_list {
  derived_table: {
    sql: select distinct location_id, location_name
         from stud_snapshot;;
  }
  dimension: school_code {
    type: number
    primary_key: yes
    sql: cast(${TABLE}.location_id as int);;
  }

  dimension: school_name {
    type: string
    sql: ${TABLE}.location_name ;;
  }
 }
