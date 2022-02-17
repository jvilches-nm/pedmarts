view: migrant_students {
  sql_table_name: dbo.MIGRANT ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: access1 {
    type: string
    sql: ${TABLE}.Access1 ;;
  }

  dimension: access2 {
    type: string
    sql: ${TABLE}.Access2 ;;
  }

  dimension: access3 {
    type: string
    sql: ${TABLE}.Access3 ;;
  }

  dimension: access4 {
    type: string
    sql: ${TABLE}.Access4 ;;
  }

  dimension: access5 {
    type: string
    sql: ${TABLE}.Access5 ;;
  }

  dimension: access6 {
    type: string
    sql: ${TABLE}.Access6 ;;
  }

  dimension: access7 {
    type: string
    sql: ${TABLE}.Access7 ;;
  }

  dimension: access8 {
    type: string
    sql: ${TABLE}.Access8 ;;
  }

  dimension: access_k {
    type: string
    sql: ${TABLE}.AccessK ;;
  }

  dimension: any_csry {
    type: string
    sql: ${TABLE}.AnyCSRY ;;
  }

  dimension: any_css {
    type: string
    sql: ${TABLE}.AnyCSS ;;
  }

  dimension: any_inst_ser_ry {
    type: string
    sql: ${TABLE}.AnyInstSerRY ;;
  }

  dimension: any_inst_ser_s {
    type: string
    sql: ${TABLE}.AnyInstSerS ;;
  }

  dimension: any_rsry {
    type: string
    sql: ${TABLE}.AnyRSRY ;;
  }

  dimension: any_rss {
    type: string
    sql: ${TABLE}.AnyRSS ;;
  }

  dimension: any_ssry {
    type: string
    sql: ${TABLE}.AnySSRY ;;
  }

  dimension: any_sss {
    type: string
    sql: ${TABLE}.AnySSS ;;
  }

  dimension: birth_city {
    type: string
    sql: ${TABLE}.BirthCity ;;
  }

  dimension: birth_country {
    type: string
    sql: ${TABLE}.BirthCountry ;;
  }

  dimension: birth_date {
    type: string
    hidden: yes
    sql: ${TABLE}."Birth Date" ;;
  }

  dimension: student_age {
    type: number
    sql: CONVERT(INT,DATEDIFF(day,${TABLE}."Birth Date",GETDATE()))/365  ;;
  }

  dimension: birth_state {
    type: string
    sql: ${TABLE}.BirthState ;;
  }

  dimension: cd {
    type: string
    sql: ${TABLE}.CD ;;
  }

  dimension: cont_of_ser_ry {
    type: string
    sql: ${TABLE}.ContOfSerRY ;;
  }

  dimension: cont_of_ser_s {
    type: string
    sql: ${TABLE}.ContOfSerS ;;
  }

  dimension: crtla10 {
    type: string
    sql: ${TABLE}.CRTLA10 ;;
  }

  dimension: crtla11 {
    type: string
    sql: ${TABLE}.CRTLA11 ;;
  }

  dimension: crtla3 {
    type: string
    sql: ${TABLE}.CRTLA3 ;;
  }

  dimension: crtla4 {
    type: string
    sql: ${TABLE}.CRTLA4 ;;
  }

  dimension: crtla5 {
    type: string
    sql: ${TABLE}.CRTLA5 ;;
  }

  dimension: crtla6 {
    type: string
    sql: ${TABLE}.CRTLA6 ;;
  }

  dimension: crtla7 {
    type: string
    sql: ${TABLE}.CRTLA7 ;;
  }

  dimension: crtla8 {
    type: string
    sql: ${TABLE}.CRTLA8 ;;
  }

  dimension: crtla9 {
    type: string
    sql: ${TABLE}.CRTLA9 ;;
  }

  dimension: crtm10 {
    type: string
    sql: ${TABLE}.CRTM10 ;;
  }

  dimension: crtm11 {
    type: string
    sql: ${TABLE}.CRTM11 ;;
  }

  dimension: crtm3 {
    type: string
    sql: ${TABLE}.CRTM3 ;;
  }

  dimension: crtm4 {
    type: string
    sql: ${TABLE}.CRTM4 ;;
  }

  dimension: crtm5 {
    type: string
    sql: ${TABLE}.CRTM5 ;;
  }

  dimension: crtm6 {
    type: string
    sql: ${TABLE}.CRTM6 ;;
  }

  dimension: crtm7 {
    type: string
    sql: ${TABLE}.CRTM7 ;;
  }

  dimension: crtm8 {
    type: string
    sql: ${TABLE}.CRTM8 ;;
  }

  dimension: crtm9 {
    type: string
    sql: ${TABLE}.CRTM9 ;;
  }

  dimension: district {
    type: string
    sql: ${TABLE}.District ;;
  }

  dimension: district_name {
    type: string
    sql: ${TABLE}."District Name" ;;
  }

  dimension: drop_out {
    type: string
    sql: ${TABLE}.DropOut ;;
  }

  dimension: eden_grade {
    type: string
    sql: ${TABLE}.eden_grade ;;
  }

  dimension: education_interrupted {
    type: string
    sql: ${TABLE}.EducationInterrupted ;;
  }

  dimension: enroll_date {
    type: string
    sql: ${TABLE}.EnrollDate ;;
  }

  dimension: ethnicity {
    type: string
    sql: ${TABLE}.Ethnicity ;;
  }

  dimension: first_name {
    type: string
    hidden: yes
    sql: ${TABLE}.FirstName ;;
  }

  dimension: ged {
    type: string
    sql: ${TABLE}.GED ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.Gender ;;
  }

  dimension: grade {
    type: string
    sql: ${TABLE}.Grade ;;
  }

  dimension: grade_level {
    type: string
    sql: ${TABLE}.GradeLevel ;;
  }

  dimension: high_school_cary {
    type: string
    sql: ${TABLE}.HighSchoolCARY ;;
  }

  dimension: high_school_cas {
    type: string
    sql: ${TABLE}.HighSchoolCAS ;;
  }

  dimension: last_name {
    type: string
    hidden: yes
    sql: ${TABLE}.LastName ;;
  }

  dimension: lep {
    type: string
    sql: ${TABLE}.LEP ;;
  }

  dimension: lepno_crt {
    type: string
    sql: ${TABLE}.LEPNoCRT ;;
  }

  dimension: maps_id {
    type: string
    sql: ${TABLE}."MAPS ID" ;;
  }

  dimension: math_instruct_ry {
    type: string
    sql: ${TABLE}.MathInstructRY ;;
  }

  dimension: math_instruct_s {
    type: string
    sql: ${TABLE}.MathInstructS ;;
  }

  dimension: middle_name {
    type: string
    hidden: yes
    sql: ${TABLE}.MiddleName ;;
  }

  dimension: mobility_status {
    type: string
    sql: ${TABLE}.MobilityStatus ;;
  }

  dimension: mobility_status_school_year {
    type: string
    sql: ${TABLE}.MobilityStatusSchoolYear ;;
  }

  dimension: pfs {
    type: string
    sql: ${TABLE}.PFS ;;
  }

  dimension: priority_student3_5 {
    type: string
    sql: ${TABLE}.PriorityStudent3_5 ;;
  }

  dimension: qadlast36 {
    type: string
    sql: ${TABLE}.QADLast36 ;;
  }

  dimension: qual_arrival_date {
    type: string
    sql: ${TABLE}.QualArrivalDate ;;
  }

  dimension: race_ethnicity {
    type: string
    sql: ${TABLE}.RaceEthnicity ;;
  }

  dimension: reading_instruct_ry {
    type: string
    sql: ${TABLE}.ReadingInstructRY ;;
  }

  dimension: reading_instruct_s {
    type: string
    sql: ${TABLE}.ReadingInstructS ;;
  }

  dimension: received_service_ry {
    type: string
    sql: ${TABLE}.ReceivedServiceRY ;;
  }

  dimension: received_service_s {
    type: string
    sql: ${TABLE}.ReceivedServiceS ;;
  }

  dimension: school {
    type: string
    sql: ${TABLE}.School ;;
  }

  dimension: school_name {
    type: string
    sql: ${TABLE}."School Name" ;;
  }

  dimension_group: school_year_end {
    type: time
    hidden:  yes
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
    sql: cast(YEAR(${TABLE}."School Year") +'-'+ cast(YEAR(${TABLE}."School Year") as varchar) ;;
  }

  dimension: spec_ed {
    type: string
    sql: ${TABLE}.SpecEd ;;
  }

  dimension: spec_ed_uaa {
    type: string
    sql: ${TABLE}.SpecEdUAA ;;
  }

  dimension: ssid {
    type: string
    hidden: yes
    sql: ${TABLE}.SSID ;;
  }

  dimension: stw_em {
    type: string
    sql: ${TABLE}.STW_EM ;;
  }

  dimension: stw_er {
    type: string
    sql: ${TABLE}.STW_ER ;;
  }

  dimension: stw_tm {
    type: string
    sql: ${TABLE}.STW_TM ;;
  }

  dimension: stw_tr {
    type: string
    sql: ${TABLE}.STW_TR ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      last_name,
      first_name,
      middle_name,
      district_name,
      school_name
    ]
  }
}
