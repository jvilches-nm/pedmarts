view: grad_student {
  sql_table_name: REA.grad_student ;;
  label: "Student Graduation"

  dimension: agaid {
    type: string
    label: "REA Unique School ID"
    sql: ${TABLE}.AGAID ;;
  }

  dimension: cohort {
    type: string
    label: "Student Cohort"
    description: "Student's cohort identifier"
    sql: ${TABLE}.Cohort ;;
  }

  dimension: cohort_sy {
    type: number
    label: "Cohort School Year"
    description: "Cohort's expected graduation year"
    sql: ${TABLE}.Cohort_SY ;;
  }

  dimension: dist_code {
    type: string
    label: "District Code"
    sql: ${TABLE}.DistCode ;;
  }

  dimension: first_name {
    type: string
    hidden: yes
    sql: ${TABLE}.FirstName ;;
  }

  measure: graduated_state_count {
    type: sum
    label: "State Graduation Count"
    description: "Shows 1 graduation count at the last HS attended"
    sql: ${TABLE}.Graduated_StateCount ;;
  }

  dimension: last_name {
    type: string
    hidden: yes
    sql: ${TABLE}.LastName ;;
  }

  dimension: location_id {
    type: string
    hidden: yes
    sql: ${TABLE}.Location_ID ;;
  }

  dimension: num_snapshots {
    type: string
    hidden: yes
    sql: ${TABLE}.NumSnapshots ;;
  }

  dimension: outcome {
    type: string
    label: "Student Outcome Code"
    description: "Student outcome - see graduation outcome codes file"
    sql: ${TABLE}.Outcome ;;
  }

  dimension: outcome_desc {
    type: string
    label: "Student Outcome Description"
    description: "Student outcome - see graduation outcome codes file"
    sql: ${TABLE}.Outcome_Desc ;;
  }

  measure: saunits {
    type: sum
    label: "Shared Accountability Units"
    description: "Proportion of time spent at school location"
    sql: ${TABLE}.SAUnits ;;
  }

  dimension: sch_numb {
    type: number
    label: "School Number"
    sql: ${TABLE}.SchNumb ;;
  }

  measure: shared_accountability_grad_units {
    type: sum
    label: "Shared Accountility Units for Graduated Outcome"
    sql: ${TABLE}.SharedAccountability_GradUnits ;;
  }

  measure: shared_accountability_non_grad {
    type: sum
    label: "Shared Accountility Units for Non-Graduated Outcome"
    sql: ${TABLE}.SharedAccountability_NonGrad ;;
  }

#  measure: shared_accountability_rate {
#    type: percentile
#    sql: ${TABLE}.SharedAccountability_GradUnits ;;
#  }

  dimension: state_excluded {
    type: string
    label: "Excluded Student Outcome"
    hidden: yes
    sql: ${TABLE}.State_Excluded ;;
  }

  measure: state_nongrad {
    type: sum
    label: "State Non-Graduation Count"
    description: "Shows 1 non-graduation count at the last HS attended"
    sql: ${TABLE}.State_Nongrad ;;
  }

  dimension: student_id {
    type: number
    hidden: yes
    sql: ${TABLE}.StudentID ;;
  }

  dimension: total_snapshots {
    type: number
    hidden: yes
    sql: ${TABLE}.TotalSnapshots ;;
  }

  measure: count {
    type: count
  }
}
