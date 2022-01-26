connection: "dm_rea"

# include all the views
include: "/views/**/*.view"

datagroup: rea_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: rea_default_datagroup

explore: hsco_tbl {

}

explore: assessment_view {
}

explore: attendance {
  join: stud_snapshot {
    relationship: many_to_one
    type: left_outer
    sql_on: ${attendance.student_id}=${stud_snapshot.student_id}
   and ${attendance.snapshot_date} = ${stud_snapshot.snapshot_date} and ${attendance.district_code} = ${stud_snapshot.district_code}
  and ${attendance.school_year_date} = ${stud_snapshot.school_year_end_date};;
  }
}

explore: car_student {
}

explore: discipline {
  join: stud_snapshot {
    relationship: many_to_one
    type: left_outer
    sql_on: ${discipline.student_id} = ${stud_snapshot.student_id}
    and ${discipline.school_year_date} = ${stud_snapshot.school_year_end_date};;
  }
}

explore: fact_tests {
}

explore: fc_matched {
  join: stud_snapshot {
    relationship: many_to_one
    type: left_outer
    sql_on: ${fc_matched.fc_student_id} = ${stud_snapshot.student_id}
    and ${fc_matched.school_year_date} = ${stud_snapshot.school_year_end_date}
    ;;

  }
}

explore: migrant {
  join: stud_snapshot {
    relationship: many_to_one
    type: left_outer
    sql_on: ${migrant.ssid} = ${stud_snapshot.student_id}
    and ${migrant.school_year_date} = ${stud_snapshot.school_year_end_date};;
  }
}

explore: program_fact {
  join: stud_snapshot {
    relationship: many_to_one
    type: left_outer
sql_on: ${program_fact.student_id} = ${stud_snapshot.student_id} and
        ${program_fact.school_year_date} = ${stud_snapshot.school_year_end_date} and
        ${program_fact.student_snapshot_date} = ${stud_snapshot.snapshot_date};;
  }
}

explore: school_enroll {
  join: stud_snapshot {
    relationship: many_to_one
    type:  left_outer
    sql_on:  ${school_enroll.student_id} = ${stud_snapshot.student_id}
    and ${school_enroll.school_year}=${stud_snapshot.school_year_end_date};;
  }
}

explore: special_ed_snap {
  join: stud_snapshot {
    relationship: many_to_one
    type: left_outer
    sql_on: ${special_ed_snap.student_id} = ${stud_snapshot.student_id}
    and ${special_ed_snap.school_year_date} = ${stud_snapshot.school_year_end_date} ;;
  }
}

explore: stud_snapshot {
  label: "Student Snapshot"

}

explore: student {}

explore: student_courses {
}

explore: teacher {}
