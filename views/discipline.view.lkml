view: discipline {
  sql_table_name: dbo.DISCIPLINE ;;

  dimension: discipline_infraction {
    type: string
    label: "Infraction Description"
    sql: ${TABLE}."Discipline Infraction" ;;
  }

  dimension: infraction_category {
    type: string
    label: "Infraction Category"
    sql: case when ${infraction_code} in ('1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16') then 'Violence'
              when ${infraction_code} in ('40','41','42','43','44','45','46') then 'Vandalism'
              when ${infraction_code} in ('51','52','53','54','55P','55U','55D','56','57') then 'Weapons, Substance Abuse, Gang Activity'
              when ${infraction_code} in ('61','62','63','64') then 'Firearms Possession'
              when ${infraction_code} = '70' then 'Attendance'
              else 'other' end
    ;;
  }

  dimension: infraction_code {
    type: string
    label: "Infraction Code"
    description: "Valid values:
1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 13, 14, 15, 16,
40, 41, 42, 43, 44, 45, 46, 51, 52, 53, 54, 55P, 55U, 55D, 56, 57, 61, 62, 63, 64, 70 "
    sql: ${TABLE}."Discipline Infraction Code" ;;
  }

  dimension: discipline_response {
    type: string
    label: "Response Description"
    description: "1, Arrest/referral to justice system
2, In school suspension (does not include Lunch, Before/After School Detentions)
3, Out of school suspension  (does not include Lunch, Before/After School Detentions)
4, Expulsion - no educational services – REGULAR ED ONLY; NOT to be used for Special Ed students)
5, Modified Expulsion (still receiving some educational services)
6, Sent to alternate setting by school personnel
7, Sent to alternate setting based on hearing officer determination of likely injury
8, Other/Unknown
10, Restraint
11, Seclusion
12, Called police instead of restraining or secluding student"
    sql: ${TABLE}."Discipline Response" ;;
  }

  dimension: response_code {
    type: string
    label: "Response Code"
    description: "The primary Response Code that indicates the type of response to a discipline violation. Valid values:
1, 2, 3, 4, 5, 6, 7, 8, 10, 11, 12"
    sql: ${TABLE}."Discipline Response Code" ;;
  }

  dimension: response_duration {
    type: number
    label: "Response Duration"
    description: "The length, in school days, of the discipline response."
    sql: ${TABLE}."Discipline Response Duration" ;;
  }

  dimension: district_code {
    type: string
    label: "District Code"
    sql: ${TABLE}."District Code" ;;
  }

  dimension: district_name_legal {
    type: string
    label: "District Legal Name"
    sql: ${TABLE}."District Legal Name" ;;
  }

  dimension: location_name {
    type: string
    label: "School Name"
    sql: ${TABLE}."Full Location Name" ;;
  }

  dimension: location_code {
    type: string
    label: "School Code"
    description: "PED defined three character location codes. "
    sql: ${TABLE}."Location ID" ;;
  }

  dimension_group: school_year {
    type: time
    label: "School Year"
    description: "The PED standard school year runs from July 1 through June 30."
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

  dimension: student_id {
    type: string
    hidden: yes
    sql: ${TABLE}."Student ID" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      district_name_legal,
      location_name,
      student.student_id,
      student.student_name,
      student.district_name,
      student.location_name
    ]
  }
}
