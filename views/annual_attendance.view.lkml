view: annual_attendance {
  sql_table_name: dbo.annual_attendance ;;

  dimension: car {
    type: number
    sql: ${TABLE}.CAR ;;
  }

  measure: Chronic_Absentee_Rate{
    type: sum
    label: "Chronic Absentee Rate"
    description: "Percent of student enrolled for at least 10 days and who have missed 10% or more school days since the beginning of School Year"
    sql: ${TABLE}.CurrentYearCAS ;;
  }

  dimension: current_year_cas {
    type: number
    sql: ${TABLE}.CurrentYearCAS ;;
  }

  measure: Chronically_Absent_Student {
    type: sum
    label: "Chronically Absent Student"
    sql:${TABLE}.CurrentYearCAS  ;;
  }

  dimension: district_code {
    type: string
    sql: CAST(${TABLE}.DistrictCode AS NUMERIC) ;;
  }


  dimension: location_type {
    type: string
    sql: ${TABLE}.LocationType ;;
  }

  dimension: school_code {
    type: string
    sql: CAST(${TABLE}.SchoolCode AS NUMERIC);;
  }

  dimension: starsschool_year {
    type: date
    sql: ${TABLE}.STARSSchoolYear ;;
  }

  dimension: sub_pop_item_code {
    type: string
    sql: ${TABLE}.SubPopItemCode ;;
  }

  dimension: sub_pop_item {
    type: string
    label: "Subpopulation Item"
    sql:  case when ${sub_pop_item_code} = 'F' then 'Female'
               when ${sub_pop_item_code} = 'M' then 'Male'
               when ${sub_pop_item_code} = 'ED' then 'Economically Disadvantaged'
               when ${sub_pop_item_code} = 'H' then 'Hispanic'
               when ${sub_pop_item_code} = 'A' then 'Asian'
               when ${sub_pop_item_code} = 'C' then 'Caucasian'
               when ${sub_pop_item_code} = 'B' then 'Black  or African American'
               when ${sub_pop_item_code} = 'I' then 'American Indian/Alaskan Native'
               when ${sub_pop_item_code} = 'P' then 'Native Hawaiian or Other Pacific Islander'
               when ${sub_pop_item_code} = 'SD' then 'Students with Disabilities'
               when ${sub_pop_item_code} = 'EL' then 'English Language Learners'
               when ${sub_pop_item_code} = 'NH' then 'Not Hispanic'
               else '' end
              ;;
  }

  dimension: district_name {
    type: string
    label: " District Name"
    sql: ${TABLE}.DistrictName ;;
  }

  dimension: school_name {
    type: string
    label: " School Name"
    sql: ${TABLE}.SchoolName ;;
  }

  dimension: percent_tier_1 {
    type: string
    label: "Percent of Student in Tier 1"
    sql: ${TABLE}.Tier1AbsenceRate ;;
  }

  measure: enroll_number {
    type: sum
    label: "Enrollment"
    sql: ${TABLE}.EnrollNumber ;;
  }

  measure: tier1_absent_student {
    type: sum
    label: "No. of Student in Tier 1"
    sql: ${TABLE}.Tier1Absentee ;;
  }

  dimension: percent_tier_2 {
    type: string
    label: "Percent of Student in Tier 2"
    sql: ${TABLE}.Tier2AbsenceRate ;;
  }

  measure: tier2_absent_student {
    type: sum
    label: "No. of Student in Tier 2"
    sql: ${TABLE}.Tier2Absentee ;;
  }

  dimension: percent_tier_3 {
    type: string
    label: "Percent of Student in Tier 3"
    sql: ${TABLE}.Tier3AbsenceRate ;;
  }

  measure: tier3_absent_student {
    type: sum
    label: "No. of Student in Tier 3"
    sql: ${TABLE}.Tier3Absentee ;;
  }

  dimension: percent_tier_4 {
    type: string
    label: "Percent of Student in Tier 4"
    sql: ${TABLE}.Tier4AbsenceRate ;;
  }

  measure: tier4_absent_student {
    type: sum
    label: "No. of Student in Tier 4"
    sql: ${TABLE}.Tier4Absentee ;;
  }

  measure: total_days_enrolled {
    type: sum
    label: "Total Days Enrolled"
    sql: ${TABLE}.TotalDaysEnrolled ;;
  }

  measure: total_days_present {
    type: sum
    label: "Total Days Present"
    sql: ${TABLE}.TotalDaysPresent ;;
  }

  measure: total_days_excused_absence {
    type: sum
    label: "Total Days Excused Absence"
    sql: ${TABLE}.TotalDaysExcusedAbsence ;;
  }

  measure: avg_days_excused_absence {
    type: average
    label: "Average Excused Absences"
    sql: ${TABLE}.TotalDaysExcusedAbsence ;;
  }

  measure: total_days_unexcused_absence {
    type: sum
    label: "Total Days Unexcused Absence"
    sql: ${TABLE}.TotalDaysUnexcusedAbsence ;;
  }

  measure: avg_days_unexcused_absence {
    type: average
    label: "Average Days Unexcused Absence"
    sql: ${TABLE}.TotalDaysUnexcusedAbsence ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
