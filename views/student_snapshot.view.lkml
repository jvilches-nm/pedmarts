view: student_snapshot {
  sql_table_name: dbo.STUD_SNAPSHOT ;;
  label: "Student Snapshot"

  dimension: current_grade_level_code {
    type: string
    label: "Current Grade Level Code"
    order_by_field: current_grade_level_sort
    sql: ${TABLE}.CURR_GRADE_LVL ;;
  }

dimension: current_grade_level {
  type: string
  label: "Current Grade Level"
  order_by_field: current_grade_level_sort
  sql: case when ${current_grade_level_code}='PK' then 'Pre-Kindergarten'
              when ${current_grade_level_code}='KN' then 'Kindergarten, Half-Day'
              when ${current_grade_level_code}='KF' then 'Kindergarten, Full-Day'
              when ${current_grade_level_code}='01' then 'First Grade'
              when ${current_grade_level_code}='02' then 'Second Grade'
              when ${current_grade_level_code}='03' then 'Third Grade'
              when ${current_grade_level_code}='04' then 'Fourth Grade'
              when ${current_grade_level_code}='05' then 'Fifth Grade'
              when ${current_grade_level_code}='06' then 'Sixth Grade'
              when ${current_grade_level_code}='07' then 'Seventh Grade'
              when ${current_grade_level_code}='08' then 'Eighth Grade'
              when ${current_grade_level_code}='09' then 'Ninth Grade'
              when ${current_grade_level_code}='10' then 'Tenth Grade'
              when ${current_grade_level_code}='11' then 'Eleventh Grade'
              when ${current_grade_level_code}='12' then 'Twelfth Grade'
              when ${current_grade_level_code}='OS' then 'Out of School'
               end ;;
}

  dimension: current_grade_level_sort {
    type: number
    hidden: yes
    sql: case when ${current_grade_level_code}='PK' then 1
              when ${current_grade_level_code}='KN' then 2
              when ${current_grade_level_code}='KF' then 3
              when ${current_grade_level_code}='01' then 4
              when ${current_grade_level_code}='02' then 5
              when ${current_grade_level_code}='03' then 6
              when ${current_grade_level_code}='04' then 7
              when ${current_grade_level_code}='05' then 8
              when ${current_grade_level_code}='06' then 9
              when ${current_grade_level_code}='07' then 10
              when ${current_grade_level_code}='08' then 11
              when ${current_grade_level_code}='09' then 12
              when ${current_grade_level_code}='10' then 13
              when ${current_grade_level_code}='11' then 14
              when ${current_grade_level_code}='12' then 15
              when ${current_grade_level_code}='OS' then 16
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
    description: "Identifies if a student recieve Free or Reduced Lunch"
    sql: ${TABLE}.ECONOMIC_CODE ;;
  }

  dimension: english_prof_code {
    type: string
    label: "English Proficiency Code"
    order_by_field: english_prof_code_sort
    #hidden: yes
    sql: ${TABLE}.ENG_PROF_CODE ;;
  }

  dimension: english_prof_code_sort {
    type: number
    hidden: yes
    sql: case when ${english_prof_code}='NT' then 1
              when ${english_prof_code}='0' then 2
              when ${english_prof_code}='1' then 3
              when ${english_prof_code}='2' then 4
              when ${english_prof_code}='3' then 5
              when ${english_prof_code}='4' then 6
              when ${english_prof_code}='5' then 7
              when ${english_prof_code}='6' then 8
              end ;;
  }

  dimension: eng_proficiency {
    type: string
    label: "English Proficiency"
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
    description: "Limited English Proficiency"
    hidden: yes
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
    sql:  CASE WHEN ${TABLE}.RACE1_CODE='C' then 'Caucasian'
                   WHEN ${TABLE}.RACE1_CODE='B' then 'Black or African American'
                   WHEN ${TABLE}.RACE1_CODE='A' then 'Asian'
                   WHEN ${TABLE}.RACE1_CODE='I' then 'American Indian/Alaskan Native'
                   WHEN ${TABLE}.RACE1_CODE='P' then 'Native Hawaiian or Other Pacific Islander'
                   ELSE '' END ;;
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
    sql: CASE WHEN ${TABLE}.RPTG_RACE_ETHNICITY_DESC = 'Native Hawaiiam or Other Pacific Islander' then 'Native Hawaiian or Other Pacific Islander'
    ELSE ${TABLE}.RPTG_RACE_ETHNICITY_DESC END ;;
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
    hidden: yes
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
    description: "Y/N  = Students with Disabilities (Primary or Secondary) or Regular Education and Gifted-only Students"
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
    description: "Student age at the time of the snapshot."
    sql: CONVERT(INT,DATEDIFF(day,${TABLE}.STUD_BIRTHDATE,${TABLE}.snapshot_date))/365  ;;
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
    hidden: yes
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
    description: "Provides an indication on whether or not the student has been enrolled in U.S. schools for 12 months. The months do NOT have to be consecutive.  Any school (public, private, BIE, or home) qualifies. PreK does not count toward the time."
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
