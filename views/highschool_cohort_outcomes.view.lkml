view: hsco_tbl {
  sql_table_name: dbo.HSCO_tbl ;;

  dimension: assurence {
    type: string
    sql: ${TABLE}.Assurence ;;
  }

  dimension: cohort {
    type: string
    sql: ${TABLE}.Cohort ;;
  }

  dimension: out_come {
    type: string
    sql: ${TABLE}.OutCome ;;
  }

  dimension: out_come_school_year {
    type: string
    sql: ${TABLE}.OutComeSchoolYear ;;
  }

  dimension: school_year {
    type: string
    sql: ${TABLE}.SchoolYear ;;
  }

  dimension: student_id {
    type: string
    sql: ${TABLE}.StudentID ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.Year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
