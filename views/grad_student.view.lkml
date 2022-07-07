view: grad_student {
  sql_table_name: REA.grad_student ;;

  dimension: agaid {
    type: number
    value_format_name: id
    sql: ${TABLE}.AGAID ;;
  }

  dimension: cohort {
    type: string
    sql: ${TABLE}.Cohort ;;
  }

  dimension: cohort_sy {
    type: number
    sql: ${TABLE}.Cohort_SY ;;
  }

  dimension: dist_code {
    type: number
    sql: ${TABLE}.DistCode ;;
  }

  dimension: excluded {
    type: number
    sql: ${TABLE}.Excluded ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: graduated {
    type: number
    sql: ${TABLE}.Graduated ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension: location_id {
    type: number
    sql: ${TABLE}.Location_ID ;;
  }

  dimension: nongrad {
    type: number
    sql: ${TABLE}.Nongrad ;;
  }

  dimension: num_snapshots {
    type: string
    sql: ${TABLE}.NumSnapshots ;;
  }

  dimension: outcome {
    type: string
    sql: ${TABLE}.Outcome ;;
  }

  dimension: outcome_desc {
    type: string
    sql: ${TABLE}.Outcome_Desc ;;
  }

  dimension: saunits {
    type: number
    sql: ${TABLE}.SAUnits ;;
  }

  dimension: sch_numb {
    type: number
    sql: ${TABLE}.SchNumb ;;
  }

  dimension: student_id {
    type: number
    sql: ${TABLE}.StudentID ;;
  }

  dimension: total_snapshots {
    type: number
    sql: ${TABLE}.TotalSnapshots ;;
  }

  measure: count {
    type: count
    drill_fields: [last_name, first_name]
  }
}
