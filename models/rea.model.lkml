connection: "dm_rea"

# include all the views
include: "/views/**/*.view"

datagroup: rea_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: rea_default_datagroup


explore: assessment_view {
}

explore: attendance {
  join: stud_snapshot {
    relationship: many_to_one
    type: left_outer
    sql_on: ${attendance.student_id}=${stud_snapshot.student_id}
            and ${attendance.school_year_date} = ${stud_snapshot.school_year_end_date};;
  }
}

explore: car_student {
}

explore: discipline {
}

explore: fact_tests {
}

explore: fc_matched {
}

explore: migrant {}

explore: program_fact {
}

explore: school_enroll {
  join: stud_snapshot {
    relationship: many_to_one
    type:  left_outer
    sql_on:  ${school_enroll.student_id} = ${stud_snapshot.student_id}  and ${school_enroll.school_year}=${stud_snapshot.school_year_end_date};;
  }
}

explore: special_ed_snap {
}

explore: stud_snapshot {
  label: "Student Snapshot"

}

explore: student {}

explore: student_courses {
}

explore: teacher {}
