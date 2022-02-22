view: teacher {
  sql_table_name: dbo.Teacher ;;

  dimension: assignment {
    type: string
    label: "Assignment"
    description: "Staff Assignment Descriptions"
    sql: ${TABLE}.Assignment ;;
  }

  dimension: assignment_category {
    type: string
    label: "Assignment Category"
    description: ""
    sql: ${TABLE}."Assignment Category" ;;

  }

  dimension: assignment_code {
    type: string
    label: "Assignment Code"
    description: "PED defined assignment or position codes."
    sql: ${TABLE}."Assignment Code" ;;
  }

  dimension_group: assignment_date {
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
    hidden: yes
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
    hidden: yes
    sql: ${TABLE}."Certification Subject Area" ;;
  }

  dimension: certification_subject_area_code {
    type: string
    hidden: yes
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
    description: "Highest degree earned by the staff member."
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
    label: "Location Code"
    description: "PED defined three character location code of staff member's primary location."
    sql: ${TABLE}."Location ID" ;;
  }

  dimension: location_legal_name {
    type: string
    label: "School Name"
    sql: ${TABLE}."Location Legal Name" ;;
  }

  dimension_group: original_hire {
    type: time
    label: "Original Hire Date"
    description: "Date when employee was first hired at the school district or state charter."
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
    label: "Percent Time Assigned"
    description: "The portion of the staff member’s time that is allocated to the assignment."
    sql: ${TABLE}."Percentage of Time Assigned" ;;
  }

  dimension: primary_location_id {
    type: string
    label: "Primary Location Code"
    description: "PED defined three character location code of staff member's primary location.
                  This is either a PED location (school) code, or sometimes the district location code = 000"
    sql: ${TABLE}."Primary Location ID" ;;
  }

  dimension: primary_location_name {
    type: string
    label: "Primary Location Name"
    description: "Location (school) name. Either a PED location (school) name, or sometimes the district name if location code = 000"
    sql: ${TABLE}."Primary Location Name" ;;
  }

  dimension_group: school_year_date {
    type: time
    description: "The school year is documented with the last day in the school year."
    hidden: yes
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
     hidden: yes
    sql: ${TABLE}."Staff Birth Date" ;;
  }

  dimension: staff_age {
    type: number
    label: "Age at time of snapshot"
    sql: CONVERT(INT,DATEDIFF(day,${TABLE}."Staff Birth Date",${TABLE}."Staff Snapshot Date"))/365  ;;
  }

  dimension: staff_e_mail_address {
    type: string
    hidden: yes
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
    label: "Termination Reason"
    sql: ${TABLE}."Staff Exit Reason" ;;
  }

  dimension: staff_exit_reason_code {
    type: string
    label: "Termination Reason Code"
    sql: ${TABLE}."Staff Exit Reason Code" ;;
  }

  dimension: staff_first_name {
    type: string
    hidden: yes
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
    hidden: yes
    sql: ${TABLE}."Staff ID" ;;
  }

  dimension: staff_last_name {
    type: string
    hidden: yes
    sql: ${TABLE}."Staff Last Name" ;;
  }

  dimension: staff_name {
    type: string
    hidden: yes
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
    description: "Primary chosen race"
    sql: ${TABLE}."Staff Race 1 or Ethnicity" ;;
  }

  dimension: staff_race_1_or_ethnicity_code {
    type: string
    sql: ${TABLE}."Staff Race 1 or Ethnicity Code" ;;
  }

  dimension: staff_race_2 {
    type: string
    description: "Secondary chosen race of Staff"
    sql: ${TABLE}."Staff Race 2" ;;
  }

  dimension: staff_race_2_code {
    type: string
    sql: ${TABLE}."Staff Race 2 Code" ;;
  }

  dimension: staff_race_3 {
    type: string
    description: "Third chosen race of Staff"
    sql: ${TABLE}."Staff Race 3" ;;
  }

  dimension: staff_race_3_code {
    type: string
    sql: ${TABLE}."Staff Race 3 Code" ;;
  }

  dimension: staff_race_4 {
    type: string
    description: "Fourth chosen race of Staff"
    sql: ${TABLE}."Staff Race 4" ;;
  }

  dimension: staff_race_4_code {
    type: string
    sql: ${TABLE}."Staff Race 4 Code" ;;
  }

  dimension: staff_race_5 {
    type: string
    description: "Fifth chosen race of Staff"
    sql: ${TABLE}."Staff Race 5" ;;
  }

  dimension: staff_race_5_code {
    type: string
    hidden: yes
    sql: ${TABLE}."Staff Race 5 Code" ;;
  }

  dimension: staff_race_or_ethnicity_derived {
    type: string
    sql: ${TABLE}."Staff Race or Ethnicity Derived" ;;
  }

  dimension: staff_race_or_ethnicity_subgroup {
    type: string
    description: "The primary New Mexico Tribe or Pueblo with which the staff member is affiliated."
    sql: case when ${staff_race_or_ethnicity_subgroup_code} = '00' then 'Not Applicable'
              when ${staff_race_or_ethnicity_subgroup_code} = '01' then 'Acoma'
              when ${staff_race_or_ethnicity_subgroup_code} = '02' then 'Cochiti'
              when ${staff_race_or_ethnicity_subgroup_code} = '03' then 'Isleta'
              when ${staff_race_or_ethnicity_subgroup_code} = '04' then 'Jemez'
              when ${staff_race_or_ethnicity_subgroup_code} = '05' then 'Jicarilla Apache'
              when ${staff_race_or_ethnicity_subgroup_code} = '06' then 'Laguna'
              when ${staff_race_or_ethnicity_subgroup_code} = '07' then 'Mescalero Apache'
              when ${staff_race_or_ethnicity_subgroup_code} = '08' then 'Nambe'
              when ${staff_race_or_ethnicity_subgroup_code} = '09' then 'Navajo'
              when ${staff_race_or_ethnicity_subgroup_code} = '10' then 'Picuris'
              when ${staff_race_or_ethnicity_subgroup_code} = '11' then 'Pojoaque'
              when ${staff_race_or_ethnicity_subgroup_code} = '12' then 'San Felipe'
              when ${staff_race_or_ethnicity_subgroup_code} = '13' then 'San Ildefonso'
              when ${staff_race_or_ethnicity_subgroup_code} = '14' then 'Ohkay Owingeh (formerly San Juan)'
              when ${staff_race_or_ethnicity_subgroup_code} = '15' then 'Sandia'
              when ${staff_race_or_ethnicity_subgroup_code} = '16' then 'Santa Ana'
              when ${staff_race_or_ethnicity_subgroup_code} = '17' then 'Santa Clara'
              when ${staff_race_or_ethnicity_subgroup_code} = '18' then 'Kewa (formerly Santo Domingo)'
              when ${staff_race_or_ethnicity_subgroup_code} = '19' then 'Taos'
              when ${staff_race_or_ethnicity_subgroup_code} = '20' then 'Tesuque'
              when ${staff_race_or_ethnicity_subgroup_code} = '21' then 'Zia'
              when ${staff_race_or_ethnicity_subgroup_code} = '22' then 'Zuni'
              when ${staff_race_or_ethnicity_subgroup_code} = '23' then 'Other'
              end
              ;;
  }

  dimension: staff_race_or_ethnicity_subgroup_code {
    type: string
    description: "The primary New Mexico Tribe or Pueblo with which the staff member is affiliated."
    sql: ${TABLE}."Staff Race or Ethnicity Subgroup Code" ;;
  }

  dimension_group: staff_snapshot {
    type: time
    #hidden: yes
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

  dimension: snapshot_period {
    type: string
    label: "Snapshot Period"
    order_by_field: snapshot_period_order
    description: "Defines the count for which the snapshot was taken, for example 40 Day, 80 Day, 120 Day, End of Year"
    sql:  case when month(${TABLE}."Staff Snapshot Date")=10 then '40 Day'
               when month(${TABLE}."Staff Snapshot Date")=12 then '80 Day'
               when month(${TABLE}."Staff Snapshot Date")=3 then '120 Day'
               when month(${TABLE}."Staff Snapshot Date")=6 then 'End of Year'
               when month(${TABLE}."Staff Snapshot Date")=7 then  'Open Year Round' end;;
  }

  dimension: snapshot_period_order {
    type: number
    hidden: yes
    sql: case  when month(${TABLE}."Staff Snapshot Date")=10 then 1
               when month(${TABLE}."Staff Snapshot Date")=12 then 2
               when month(${TABLE}."Staff Snapshot Date")=3 then 3
               when month(${TABLE}."Staff Snapshot Date")=6 then 4
               when month(${TABLE}."Staff Snapshot Date")=7 then 4 end;;
  }

  dimension_group: start_date_current_year {
    type: time
    label: "Staff Start Date - Current School Year"
    description: "This is the date the staff member’s contract started for the current school year. This date changes with each school year."
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
    label: "State Location ID"
    sql: ${TABLE}."State Location ID" ;;
  }

  dimension: total_years_of_experience {
    type: number
    label: "Total Years of Experience"
    description: "The number of years that the staff member has been employed by any school district in any state as a TEACHER or PRINCIPAL (including their current district).
                  Excludes “Substitute Teaching” years experience."
    sql: ${TABLE}."Total Years of Experience" ;;
  }

  dimension: total_years_of_experience_in_district {
    type: number
    label: "Total Years of Experience in District"
    description: "Total number of years that the staff member has been employed by the current school district as a TEACHER or PRINCIPAL.
                  Excludes “Substitute Teaching” years experience."
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
