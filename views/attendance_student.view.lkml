view: attendance_student {
  sql_table_name: REA.attendance_student ;;

  dimension: chronic_absent {
    type: yesno
    sql: ${TABLE}.ChronicAbsent ;;
  }

  dimension: chronic_absentee_string {
    type: string
    hidden: yes
    sql: ${TABLE}.ChronicAbsentee_String ;;
  }

  dimension: district_code {
    type: number
    hidden: yes
    sql: ${TABLE}.District_Code ;;
  }

  dimension: full_location_name {
    type: string
    hidden: yes
    sql: ${TABLE}.Full_Location_Name ;;
  }

  dimension: index {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}."Index" ;;
  }

  dimension: location_id {
    type: number
    hidden: yes
    sql: ${TABLE}.Location_ID ;;
  }

  dimension: student_id {
    type: number
    hidden: yes
    sql: ${TABLE}.Student_ID ;;
  }

  measure: total_days_enrolled {
    type: sum
    sql: ${TABLE}.Total_Days_Enrolled ;;
  }

  measure: total_days_present {
    type: sum
    sql: ${TABLE}.Total_Days_Present ;;
  }

  measure: total_days_unexcused_absent {
    type: sum
    sql: ${TABLE}.Total_Days_Unexcused_Absent ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }

  measure: count {
    type: count
    hidden: yes
    drill_fields: [full_location_name]
  }
}
