view: aip_submissions {
  label: "Attendance Improvement Plan Submission"
  sql_table_name: dbo.AttendTrack_tbl_Submissions ;;

  dimension: certified {
    type: string
    sql: ${TABLE}.Certified ;;
  }

  dimension_group: create {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CreateDate ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}.CreatedBy ;;
  }

  dimension: district_code {
    type: string
    sql: ${TABLE}.DistrictCode ;;
  }

  dimension: modified_by {
    type: string
    sql: ${TABLE}.ModifiedBy ;;
  }

  dimension_group: modified {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ModifiedDate ;;
  }

  dimension: sbid {
    type: string
    sql: ${TABLE}.SBID ;;
  }

  dimension: school_code {
    type: string
    sql: ${TABLE}.SchoolCode ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
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
