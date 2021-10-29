view: car_student {
  sql_table_name: dbo.ssrs_CAR_Student_RPT ;;

  dimension: car_indicator_1_s1_denominator {
    type: string
    sql: ${TABLE}."CAR Indicator 1S1 Denominator" ;;
  }

  dimension: car_indicator_1_s1_numerator {
    type: string
    sql: ${TABLE}."CAR Indicator 1S1 Numerator" ;;
  }

  dimension: car_indicator_1_s2_denominator {
    type: string
    sql: ${TABLE}."CAR Indicator 1S2 Denominator" ;;
  }

  dimension: car_indicator_1_s2_numerator {
    type: string
    sql: ${TABLE}."CAR Indicator 1S2 Numerator" ;;
  }

  dimension: car_indicator_2_s1_denominator {
    type: string
    sql: ${TABLE}."CAR Indicator 2S1 Denominator" ;;
  }

  dimension: car_indicator_2_s1_numerator {
    type: string
    sql: ${TABLE}."CAR Indicator 2S1 Numerator" ;;
  }

  dimension: car_indicator_2_s2_denominator {
    type: string
    sql: ${TABLE}."CAR Indicator 2S2 Denominator" ;;
  }

  dimension: car_indicator_2_s2_numerator {
    type: string
    sql: ${TABLE}."CAR Indicator 2S2 Numerator" ;;
  }

  dimension: car_indicator_2_s3_denominator {
    type: string
    sql: ${TABLE}."CAR Indicator 2S3 Denominator" ;;
  }

  dimension: car_indicator_2_s3_numerator {
    type: string
    sql: ${TABLE}."CAR Indicator 2S3 Numerator" ;;
  }

  dimension: car_indicator_3_s1_denominator {
    type: string
    sql: ${TABLE}."CAR Indicator 3S1 Denominator" ;;
  }

  dimension: car_indicator_3_s1_numerator {
    type: string
    sql: ${TABLE}."CAR Indicator 3S1 Numerator" ;;
  }

  dimension: car_indicator_4_s1_denominator {
    type: string
    sql: ${TABLE}."CAR Indicator 4S1 Denominator" ;;
  }

  dimension: car_indicator_4_s1_numerator {
    type: string
    sql: ${TABLE}."CAR Indicator 4S1 Numerator" ;;
  }

  dimension: car_indicator_5_s1_denominator {
    type: string
    sql: ${TABLE}."CAR Indicator 5S1 Denominator" ;;
  }

  dimension: car_indicator_5_s1_numerator {
    type: string
    sql: ${TABLE}."CAR Indicator 5S1 Numerator" ;;
  }

  dimension: car_indicator_5_s2_denominator {
    type: string
    sql: ${TABLE}."CAR Indicator 5S2 Denominator" ;;
  }

  dimension: car_indicator_5_s2_numerator {
    type: string
    sql: ${TABLE}."CAR Indicator 5S2 Numerator" ;;
  }

  dimension: car_indicator_5_s3_numerator {
    type: string
    sql: ${TABLE}."CAR Indicator 5S3 Numerator" ;;
  }

  dimension: car_indicator_5_s4_numerator {
    type: string
    sql: ${TABLE}."CAR Indicator 5S4 Numerator" ;;
  }

  dimension: car_indicator_6_s1_denominator {
    type: string
    sql: ${TABLE}."CAR Indicator 6S1 Denominator" ;;
  }

  dimension: car_indicator_6_s1_numerator {
    type: string
    sql: ${TABLE}."CAR Indicator 6S1 Numerator" ;;
  }

  dimension: certificate {
    type: string
    sql: ${TABLE}.Certificate ;;
  }

  dimension: cohort_grad {
    type: string
    sql: ${TABLE}."Cohort Grad" ;;
  }

  dimension: concentrator {
    type: string
    sql: ${TABLE}.Concentrator ;;
  }

  dimension: cte_student {
    type: string
    sql: ${TABLE}."CTE Student" ;;
  }

  dimension: current_year_concentrator {
    type: string
    sql: ${TABLE}."Current Year Concentrator" ;;
  }

  dimension: current_year_nontrad {
    type: string
    sql: ${TABLE}."Current Year Nontrad" ;;
  }

  dimension: current_year_participant {
    type: string
    sql: ${TABLE}."Current Year Participant" ;;
  }

  dimension: diploma_type_code {
    type: string
    sql: ${TABLE}."Diploma Type Code" ;;
  }

  dimension: displaced_homemaker {
    type: string
    sql: ${TABLE}."Displaced Homemaker" ;;
  }

  dimension: district_code {
    type: string
    sql: ${TABLE}."District Code" ;;
  }

  dimension: district_key {
    type: string
    sql: ${TABLE}."DISTRICT KEY" ;;
  }

  dimension: district_legal_name {
    type: string
    sql: ${TABLE}."District Legal Name" ;;
  }

  dimension: eco_dis {
    type: string
    sql: ${TABLE}."Eco Dis" ;;
  }

  dimension: grade_range {
    type: string
    sql: ${TABLE}."Grade Range" ;;
  }

  dimension: graduated {
    type: string
    sql: ${TABLE}.Graduated ;;
  }

  dimension: lep {
    type: string
    sql: ${TABLE}.LEP ;;
  }

  dimension: location_id {
    type: string
    sql: ${TABLE}."Location ID" ;;
  }

  dimension: location_key {
    type: string
    sql: ${TABLE}."LOCATION KEY" ;;
  }

  dimension: location_legal_name {
    type: string
    sql: ${TABLE}."Location Legal Name" ;;
  }

  dimension: location_organization_type_code {
    type: string
    sql: ${TABLE}."Location Organization Type Code" ;;
  }

  dimension: location_status {
    type: string
    sql: ${TABLE}."Location Status" ;;
  }

  dimension: math_proficiency {
    type: string
    sql: ${TABLE}."Math Proficiency" ;;
  }

  dimension: migrant {
    type: string
    sql: ${TABLE}.Migrant ;;
  }

  dimension: nontrad {
    type: string
    sql: ${TABLE}.Nontrad ;;
  }

  dimension: nontrad_concentrator {
    type: string
    sql: ${TABLE}."Nontrad Concentrator" ;;
  }

  dimension: race {
    type: string
    sql: ${TABLE}.Race ;;
  }

  dimension: reading_proficiency {
    type: string
    sql: ${TABLE}."Reading Proficiency" ;;
  }

  dimension: reason_for_leaving {
    type: string
    sql: ${TABLE}."Reason for Leaving" ;;
  }

  dimension: retained {
    type: string
    sql: ${TABLE}.Retained ;;
  }

  dimension: returned_next_year {
    type: string
    sql: ${TABLE}."Returned Next Year" ;;
  }

  dimension: school_level {
    type: string
    sql: ${TABLE}."School Level" ;;
  }

  dimension: school_year {
    type: string
    # timeframes: [
    #   raw,
    #   time,
    #   date,
    #   week,
    #   month,
    #   quarter,
    #   year
    # ]
   sql: cast(YEAR(${TABLE}.school_year)-1 as varchar) +'-'+ cast(YEAR(${TABLE}.school_year) as varchar) ;;
    #sql: ${TABLE}."School Year" ;;
  }


  dimension: science_proficiency {
    type: string
    sql: ${TABLE}."Science Proficiency" ;;
  }

  dimension: sex {
    type: string
    sql: ${TABLE}.Sex ;;
  }

  dimension: single_parent {
    type: string
    sql: ${TABLE}."Single Parent" ;;
  }

  dimension: sped {
    type: string
    sql: ${TABLE}.SPED ;;
  }

  dimension: student_first_name {
    type: string
    sql: ${TABLE}."Student First Name" ;;
  }

  dimension: student_grade_level {
    type: string
    sql: ${TABLE}."Student Grade Level" ;;
  }

  dimension: student_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."Student ID" ;;
  }

  dimension: student_last_name {
    type: string
    sql: ${TABLE}."Student Last Name" ;;
  }

  dimension_group: student_snapshot {
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
    sql: ${TABLE}."Student Snapshot Date" ;;
  }

  dimension: used_in_grad_cohort_calculation {
    type: string
    sql: ${TABLE}."Used in Grad Cohort Calculation" ;;
  }

  dimension: version_number {
    type: string
    sql: ${TABLE}."Version Number" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      district_legal_name,
      location_legal_name,
      student_first_name,
      student_last_name,
      student.student_id,
      student.student_name,
      student.district_name,
      student.location_name
    ]
  }
}
