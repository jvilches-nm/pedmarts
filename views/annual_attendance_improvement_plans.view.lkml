view: aip_submissions {
  label: "Attendance Improvement Plan Submission"
  sql_table_name: dbo.AttendTrack_tbl_Submissions ;;

  dimension: certified {
    type: string
    sql: case when ${TABLE}.Certified = 'True' then 'Yes'
              when ${TABLE}.Certified = 'False' then 'No'
              else '' end;;
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
    type: number
    sql: CAST(${TABLE}.DistrictCode AS int) ;;
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
    type: number
    sql: CAST(${TABLE}.SchoolCode AS int) ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  dimension: year_id {
    type: number
    sql: CAST(${TABLE}.YearID AS NUMERIC);;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
