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
