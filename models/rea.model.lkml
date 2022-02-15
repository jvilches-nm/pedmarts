connection: "dm_rea"

# include all the views
include: "/views/**/*.view"

datagroup: rea_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: rea_default_datagroup

explore: attendance {
  join: student_snapshot {
    relationship: many_to_one
    type: left_outer
    sql_on: ${attendance.student_id}=${student_snapshot.student_id}
         and ${attendance.snapshot_date} = ${student_snapshot.snapshot_date} and ${attendance.district_code} = ${student_snapshot.district_code}
        and ${attendance.school_year_date} = ${student_snapshot.school_year_end_date};;
  }
}

explore: discipline {
  join: student_snapshot {
    relationship: many_to_one
    type: left_outer
    sql_on: ${discipline.student_id} = ${student_snapshot.student_id}
      and ${discipline.school_year_date} = ${student_snapshot.school_year_end_date};;
  }
}

explore: foster_care {
  join: student_snapshot {
    relationship: many_to_one
    type: left_outer
    sql_on: ${foster_care.fc_student_id} = ${student_snapshot.student_id}
          and ${foster_care.school_year_date} = ${student_snapshot.school_year_end_date}
          ;;
    }
  }

explore: highschool_cohort_outcomes {}

explore: migrant_students {
  join: student_snapshot {
    relationship: many_to_one
    type: left_outer
    sql_on: ${migrant_students.ssid} = ${student_snapshot.student_id}
      and ${migrant_students.school_year_date} = ${student_snapshot.school_year_end_date};;
  }
}

explore: program_fact {
  join: student_snapshot {
    relationship: many_to_one
    type: left_outer
    sql_on: ${program_fact.student_id} = ${student_snapshot.student_id} and
        ${program_fact.school_year_date} = ${student_snapshot.school_year_end_date} and
        ${program_fact.student_snapshot_date} = ${student_snapshot.snapshot_date};;
  }
}

explore: school_enroll {
  join: student_snapshot {
    relationship: many_to_one
    type:  left_outer
    sql_on:  ${school_enroll.student_id} = ${student_snapshot.student_id}
      and ${school_enroll.school_year}=${student_snapshot.school_year_end_date};;
  }
}

explore: special_ed_snap {
  join: student_snapshot {
    relationship: many_to_one
    type: left_outer
    sql_on: ${special_ed_snap.student_id} = ${student_snapshot.student_id}
      and ${special_ed_snap.school_year_date} = ${student_snapshot.school_year_end_date} ;;
  }
}

explore: ssrs_dual_credit_student_with_grade {}

explore: ssrs_list_assessment_fact{}

explore: ssrs_perkins_student_listing {}

explore: student {}

explore: student_assessments {}

explore: student_snapshot {
  label: "Student Snapshot"
}

explore: teacher {}
