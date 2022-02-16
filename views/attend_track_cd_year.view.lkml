view: attend_track_cd_year {
  sql_table_name: dbo.AttendTrack_cd_year ;;

  dimension: year_desc {
    type: string
    sql: ${TABLE}.YearDesc ;;
  }

  dimension: year_id {
    type: string
    sql: ${TABLE}.YearID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
