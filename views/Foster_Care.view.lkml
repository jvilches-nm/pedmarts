view: fc_matched {
  sql_table_name: dbo.FC MATCHED ;;

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

  dimension_group: dateof_birth {
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
    sql: ${TABLE}.DateofBirth ;;
  }

  dimension: district_code {
    type: string
    sql: ${TABLE}."District Code" ;;
  }

  dimension: district_name {
    type: string
    sql: ${TABLE}.DistrictName ;;
  }

  dimension: family_id {
    type: string
    sql: ${TABLE}.FamilyID ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.Gender ;;
  }

  dimension_group: involved_start {
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
    sql: ${TABLE}."Involved Start Date" ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension: location_id {
    type: string
    sql: ${TABLE}."Location ID" ;;
  }

  dimension: location_name {
    type: string
    sql: ${TABLE}.LocationName ;;
  }

  dimension: match_code {
    type: string
    sql: ${TABLE}.MatchCode ;;
  }

  dimension: mi {
    type: string
    sql: ${TABLE}.MI ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.Month ;;
  }

  dimension: month_begin_date {
    type: string
    sql: ${TABLE}."Month Begin Date" ;;
  }

  dimension: person_id {
    type: string
    sql: ${TABLE}.PersonID ;;
  }

  dimension: provider_county {
    type: string
    sql: ${TABLE}.ProviderCounty ;;
  }

  dimension: school_year_end_date {
    type: string
    label: "School Year"
    description: "Using STARS school year notation, e.g. 2022-06-30"
    sql: ${TABLE}.SchoolYear ;;
  }

  dimension_group: stars_dob {
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
    sql: ${TABLE}.Stars_DOB ;;
  }

  dimension: stars_first_name {
    type: string
    sql: ${TABLE}.Stars_FirstName ;;
  }

  dimension: stars_last_name {
    type: string
    sql: ${TABLE}.Stars_LastName ;;
  }

  dimension: stars_mi {
    type: string
    sql: ${TABLE}.Stars_MI ;;
  }

  dimension: student_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."Student ID" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      last_name,
      first_name,
      district_name,
      location_name,
      stars_last_name,
      stars_first_name,
      student.student_id,
      student.student_name,
      student.district_name,
      student.location_name
    ]
  }
}
