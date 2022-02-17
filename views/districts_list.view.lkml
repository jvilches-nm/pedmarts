view: districts_list {
  derived_table: {
    sql: select distinct district_code, district_name, location_id, location_name
         from Stud_Snapshot;;
  }

  dimension: pk_district_code {
    type: number
    label: "District Code"
    primary_key: yes
    sql: CAST(${TABLE}.district_code as int);;
  }

  dimension: district_name {
    type: string
    sql: ${TABLE}.district_name ;;
  }

  }
