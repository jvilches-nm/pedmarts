view: student_snapshot {
  sql_table_name: dbo.STUD_SNAPSHOT ;;
  label: "Student Snapshot"

  dimension: current_grade_level {
    type: string
    label: "Current Grade Level Code"
    order_by_field: current_grade_level_sort
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

  dimension: current_grade_level_sort {
    type: number
    hidden: yes
    sql: case when ${current_grade_level}='PK' then 1
              when ${current_grade_level}='KN' then 2
              when ${current_grade_level}='KF' then 3
              when ${current_grade_level}='01' then 4
              when ${current_grade_level}='02' then 5
              when ${current_grade_level}='03' then 6
              when ${current_grade_level}='04' then 7
              when ${current_grade_level}='05' then 8
              when ${current_grade_level}='06' then 9
              when ${current_grade_level}='07' then 10
              when ${current_grade_level}='08' then 11
              when ${current_grade_level}='09' then 12
              when ${current_grade_level}='10' then 13
              when ${current_grade_level}='11' then 14
              when ${current_grade_level}='12' then 15
              when ${current_grade_level}='OS' then 16
              else 17 end ;;
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
    label: "Student Date of Birth - Formatted"
    description: "Student Date of Birth - Formatted in yyyymmdd format"
    hidden: yes
    sql: ${TABLE}.DOB1 ;;
  }

  dimension: economic_code {
    type: string
    label: "Economic Code"
    description: ""
    sql: ${TABLE}.ECONOMIC_CODE ;;
  }

  dimension: eng_prof_code {
    type: string
    label: "English Proficiency Code"
    description: "NT = Not tested (Only for PreK as they can’t be tested)
0 =  IFEP (Initially Fluent English Proficient Student was never EL)
1 = Current ELL/EL Student
2 = RFEP 1 (Reclassified Fluent English Proficient-exited Year 1)
3 = RFEP 2 (Reclassified Fluent English Proficient-exited Year 2)
4 = RFEP 3 (Reclassified Fluent English Proficient -exited Year 3)
5 = RFEP 4 (Reclassified Fluent English Proficient -exited Year 4)
6 = RFEP 5+ (Reclassified Fluent English Proficient -exited Year 5+)"
    #hidden: yes
    sql: ${TABLE}.ENG_PROF_CODE ;;
  }

  dimension: eng_proficiency {
    type: string
    label: "English Proficiency"
    description: ""
    sql: ${TABLE}.ENG_PROFICIENCY ;;
  }

  dimension: ethnic_desc {
    type: string
    label: "Ethnicity"
    description: "Ethnicity of student. For example, Caucasian, Black or African American, Asian, American Indian/Alaskan Native, or Native Hawaiian or Other Pacific Islander"
    sql: ${TABLE}.ETHNIC_DESC ;;
  }

  dimension: gifted_talented {
    type: string
    label: "Gifted Participation"
    description: "Y/N - Student is or is not identified as gifted"
    sql: ${TABLE}.GIFTED_TALENTED ;;
  }

  dimension: hispanic_ind {
    type: string
    label: "Hispanic"
    description: "Y/N - Student is Hispanic"
    sql: ${TABLE}.HISPANIC_IND ;;
  }

  dimension: home_lang_code {
    type: string
    label: "home_language_code"
    description: "Home Language Code"
    hidden: yes
    sql: ${TABLE}.HOME_LANG_CODE ;;
  }

  dimension: home_language {
    type: string
    label: "Home Language"
    description: "The language spoken in the student's home"
    hidden: yes
    sql: ${TABLE}.HOME_LANGUAGE ;;
  }

  dimension: homeless {
    type: string
    label: "Homeless"
    description: "Y/N - Student is or is not homeless"
    sql: ${TABLE}.HOMELESS ;;
  }

  dimension: immigrant_ind {
    type: string
    label: "Immigrant"
    description: "Yes/No: Student is or is not an immigrant"
    sql:case when ${TABLE}.IMMIGRANT_IND='Y' then 'Yes'
             else ${TABLE}.IMMIGRANT_IND END;;
  }

  dimension: lep_eligibil_code {
    type: string
    label: "LEP Eligible"
    description: ""
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
    description: "School or Location Name"
    sql: ${TABLE}.LOCATION_NAME ;;
  }

  dimension: migrant_code {
    type: string
    label: "Migrant"
    description: ""
    hidden: yes
    sql: ${TABLE}.MIGRANT_CODE ;;
  }

  dimension: migrant_status {
    type: string
    label: "Migrant Status"
    description: "Yes/No - Student is a migrant"
    sql: ${TABLE}.MIGRANT_STATUS ;;
  }

  dimension: military_family_desc {
    type: string
    label: "Military Family"
    description: "Indicates the type of military family the student belongs to if applicable: Active, National Guard, Reserve"
    sql: ${TABLE}.MILITARY_FAMILY_DESC ;;
  }

  dimension: org_type_code {
    type: string
    label: "Location Type"
    description: "The type of location - Public, Private, Charter, Off-Site, etc"
    sql: ${TABLE}.ORG_TYPE_CODE ;;
  }

  dimension: plan_504 {
    type: string
    label: "Plan 504"
    description: "Y/N - Student does or does not qualify as an individual with disabilities under section 504 of the Rehabilitation Act"
    sql: ${TABLE}.PLAN_504 ;;
  }

  dimension: poverty_code {
    type: string
    label: "Poverty Code"
    description: ""
    sql: ${TABLE}.POVERTY_CODE ;;
  }

  dimension: race_1 {
    type: string
    label: "Race 1"
    description: "Primary chosen race of the student"
    sql: sql: CASE WHEN ${TABLE}.RACE1_CODE='C' then 'Caucasian'
                   WHEN ${TABLE}.RACE1_CODE='B' then 'Black or African American'
                   WHEN ${TABLE}.RACE1_CODE='A' then 'Asian'
                   WHEN ${TABLE}.RACE1_CODE='I' then 'American Indian/Alaskan Native'
                   WHEN ${TABLE}.RACE1_CODE='P' then 'Native Hawaiian or Other Pacific Islander'
                   ELSE '' ;;
  }

  dimension: race_2 {
    type: string
    label: "Race 2"
    description: "Secondary chosen race of the student"
    sql: CASE WHEN ${TABLE}.RACE2_CODE='C' then 'Caucasian'
              WHEN ${TABLE}.RACE2_CODE='B' then 'Black or African American'
              WHEN ${TABLE}.RACE2_CODE='A' then 'Asian'
              WHEN ${TABLE}.RACE2_CODE='I' then 'American Indian/Alaskan Native'
              WHEN ${TABLE}.RACE2_CODE='P' then 'Native Hawaiian or Other Pacific Islander'
              ELSE '' END ;;
  }

  dimension: race_3 {
    type: string
    label: "Race 3"
    description: "Third chosen race of the student"
    sql: CASE WHEN ${TABLE}.RACE3_CODE='C' then 'Caucasian'
              WHEN ${TABLE}.RACE3_CODE='B' then 'Black or African American'
              WHEN ${TABLE}.RACE3_CODE='A' then 'Asian'
              WHEN ${TABLE}.RACE3_CODE='I' then 'American Indian/Alaskan Native'
              WHEN ${TABLE}.RACE3_CODE='P' then 'Native Hawaiian or Other Pacific Islander'
              ELSE '' END ;;
  }

  dimension: race_4 {
    type: string
    label: "Race 4"
    description: "Fourth chosen race of the student"
    sql: CASE WHEN ${TABLE}.RACE4_CODE='C' then 'Caucasian'
              WHEN ${TABLE}.RACE4_CODE='B' then 'Black or African American'
              WHEN ${TABLE}.RACE4_CODE='A' then 'Asian'
              WHEN ${TABLE}.RACE4_CODE='I' then 'American Indian/Alaskan Native'
              WHEN ${TABLE}.RACE4_CODE='P' then 'Native Hawaiian or Other Pacific Islander'
              ELSE '' END ;;
  }

  dimension: race_5 {
    type: string
    label: "Race 5"
    description: "Fifth chosen race of the student"
    sql: CASE WHEN ${TABLE}.RACE5_CODE='C' then 'Caucasian'
              WHEN ${TABLE}.RACE5_CODE='B' then 'Black or African American'
              WHEN ${TABLE}.RACE5_CODE='A' then 'Asian'
              WHEN ${TABLE}.RACE5_CODE='I' then 'American Indian/Alaskan Native'
              WHEN ${TABLE}.RACE5_CODE='P' then 'Native Hawaiian or Other Pacific Islander'
              ELSE '' END ;;
  }

  dimension: RPTG_RACE_ETHNICITY_DESC {
    type: string
    label: "Derived Ethnicity"
    description: "Derived Ethnicity"
    sql: ${TABLE}.RPTG_RACE_ETHNICITY_DESC ;;
  }

  dimension: school_type_code {
    type: string
    label: "School Type Code"
    description: "Type of school or location, for example: HS (High School), PREK (Pre Kindergarten), MS (Middle School), JH (Junior High), ES (Elementary School), CO (Central Office), etc"
    sql: ${TABLE}.SCHOOL_TYPE_CODE ;;
  }

  dimension: school_year_end_date {
    type: date
    description: "The last day in the school year"
    #hidden: yes
    sql: ${TABLE}.SCHOOL_YEAR ;;
  }

  dimension: school_year {
    type: string
    label: "School Year"
    description: "The two years that the school year spans"
    sql: cast(YEAR(${TABLE}.SCHOOL_YEAR)-1 as varchar) +'-'+ cast(YEAR(${TABLE}.SCHOOL_YEAR) as varchar) ;;
  }

  dimension_group: snapshot {
    type: time
    label: "Snapshot"
    description: "The date the snapshot was taken"
    timeframes: [
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.SNAPSHOT_DATE ;;
  }

  dimension: snapshot_period {
    type: string
    label: "Snapshot Period"
    order_by_field: snapshot_period_order
    description: "Defines the count for which the snapshot was taken, for example 40 Day, 80 Day, 120 Day, End of Year"
    sql:  case when month(${TABLE}.SNAPSHOT_DATE)=10 then '40 Day'
               when month(${TABLE}.SNAPSHOT_DATE)=12 then '80 Day'
               when month(${TABLE}.SNAPSHOT_DATE)=3 then '120 Day'
               else 'End of Year' end;;
  }

  dimension: snapshot_period_order {
    type: number
    hidden: yes
    sql: case when month(${TABLE}.SNAPSHOT_DATE)=10 then 1
               when month(${TABLE}.SNAPSHOT_DATE)=12 then 2
               when month(${TABLE}.SNAPSHOT_DATE)=3 then 3
               else 4 end;;
  }

  dimension: special_ed_code {
    type: string
    label: "Special Education"
    description: "Y/N = Student is or is not a student with disabilities (Primary or Secondary)"
    sql: ${TABLE}.SPECIAL_ED_CODE ;;
  }

  dimension_group: student_birthdate {
    type: time
    label: "Student Birth"
    timeframes: [
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
    hidden: yes
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
    label: "Student ID"
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
    hidden: yes
    sql: ${TABLE}.STUDENT_LAST_NM ;;
  }

  dimension: student_name_mi {
    type: string
    label: "Name - MI"
    description: "Student middle initial (MI), as documented in STARS database. Value entered cannot be more than one character."
    hidden: yes
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
    description: "0 = 1st year a student attending US Schools (less than 12 months).
1 = 2nd consecutive year attending US Schools.
2 = 3rd consecutive year attending US Schools.
3 = 4th consecutive year attending US Schools.
4 = 5th consecutive year attending US Schools.
5 = A student has more than 5 consecutive years in US Schools.
"
    sql: ${TABLE}.YEARS_US_SCHOOLS ;;
  }

  measure: count {
    type: count
    drill_fields: [student_id]
  }

  measure: count_student {
    type: count
    drill_fields: [student_id]
  }

measure: total_indian_student {
  type: count
  filters: [race_1: "American Indian/Alaskan Native"]

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
