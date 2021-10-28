view: stud_snapshot {
  sql_table_name: dbo.STUD_SNAPSHOT ;;
  label: "Student Snapshot"

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

  dimension: student_birthdate_formatted {
    type: string
    label: "date_of_birth_yyyymmdd"
    description: "Student Date of Birth - Formatted."
    sql: ${TABLE}.DOB1 ;;
  }

  dimension: economic_code {
    type: string
    label: "Economic Code"
    description: "Valid values:
F
N
R  "
    sql: ${TABLE}.ECONOMIC_CODE ;;
  }

  dimension: eng_prof_code {
    type: string
    label: "English Proficiency Code"
    description: "See below code list"
    sql: ${TABLE}.ENG_PROF_CODE ;;
  }

  dimension: eng_proficiency {
    type: string
    label: "English Proficiency"
    description: "NT = Not tested (Only for PreK as they can’t be tested)
0 =  IFEP (Initially Fluent English Proficient Student was never EL)
1 = Current ELL/EL Student
2 = RFEP 1 (Reclassified Fluent English Proficient-exited Year 1)
3 = RFEP 2 (Reclassified Fluent English Proficient-exited Year 2)
4 = RFEP 3 (Reclassified Fluent English Proficient -exited Year 3)
5 = RFEP 4 (Reclassified Fluent English Proficient -exited Year 4)
6 = RFEP 5+ (Reclassified Fluent English Proficient -exited Year 5+)"
    sql: ${TABLE}.ENG_PROFICIENCY ;;
  }

  dimension: ethnic_desc {
    type: string
    label: "Ethnicity"
    description: "Ethnicity of student.
Valid Values:
  Caucasian
  Black  or African American
  Asian
  American Indian/Alaskan Native
  Native Hawaiian or Other Pacific Islander"
    sql: ${TABLE}.ETHNIC_DESC ;;
  }

  dimension: gifted_talented {
    type: string
    label: "Gifted Participation"
    description: "Y = Student is identified as a Gifted
N = Student is not identified as a Gifted."
    sql: ${TABLE}.GIFTED_TALENTED ;;
  }

  dimension: hispanic_ind {
    type: string
    label: "Hispanic"
    description: "Valid Values:
Y, N"
    sql: ${TABLE}.HISPANIC_IND ;;
  }

  dimension: home_lang_code {
    type: string
    label: "home_language_code"
    description: "Home Language Code"
    sql: ${TABLE}.HOME_LANG_CODE ;;
  }

  dimension: home_language {
    type: string
    label: "Home Language"
    description: "There are over 101 Home Language Codes"
    hidden: yes
    sql: ${TABLE}.HOME_LANGUAGE ;;
  }

  dimension: homeless {
    type: string
    label: "Homeless"
    description: "Valid Values:
Y - Student is homeless.
N - Student is not homeless."
    sql: ${TABLE}.HOMELESS ;;
  }

  dimension: immigrant_ind {
    type: string
    label: "Immigrant"
    description: "Valid values:
Yes = Immigrant
No = Non-Immigrant
"
    sql: ${TABLE}.IMMIGRANT_IND ;;
  }

  dimension: lep_eligibil_code {
    type: string
    label: "Lep Eligible"
    description: "Valid Values:
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

  dimension: migrant_code {
    type: string
    label: "migrant"
    description: "Y/N"
    hidden: yes
    sql: ${TABLE}.MIGRANT_CODE ;;
  }

  dimension: migrant_status {
    type: string
    label: "Migrant Status"
    description: "Yes/No"
    sql: ${TABLE}.MIGRANT_STATUS ;;
  }

  dimension: military_family_desc {
    type: string
    label: "Military Family"
    description: "Valid Values:
  Active,
  National Guard,
  Reserve
"
    sql: ${TABLE}.MILITARY_FAMILY_DESC ;;
  }

  dimension: org_type_code {
    type: string
    label: "Location Type"
    description: ""
    sql: ${TABLE}.ORG_TYPE_CODE ;;
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

  dimension: race_2 {
    type: string
    label: "Race 2"
    description: "Valid Values:
C = Caucasian
B = Black  or African American
A = Asian
I = American Indian/Alaskan Native
P = Native Hawaiian or Other Pacific Islander"
    sql: ${TABLE}.RACE2_CODE ;;
  }

  dimension: race_3 {
    type: string
    label: "Race 3"
    description: "Valid Values:
C = Caucasian
B = Black  or African American
A = Asian
I = American Indian/Alaskan Native
P = Native Hawaiian or Other Pacific Islander"
    sql: ${TABLE}.RACE3_CODE ;;
  }

  dimension: race_4 {
    type: string
    label: "Race 4"
    description: "Valid Values:
C = Caucasian
B = Black  or African American
A = Asian
I = American Indian/Alaskan Native
P = Native Hawaiian or Other Pacific Islander"
    sql: ${TABLE}.RACE4_CODE ;;
  }

  dimension: race_5 {
    type: string
    label: "Race 5"
    description: "Valid Values:
C = Caucasian
B = Black  or African American
A = Asian
I = American Indian/Alaskan Native
P = Native Hawaiian or Other Pacific Islander"
    sql: ${TABLE}.RACE5_CODE ;;
  }

  dimension: race_1 {
    type: string
    label: "Race 1"
    description: "Valid Values:
1 American Indian/Alaskan Native
2 Asian
3 Black or African American
4 Caucasian
5 Hispanic
6 Multiracial
7 Native Hawaiian or Other Pacific Islander
"
    sql: ${TABLE}.RPTG_RACE_ETHNICITY_DESC ;;
  }

  dimension: school_type_code {
    type: string
    label: "School Type Code"
    description: ""
    sql: ${TABLE}.SCHOOL_TYPE_CODE ;;
  }

  dimension: school_year_end_date {
    type: string
    description: "The school year is documented with the last day in the school year. "
    hidden: yes
    sql: ${TABLE}.SCHOOL_YEAR ;;
  }

  dimension_group: snapshot {
    type: time
    label: "Snapshot Date"
    description: "Valid values:
YYYY-10-01 = 40D
YYYY-12-15 = 80D
YYYY-03-01 = 120D
YYYY-06-01 = EOY
YYYY-09-01 = K5P (as of school year 2021-2022 no longer used, keep in model for historical data)
YYYY-06-29 = Summer Session
YYYY-07-15 = Open Year Round
"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.SNAPSHOT_DATE ;;
  }

  dimension: special_ed_code {
    type: string
    label: "Special Education"
    description: "Y = Students with Disabilities (Primary or Secondary),
N = Regular Education and Gifted-only Students"
    sql: ${TABLE}.SPECIAL_ED_CODE ;;
  }

  dimension_group: student_birthdate {
    type: time
    label: "Student Date of Birth"
    #description: ""
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.STUD_BIRTHDATE ;;
  }

  dimension: student_name_middle {
    type: string
    label: "Name - Middle"
    description: "Student Middle Name "
    hidden: yes
    sql: ${TABLE}.STUD_MIDDLE_NM ;;
  }

  dimension: student_name_first {
    type: string
    label: "Name - First"
    description: "Student first name, as documented in STARS database"
    sql: ${TABLE}.STUDENT_FIRST_NM ;;
  }

  dimension: student_gender {
    type: string
    label: "Birth Gender"
    description: "Gender of students at their birth - Male/Female"
    sql: ${TABLE}.STUDENT_GENDER ;;
  }

  dimension: student_id {
    primary_key: yes
    type: string
    label: "Student Id"
    description: "State issued student identification number. "
    # hidden: yes
    sql: ${TABLE}.STUDENT_ID ;;
  }

  dimension: student_key {
    type: number
    label: "Student Key - Stars"
    description: "STARS database auto generated key for individual students. The key is a unique identifier."
    hidden: yes
    sql: ${TABLE}.STUDENT_KEY ;;
  }

  dimension: student_name_last {
    type: string
    label: "Name - Last"
    description: "Student last name, as documented in STARS database"
    sql: ${TABLE}.STUDENT_LAST_NM ;;
  }

  dimension: student_name_mi {
    type: string
    label: "Name - Mi"
    description: "Student middle initial (MI), as documented in STARS database
Value entered cannot be more than one character."
    sql: ${TABLE}.STUDENT_MID_INIT ;;
  }

  dimension: student_name_full {
    type: string
    label: "Name - Last, First"
    hidden: yes
    sql: ${TABLE}.STUDENT_NAME ;;
  }

  dimension: years_us_schools {
    type: number
    label: "Years In US Schools"
    description: "Valid Values:
0 = 1st year a student attends US Schools (less than 12 months).
1 = 2nd consecutive year a student attends US Schools.
2 = 3rd consecutive year a student attends US Schools.
3 = 4th consecutive year a student attends US Schools.
4 = 5th consecutive year a student attends US Schools.
5 = A student is more than 5 consecutive years in US Schools.
"
    sql: ${TABLE}.YEARS_US_SCHOOLS ;;
  }

  dimension: school_year {
    type: string
    label: "School Year"
    sql: year(${school_year_end_date})-1 +'-'+year(${school_year_end_date}  ;;
  }

  dimension: snapshot_period {
    type: string
    sql: case when month(snapshot_date)='10' then '40D' when month(snapshot_date)='12' then '80D' when month(snapshot_date)='3' then '120D' else 'EOY' end  ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      student_name_full,
      district_name,
      location_name,
      current_grade_level
    ]
  }
}
