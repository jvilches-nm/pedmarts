view: foster_care {
  sql_table_name: dbo.[FC MATCHED] ;;

  dimension_group: date_created {
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
    sql: ${TABLE}.DateCreated ;;
  }

  dimension_group: fc_date_of_birth {
    type: time
    label: "Date of Birth"
    description: "Date of Birth, as documented in the Foster Child Matched source data"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DateofBirth ;;
  }

  dimension: fc_district_code {
    type: string
    label: "District Code"
    description: "PED defined three character district code."
    sql: ${TABLE}."District Code" ;;
  }

  dimension: fc_district_name {
    type: string
    label: "District Name - Short"
    description: "The district short name. Examples: Alamogordo (vs Alamogordo Public Schools), Albuquerque (vs Albuquesrque Public Schools), "
    sql: ${TABLE}.DistrictName ;;
  }

  dimension: family_id {
    type: string
    label: "Family ID"
    sql: ${TABLE}.FamilyID ;;
  }

  dimension: fc_name_first {
    type: string
    label: "Name - First"
    description: "Student first name, as documented in the Foster Child Matched source data"
    sql: ${TABLE}.FirstName ;;
  }

  dimension: fc_gender {
    type: string
    label: "Birth Gender"
    description: "Gender, as documented in the Foster Child Matched source data"
    sql: ${TABLE}.Gender ;;
  }

  dimension_group: involved_start_date {
    type: time
    label: "Involved_Start"
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
    sql: ${TABLE}."Involved Start Date" ;;
  }

  dimension: fc_name_last {
    type: string
    label: "Name - Last"
    description: "Student last name, as documented in the Foster Child Matched source data"
    sql: ${TABLE}.LastName ;;
  }

  dimension: location_id {
    type: string
    label: "School Code"
    description: "PED defined three character location codes. "
    sql: ${TABLE}."Location ID" ;;
  }

  dimension: location_name {
    type: string
    label: "School Name"
    description: "School name."
    sql: ${TABLE}.LocationName ;;
  }

  dimension: match_code {
    type: string
    sql: ${TABLE}.MatchCode ;;
  }

  dimension: fc_name_mi {
    type: string
    label: "Name - MI"
    description: "Student middle initial, as documented in the Foster Child Matched source data"
    sql: ${TABLE}.MI ;;
  }

  dimension: month {
    type: string
    label: "Month"
    sql: ${TABLE}.Month ;;
  }

  dimension: month_begin_date {
    type: string
    sql: ${TABLE}."Month Begin Date" ;;
  }

  dimension: person_id {
    type: string
    label: "Person ID"
    sql: ${TABLE}.PersonID ;;
  }

  dimension: provider_county {
    type: string
    label: "Provider County"
    sql: ${TABLE}.ProviderCounty ;;
  }

  dimension: school_year_date {
    type: string
    label: "School Year"
    description: "Using STARS school year notation, e.g. 2022-06-30"
    sql: ${TABLE}.SchoolYear ;;
  }

  dimension_group: stars_dob {
    type: time
    label: "Date of Birth STARS"
    description: "Date of Birth, as documented in STARS database"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Stars_DOB ;;
  }

  dimension: student_name_first {
    type: string
    label: "Name - First STARS"
    description: "Student first name, as documented in STARS database"
    sql: ${TABLE}.Stars_FirstName ;;
  }

  dimension: student_name_last {
    type: string
    label: "Name - Last STARS"
    description: "Student last name, as documented in STARS database"
    sql: ${TABLE}.Stars_LastName ;;
  }

  dimension: student_name_mi {
    type: string
    label: "Name - MI STARS"
    description: "Student middle initial, as documented in STARS database"
    sql: ${TABLE}.Stars_MI ;;
  }

  dimension: fc_student_id {
    type: string
    label: "Student ID"
    description: "State issued student identification number (confirm = STARS ID)"
    # hidden: yes
    sql: ${TABLE}."Student ID" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
        # student.student_id,
      # student.student_name,
      # student.district_name,
      # student.location_name
  set: detail {
    fields: [
      fc_name_last,
      fc_name_first,
      fc_district_name,
      location_name,
      student_name_last,
      student_name_first,
      fc_student_id


    ]
  }
}
