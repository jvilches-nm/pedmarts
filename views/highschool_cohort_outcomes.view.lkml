view: hsco_tbl {
  sql_table_name: dbo.HSCO_tbl ;;

  dimension: assuarence {
    type: string
    label: "Assuarance"
    description: ""
    sql: ${TABLE}.Assurence ;;
  }

  dimension: cohort {
    type: string
    label: "Cohort"
    sql: ${TABLE}.Cohort ;;
  }

  dimension: outcome {
    type: string
    label: "OutCome"
    description: "Graduation Outcome"
    sql: ${TABLE}.OutCome ;;
  }

  dimension: out_come_school_year {
    type: string
    label: "Outcome School Year"
    sql: ${TABLE}.OutComeSchoolYear ;;
  }

  dimension: school_year_end_date{
    type: string
    label: "School Year End Date"
    sql: ${TABLE}.SchoolYear ;;
  }

  dimension: school_year {
    type: string
    label: "School Year"
    description: "The two years that the school year spans"
    sql: cast(YEAR(${TABLE}.SchoolYear)-1 as varchar) +'-'+ cast(YEAR(${TABLE}.SchoolYear) as varchar) ;;
  }

  dimension: student_id {
    type: string
    sql: ${TABLE}.StudentID ;;
  }

  dimension: year {
    type: string
    label: "Year"
    sql: ${TABLE}.Year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
