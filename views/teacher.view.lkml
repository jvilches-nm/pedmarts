view: teacher {
  sql_table_name: dbo.TEACHER ;;

  dimension: assignment {
    type: string
    label: "Assignment"
    description: "Staff Assignment Descriptions"
    sql: ${TABLE}.Assignment ;;
  }

  dimension: assignment_category {
    type: string
    label: "Assignment Category"
    description: " Grouping of Staff Assignment Codes
    A. Administrators
10, 11, 12, 13, 36

B. Educational Assistant
31, 31I, 32, 32I,33, 33I, 34, 34S, 34I, 34IS

C. Healthcare
01, 03, 07, 70

D. Media Specialist
76, 77, 78

E. Non-Certified Personnel
All Other Non-Certified Support Staff – Maintenance, Transportation, Food Service, IT, Facilities, Non-Certified Supervisors or Directors,Non-Certified Administrative Support Staff, Non-Certified School Support Staff

F. Other Personnel

G. Principals

H. Related Service Personnel For Special Education (6-21 Year Olds)

I. Related Service Personnel For Special Education (3-5 Year Olds)

J. School Counselor

K. Supervisors, Directors or Managers

L.   Teachers"
    sql: ${TABLE}."Assignment Category" ;;

  }

  dimension: assignment_code {
    type: string
    label: "Assignment Code"
    description: "PED defined assignment or position codes."
    sql: ${TABLE}."Assignment Code" ;;
  }

  dimension_group: assignment {
    type: time
    label: "Assignment Date"
    description: "Indicator of report date."
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."Assignment Date" ;;
  }

  dimension: baccalaureate_degree_institution {
    type: string
    label: "Baccalaureate Degree Institution"
    description: "Baccalaureate Degree Institution of staff member."
    sql: ${TABLE}."Baccalaureate Degree Institution" ;;
  }

  dimension: baccalaureate_degree_institution_code {
    type: string
    label: "Baccalaureate Degree Institution Code"
    sql: ${TABLE}."Baccalaureate Degree Institution Code" ;;
  }

  dimension: certificate_number {
    type: string
    sql: ${TABLE}."Certificate Number" ;;
  }

  dimension: certification_area {
    type: string
    sql: ${TABLE}."Certification Area" ;;
  }

  dimension: certification_area_category {
    type: string
    sql: ${TABLE}."Certification Area Category" ;;
  }

  dimension: certification_area_code {
    type: string
    sql: ${TABLE}."Certification Area Code" ;;
  }

  dimension: certification_area_sort_sequence {
    type: number
    sql: ${TABLE}."Certification Area Sort Sequence" ;;
  }

  dimension_group: certification_effective {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."Certification Effective Date" ;;
  }

  dimension_group: certification_expiration {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."Certification Expiration Date" ;;
  }

  dimension: certification_level {
    type: string
    sql: ${TABLE}."Certification Level" ;;
  }

  dimension: certification_level_category {
    type: string
    sql: ${TABLE}."Certification Level Category" ;;
  }

  dimension: certification_level_code {
    type: string
    sql: ${TABLE}."Certification Level Code" ;;
  }

  dimension: certification_level_sort_sequence {
    type: number
    sql: ${TABLE}."Certification Level Sort Sequence" ;;
  }

  dimension: certification_status {
    type: string
    sql: ${TABLE}."Certification Status" ;;
  }

  dimension: certification_subject_area {
    type: string
    sql: ${TABLE}."Certification Subject Area" ;;
  }

  dimension: certification_subject_area_code {
    type: string
    sql: ${TABLE}."Certification Subject Area Code" ;;
  }

  dimension: certification_type {
    type: string
    sql: ${TABLE}."Certification Type" ;;
  }

  dimension: certification_type_category {
    type: string
    sql: ${TABLE}."Certification Type Category" ;;
  }

  dimension: certification_type_code {
    type: string
    sql: ${TABLE}."Certification Type Code" ;;
  }

  dimension: course_assignment_required_certification_area {
    type: string
    sql: ${TABLE}."Course Assignment Required Certification Area" ;;
  }

  dimension: course_assignment_required_certification_level {
    type: string
    sql: ${TABLE}."Course Assignment Required Certification Level" ;;
  }

  dimension: course_assignment_required_certification_type {
    type: string
    sql: ${TABLE}."Course Assignment Required Certification Type" ;;
  }

  dimension: district_code {
    type: string
    sql: ${TABLE}."District Code" ;;
  }

  dimension: district_name {
    type: string
    sql: ${TABLE}."District Name" ;;
  }

  dimension: full_district_name {
    type: string
    sql: ${TABLE}."Full District Name" ;;
  }

  dimension: highest_degree_earned {
    type: string
    sql: ${TABLE}."Highest Degree Earned" ;;
  }

  dimension: highest_degree_earned_code {
    type: string
    sql: ${TABLE}."Highest Degree Earned Code" ;;
  }

  dimension: highest_degree_institution {
    type: string
    sql: ${TABLE}."Highest Degree Institution" ;;
  }

  dimension: highest_degree_institution_code {
    type: string
    sql: ${TABLE}."Highest Degree Institution Code" ;;
  }

  dimension: location_id {
    type: string
    sql: ${TABLE}."Location ID" ;;
  }

  dimension: location_legal_name {
    type: string
    sql: ${TABLE}."Location Legal Name" ;;
  }

  dimension_group: original_hire {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."Original Hire Date" ;;
  }

  dimension: percentage_of_time_assigned {
    type: number
    sql: ${TABLE}."Percentage of Time Assigned" ;;
  }

  dimension: primary_location_id {
    type: string
    sql: ${TABLE}."Primary Location ID" ;;
  }

  dimension: primary_location_name {
    type: string
    sql: ${TABLE}."Primary Location Name" ;;
  }

  dimension_group: school_year_date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."School Year" ;;
  }

  dimension: school_year {
    type: string
    label: "School Year"
    description: "The two years that the school year spans"
    sql: cast(YEAR(${TABLE}."School Year")-1 as varchar) +'-'+ cast(YEAR(${TABLE}."School Year") as varchar) ;;
  }

  dimension_group: staff_birth {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."Staff Birth Date" ;;
  }

  dimension: staff_e_mail_address {
    type: string
    sql: ${TABLE}."Staff eMail Address" ;;
  }

  dimension_group: staff_exit {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."Staff Exit Date" ;;
  }

  dimension: staff_exit_reason {
    type: string
    sql: ${TABLE}."Staff Exit Reason" ;;
  }

  dimension: staff_exit_reason_code {
    type: string
    sql: ${TABLE}."Staff Exit Reason Code" ;;
  }

  dimension: staff_first_name {
    type: string
    sql: ${TABLE}."Staff First Name" ;;
  }

  dimension: staff_gender {
    type: string
    sql: ${TABLE}."Staff Gender" ;;
  }

  dimension: staff_gender_code {
    type: string
    sql: ${TABLE}."Staff Gender Code" ;;
  }

  dimension: staff_hispanic_indicator {
    type: string
    sql: ${TABLE}."Staff Hispanic Indicator" ;;
  }

  dimension: staff_id {
    type: string
    sql: ${TABLE}."Staff ID" ;;
  }

  dimension: staff_last_name {
    type: string
    sql: ${TABLE}."Staff Last Name" ;;
  }

  dimension: staff_name {
    type: string
    sql: ${TABLE}."Staff Name" ;;
  }

  dimension: staff_qualification_status {
    type: string
    sql: ${TABLE}."Staff Qualification Status" ;;
  }

  dimension: staff_qualification_status_code {
    type: string
    sql: ${TABLE}."Staff Qualification Status Code" ;;
  }

  dimension: staff_race_1_or_ethnicity {
    type: string
    sql: ${TABLE}."Staff Race 1 or Ethnicity" ;;
  }

  dimension: staff_race_1_or_ethnicity_code {
    type: string
    sql: ${TABLE}."Staff Race 1 or Ethnicity Code" ;;
  }

  dimension: staff_race_2 {
    type: string
    sql: ${TABLE}."Staff Race 2" ;;
  }

  dimension: staff_race_2_code {
    type: string
    sql: ${TABLE}."Staff Race 2 Code" ;;
  }

  dimension: staff_race_3 {
    type: string
    sql: ${TABLE}."Staff Race 3" ;;
  }

  dimension: staff_race_3_code {
    type: string
    sql: ${TABLE}."Staff Race 3 Code" ;;
  }

  dimension: staff_race_4 {
    type: string
    sql: ${TABLE}."Staff Race 4" ;;
  }

  dimension: staff_race_4_code {
    type: string
    sql: ${TABLE}."Staff Race 4 Code" ;;
  }

  dimension: staff_race_5 {
    type: string
    sql: ${TABLE}."Staff Race 5" ;;
  }

  dimension: staff_race_5_code {
    type: string
    sql: ${TABLE}."Staff Race 5 Code" ;;
  }

  dimension: staff_race_or_ethnicity_derived {
    type: string
    sql: ${TABLE}."Staff Race or Ethnicity Derived" ;;
  }

  dimension: staff_race_or_ethnicity_subgroup {
    type: string
    sql: ${TABLE}."Staff Race or Ethnicity Subgroup" ;;
  }

  dimension: staff_race_or_ethnicity_subgroup_code {
    type: string
    sql: ${TABLE}."Staff Race or Ethnicity Subgroup Code" ;;
  }

  dimension_group: staff_snapshot {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."Staff Snapshot Date" ;;
  }

  dimension_group: start_date_current_year {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."Start Date Current Year" ;;
  }

  dimension: state_district_code {
    type: string
    sql: ${TABLE}."State District Code" ;;
  }

  dimension: state_location_id {
    type: string
    sql: ${TABLE}."State Location ID" ;;
  }

  dimension: total_years_of_experience {
    type: number
    sql: ${TABLE}."Total Years of Experience" ;;
  }

  dimension: total_years_of_experience_in_district {
    type: number
    sql: ${TABLE}."Total Years of Experience in District" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      primary_location_name,
      staff_name,
      staff_first_name,
      staff_last_name,
      district_name,
      full_district_name,
      location_legal_name
    ]
  }
}
