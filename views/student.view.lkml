view: student {
  sql_table_name: dbo.STUDENT ;;
  drill_fields: [student_id]

  dimension: student_id {
    primary_key: yes
    label: "Student ID"
    description: "State issued student identification number. "
    type: string
    hidden: yes
    sql: ${TABLE}.STUDENT_ID ;;
  }

  dimension: current_grade_level {
    type: string
    label: "Current Grade Level Code"
    description: "Current grade level recorded at the time of the snapshot
PK = Pre-Kindergarten
KN = Kindergarten, Half-Day
KF = Kindergarten, Full-Day
01 = First Grade
02 = Second Grade
03 = Third Grade
04 = Fourth Grade
05 = Fifth Grade
06 = Sixth Grade
07 = Seventh Grade
08 = Eighth Grade
09 = Ninth Grade
10 = Tenth Grade
11 = Eleventh Grade
12 = Twelfth Grade
OS = Out of School"
    sql: ${TABLE}.CURR_GRADE_LVL ;;
  }

  dimension: district_code {
    type: string
    label: "District Code"
    description: "PED defined three character district code."
    sql: ${TABLE}.DISTRICT_CODE ;;
  }

  dimension: district_key {
    type: number
    label: "District Key Stars"
    description: "STARS database auto generated key for individual districts. The key is a unique identifier."
    hidden: yes
    sql: ${TABLE}.DISTRICT_KEY ;;
  }

  dimension: district_name {
    type: string
    label: "District Name - Short"
    description: "The district short name. Examples: Alamogordo (vs Alamogordo Public Schools), Albuquerque (vs Albuquesrque Public Schools), "
    sql: ${TABLE}.DISTRICT_NAME ;;
  }

  dimension: dob {
    type: string
    label: "date_of_birth"
    description: "Student Date of Birth"
    hidden: yes
    sql: ${TABLE}.DOB ;;
  }

  dimension: economic_code {
    type: string
    label: "Economic Code"
    description: "Valid values:
F
N
R"
    sql: ${TABLE}.ECONOMIC_CODE ;;
  }

  dimension: english_proficiency_code {
    type: string
    label: "English Proficiency Code"
    description: "see below code list"
    sql: ${TABLE}.ENG_PROF_CODE ;;
  }

  dimension: english_proficiency {
    type: string
    label: "English Proficiency"
    description: "NT = Not tested (Only for PreK as they can’t be tested)
0 =  IFEP (Initially Fluent English Proficient Student was never EL)
1 = Current ELL/EL Student
2 = RFEP 1 (Reclassified Fluent English Proficient-exited Year 1)
3 = RFEP 2 (Reclassified Fluent English Proficient-exited Year 2)
4 = RFEP 3 (Reclassified Fluent English Proficient -exited Year 3)
5 = RFEP 4 (Reclassified Fluent English Proficient -exited Year 4)
6 = RFEP 5+ (Reclassified Fluent English Proficient -exited Year 5+)
"
    sql: ${TABLE}.ENG_PROFICIENCY ;;
  }

  dimension: ethnicity {
    type: string
    label: "Ethnicity"
    description: "Ethnicity of student.
Valid Values:
  Caucasian
  Black  or African American
  Asian
  American Indian/Alaskan Native
  Native Hawaiian or Other Pacific Islander
"
    sql: ${TABLE}.ETHNIC_DESC ;;
  }

  dimension: gifted_talented {
    type: string
    label: "Gifted Participation"
    description: "Y = Student is identified as a Gifted
N = Student is not identified as a Gifted."
    sql: ${TABLE}.GIFTED_TALENTED ;;
  }

  dimension: hispanic {
    type: string
    label: "Hispanic"
    description: "Valid Values:
Y, N"
    sql: ${TABLE}.HISPANIC_IND ;;
  }

  dimension: homeless {
    type: string
    label: "Homeless"
    description: "Valid Values:
Y - Student is homeless.
N - Student is not homeless."
    sql: ${TABLE}.HOMELESS ;;
  }

  dimension: immigrant {
    type: string
    label: "Immigrant"
    description: "Valid values:
Yes = Immigrant
No = Non-Immigrant
"
    sql: ${TABLE}.IMMIGRANT_IND ;;
  }

  dimension: lep_eligible {
    type: string
    label: "LEP Eligible"
    description: "Valide Values:
O
N
Y
"
    sql: ${TABLE}.LEP_ELIGIBIL_CODE ;;
  }

  dimension: location_code {
    type: string
    label: "School Code"
    description: "PED defined three character location codes."
    sql: ${TABLE}.LOCATION_ID ;;
  }

  dimension: location_key {
    type: number
    label: "Location Key Stars"
    description: "STARS database auto generated key for individual schools. The key is a unique identifier."
    hidden: yes
    sql: ${TABLE}.LOCATION_KEY ;;
  }

  dimension: location_name {
    type: string
    label: "School Name"
    description: "School Name"
    sql: ${TABLE}.LOCATION_NAME ;;
  }

  dimension: migrant {
    type: string
    hidden: yes
    sql: ${TABLE}.MIGRANT_CODE ;;
  }

  dimension: migrant_status {
    type: string
    label: "Migrant Status"
    description: "Yes/No"
    sql: ${TABLE}.MIGRANT_STATUS ;;
  }

  dimension: military_family {
    type: string
    label: "Military Family"
    description: "Valid Values:
  Active,
  National Guard,
  Reserve
"
    sql: ${TABLE}.MILITARY_FAMILY_DESC ;;
  }

  dimension: plan_504 {
    type: string
    label: "Plan 504"
    description: "Y = Student qualifies as an individual with disabilities under section 504 of the Rehabilitation Act.
N = Student does not qualify as an individual with disabilities under section 504 of the Rehabilitation Act."
    sql: ${TABLE}.PLAN_504 ;;
  }

  dimension: poverty_code {
    type: string
    label: "Poverty Code"
    description: "NULL
0
1
2
3
F
N
"
    sql: ${TABLE}.POVERTY_CODE ;;
  }

  dimension: race2_code {
    type: string
    sql: ${TABLE}.RACE2_CODE ;;
  }

  dimension: race3_code {
    type: string
    sql: ${TABLE}.RACE3_CODE ;;
  }

  dimension: race4_code {
    type: string
    sql: ${TABLE}.RACE4_CODE ;;
  }

  dimension: race5_code {
    type: string
    sql: ${TABLE}.RACE5_CODE ;;
  }

  dimension: rptg_race_ethnicity_desc {
    type: string
    sql: ${TABLE}.RPTG_RACE_ETHNICITY_DESC ;;
  }

  dimension_group: school_year {
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
    sql: ${TABLE}.SCHOOL_YEAR ;;
  }

  dimension: special_ed_code {
    type: string
    sql: ${TABLE}.SPECIAL_ED_CODE ;;
  }

  dimension_group: stud_birthdate {
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
    sql: ${TABLE}.STUD_BIRTHDATE ;;
  }

  dimension: student_age {
    type: number
    sql: CONVERT(INT,DATEDIFF(day,${TABLE}.STUD_BIRTHDATE,GETDATE()))/365  ;;
  }

  dimension: stud_middle_nm {
    type: string
    hidden: yes
    sql: ${TABLE}.STUD_MIDDLE_NM ;;
  }

  dimension: student_first_nm {
    type: string
    hidden: yes
    sql: ${TABLE}.STUDENT_FIRST_NM ;;
  }

  dimension: student_gender {
    type: string
    sql: ${TABLE}.STUDENT_GENDER ;;
  }

  dimension: student_key {
    type: number
    hidden: yes
    sql: ${TABLE}.STUDENT_KEY ;;
  }

  dimension: student_last_nm {
    type: string
    hidden: yes
    sql: ${TABLE}.STUDENT_LAST_NM ;;
  }

  dimension: student_mid_init {
    type: string
    hidden: yes
    sql: ${TABLE}.STUDENT_MID_INIT ;;
  }

  dimension: student_name {
    type: string
    hidden: yes
    sql: ${TABLE}.STUDENT_NAME ;;
  }

  dimension: years_us_schools {
    type: number
    sql: ${TABLE}.YEARS_US_SCHOOLS ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      student_id,
      student_name,
      district_name,
      location_name,
      assessment_view.count,
      attendance.count,
      car_student.count,
      discipline.count,
      fact_tests.count,
      fc_matched.count,
      program_fact.count,
      school_enroll.count,
      special_ed_snap.count,
      stud_snapshot.count,
      student_courses.count
    ]
  }
}
